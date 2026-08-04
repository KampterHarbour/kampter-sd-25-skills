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
Require-File "PACKAGE-README.zh-CN.md"
Require-File "tools\install-xiaohongshu-zh.ps1"

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
    "PACKAGE-README.zh-CN.md" = "kampter-sd-25-skills-zh"
    "INSTALL.en.md" = "Simplified Chinese edition only"
    "INSTALL.zh-CN.md" = "kampter-sd-25-skills-zh"
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
        if ($manifest.name -ne "kampter-sd-25-skills-zh") {
            Add-CheckError "Manifest name must identify the packaged Chinese Skill."
        }
        if ($manifest.package -ne "kampter-sd-25-skills-zh-v$version-xiaohongshu.zip") {
            Add-CheckError "Manifest package name must identify the Chinese-only Xiaohongshu bundle."
        }
        if ($manifest.archiveRoot -ne "kampter-sd-25-skills-zh-v$version") {
            Add-CheckError "Manifest archiveRoot must identify the Chinese-only bundle root."
        }
        if ($manifest.skills.Count -ne 1) {
            Add-CheckError "Manifest must declare exactly one packaged Skill."
        }
        elseif ($manifest.skills[0].folder -ne "kampter-sd-25-skills-zh" -or $manifest.skills[0].name -ne "kampter-sd-25-skills-zh" -or $manifest.skills[0].language -ne "zh-CN") {
            Add-CheckError "Manifest must declare the standalone Simplified Chinese Skill."
        }
        if ($manifest.distribution.channel -ne "xiaohongshu" -or $manifest.distribution.language -ne "zh-CN") {
            Add-CheckError "Manifest distribution metadata must identify the Chinese Xiaohongshu bundle."
        }
    }
    catch {
        Add-CheckError "PACKAGE-MANIFEST.json is not valid JSON."
    }
}

$archive = if ($null -ne $manifest) {
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
        $releaseFolder = [string]$manifest.archiveRoot
        $expectedEntries = @(
            "$releaseFolder/README.md",
            "$releaseFolder/install.ps1",
            "$releaseFolder/INSTALL.md",
            "$releaseFolder/NOTICE.md",
            "$releaseFolder/LICENSE",
            "$releaseFolder/LICENSE.zh-CN.md",
            "$releaseFolder/VERSION",
            "$releaseFolder/PACKAGE-MANIFEST.json",
            "$releaseFolder/kampter-sd-25-skills-zh/SKILL.md",
            "$releaseFolder/kampter-sd-25-skills-zh/agents/openai.yaml"
        )
        $entryNames = @($zip.Entries | ForEach-Object { $_.FullName.Replace('\', '/') })
        foreach ($entry in $expectedEntries) {
            if ($entryNames -notcontains $entry) {
                Add-CheckError "Package is missing: $entry"
            }
        }

        $forbiddenEntries = @($entryNames | Where-Object {
            $_ -like "$releaseFolder/kampter-sd-25-skills/*" -or
            $_ -like "$releaseFolder/skills/*" -or
            $_ -like "$releaseFolder/*en.md"
        })
        foreach ($entry in $forbiddenEntries) {
            Add-CheckError "Chinese-only package contains an unexpected entry: $entry"
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
