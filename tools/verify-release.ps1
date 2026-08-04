[CmdletBinding()]
param(
    [string]$Root,
    [switch]$RequirePackage
)

$ErrorActionPreference = "Stop"
if ([string]::IsNullOrWhiteSpace($Root)) {
    $Root = Split-Path -Parent $PSScriptRoot
}
$Root = [System.IO.Path]::GetFullPath($Root)
$errors = [System.Collections.Generic.List[string]]::new()

function Add-CheckError {
    param([string]$Message)
    $script:errors.Add($Message)
}

function Require-File {
    param([string]$RelativePath)
    if (-not (Test-Path -LiteralPath (Join-Path $Root $RelativePath) -PathType Leaf)) {
        Add-CheckError "Missing file: $RelativePath"
    }
}

function Require-Directory {
    param([string]$RelativePath)
    if (-not (Test-Path -LiteralPath (Join-Path $Root $RelativePath) -PathType Container)) {
        Add-CheckError "Missing directory: $RelativePath"
    }
}

$versionPath = Join-Path $Root "VERSION"
if (-not (Test-Path -LiteralPath $versionPath -PathType Leaf)) {
    Add-CheckError "Missing VERSION."
    $version = ""
}
else {
    $version = (Get-Content -LiteralPath $versionPath -Raw).Trim()
    if ($version -notmatch '^\d+\.\d+\.\d+$') {
        Add-CheckError "VERSION must use semantic version format: $version"
    }
}

$pairedPublicDocs = @(
    @("README.en.md", "README.zh-CN.md"),
    @("CHANGELOG.en.md", "CHANGELOG.zh-CN.md"),
    @("NOTICE.en.md", "NOTICE.zh-CN.md"),
    @("LICENSE.en.md", "LICENSE.zh-CN.md"),
    @("INSTALL.en.md", "INSTALL.zh-CN.md")
)

foreach ($pair in $pairedPublicDocs) {
    Require-File $pair[0]
    Require-File $pair[1]
}

Require-File "SKILL.md"
Require-File "zh-CN\SKILL.md"
Require-Directory "agents"
Require-Directory "zh-CN\agents"

$referenceNames = @(
    "00-core-constraints.md",
    "10-intake-and-routing.md",
    "20-generation.md",
    "21-editing.md",
    "22-extension.md",
    "23-white-model.md",
    "24-prompt-diagnosis.md",
    "30-final-review.md",
    "90-source-notes.md"
)

foreach ($reference in $referenceNames) {
    Require-File (Join-Path "references" $reference)
    Require-File (Join-Path "zh-CN\references" $reference)
}

$expectedContent = @{
    "SKILL.md" = "name: kampter-sd-25-skills"
    "zh-CN\SKILL.md" = "name: kampter-sd-25-skills-zh"
    "agents\openai.yaml" = '$kampter-sd-25-skills'
    "zh-CN\agents\openai.yaml" = '$kampter-sd-25-skills-zh'
    "README.md" = "v$version"
    "CHANGELOG.en.md" = "## v$version"
    "CHANGELOG.zh-CN.md" = "## v$version"
    "PACKAGE-MANIFEST.json" = "`"version`": `"$version`""
}

foreach ($item in $expectedContent.GetEnumerator()) {
    $path = Join-Path $Root $item.Key
    if (Test-Path -LiteralPath $path -PathType Leaf) {
        $content = Get-Content -LiteralPath $path -Raw -Encoding utf8
        if ($content -notlike "*$($item.Value)*") {
            Add-CheckError "Expected text is missing from $($item.Key): $($item.Value)"
        }
    }
}

foreach ($skillPath in @("SKILL.md", "zh-CN\SKILL.md")) {
    $path = Join-Path $Root $skillPath
    if (Test-Path -LiteralPath $path -PathType Leaf) {
        $content = Get-Content -LiteralPath $path -Raw -Encoding utf8
        if ($content -notmatch '(?s)^---\r?\nname: [a-z0-9-]+\r?\ndescription: ".+"\r?\n---') {
            Add-CheckError "Invalid Skill frontmatter in $skillPath."
        }
    }
}

$manifestPath = Join-Path $Root "PACKAGE-MANIFEST.json"
$manifest = $null
if (Test-Path -LiteralPath $manifestPath -PathType Leaf) {
    try {
        $manifest = Get-Content -LiteralPath $manifestPath -Raw | ConvertFrom-Json
        if ($manifest.version -ne $version) {
            Add-CheckError "Manifest version does not match VERSION."
        }
        if ($manifest.skills.Count -ne 2) {
            Add-CheckError "Manifest must declare exactly two standalone editions."
        }
    }
    catch {
        Add-CheckError "PACKAGE-MANIFEST.json is not valid JSON."
    }
}

$archive = if (Test-Path -LiteralPath $manifestPath -PathType Leaf) {
    Join-Path $Root (Join-Path "dist" $manifest.package)
}
else {
    $null
}

if ($RequirePackage -and ($null -eq $archive -or -not (Test-Path -LiteralPath $archive -PathType Leaf))) {
    Add-CheckError "Missing release package: $archive"
}

if ($null -ne $archive -and (Test-Path -LiteralPath $archive -PathType Leaf)) {
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    $zip = [System.IO.Compression.ZipFile]::OpenRead($archive)
    try {
        $releaseFolder = "kampter-sd-25-skills-v$version"
        $expectedEntries = @(
            "$releaseFolder/install.ps1",
            "$releaseFolder/INSTALL.en.md",
            "$releaseFolder/INSTALL.zh-CN.md",
            "$releaseFolder/skills/kampter-sd-25-skills/SKILL.md",
            "$releaseFolder/skills/kampter-sd-25-skills/agents/openai.yaml",
            "$releaseFolder/skills/kampter-sd-25-skills-zh/SKILL.md",
            "$releaseFolder/skills/kampter-sd-25-skills-zh/agents/openai.yaml"
        )
        $entryNames = @($zip.Entries | ForEach-Object { $_.FullName.Replace('\', '/') })
        foreach ($entry in $expectedEntries) {
            if ($entryNames -notcontains $entry) {
                Add-CheckError "Package is missing: $entry"
            }
        }
    }
    finally {
        $zip.Dispose()
    }
}

if ($errors.Count -gt 0) {
    $errors | ForEach-Object { Write-Error $_ }
    exit 1
}

Write-Output "Release validation passed for v$version."
