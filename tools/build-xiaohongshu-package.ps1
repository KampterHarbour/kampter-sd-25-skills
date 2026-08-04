[CmdletBinding()]
param(
    [string]$Root
)

$ErrorActionPreference = "Stop"
if ([string]::IsNullOrWhiteSpace($Root)) {
    $Root = Split-Path -Parent $PSScriptRoot
}
$Root = [System.IO.Path]::GetFullPath($Root)
$version = (Get-Content -LiteralPath (Join-Path $Root "VERSION") -Raw).Trim()
$manifest = Get-Content -LiteralPath (Join-Path $Root "PACKAGE-MANIFEST.json") -Raw | ConvertFrom-Json

if ($manifest.version -ne $version) {
    throw "PACKAGE-MANIFEST.json version ($($manifest.version)) does not match VERSION ($version)."
}

$dist = Join-Path $Root "dist"
$releaseFolder = "kampter-sd-25-skills-v$version"
$stage = Join-Path $dist $releaseFolder
$archive = Join-Path $dist $manifest.package

if (Test-Path -LiteralPath $stage) {
    Remove-Item -LiteralPath $stage -Recurse -Force
}

New-Item -ItemType Directory -Force -Path $stage | Out-Null
$skillRoot = Join-Path $stage "skills"
New-Item -ItemType Directory -Force -Path $skillRoot | Out-Null

$englishTarget = Join-Path $skillRoot "kampter-sd-25-skills"
$chineseTarget = Join-Path $skillRoot "kampter-sd-25-skills-zh"
New-Item -ItemType Directory -Force -Path $englishTarget, $chineseTarget | Out-Null

Copy-Item -LiteralPath (Join-Path $Root "SKILL.md"), (Join-Path $Root "agents"), (Join-Path $Root "references") -Destination $englishTarget -Recurse
Copy-Item -LiteralPath (Join-Path $Root "zh-CN\SKILL.md"), (Join-Path $Root "zh-CN\agents"), (Join-Path $Root "zh-CN\references") -Destination $chineseTarget -Recurse

$publicFiles = @(
    "README.md",
    "README.en.md",
    "README.zh-CN.md",
    "INSTALL.md",
    "INSTALL.en.md",
    "INSTALL.zh-CN.md",
    "CHANGELOG.md",
    "CHANGELOG.en.md",
    "CHANGELOG.zh-CN.md",
    "NOTICE",
    "NOTICE.en.md",
    "NOTICE.zh-CN.md",
    "LICENSE",
    "LICENSE.en.md",
    "LICENSE.zh-CN.md",
    "VERSION",
    "PACKAGE-MANIFEST.json",
    "install.ps1"
)

foreach ($file in $publicFiles) {
    Copy-Item -LiteralPath (Join-Path $Root $file) -Destination $stage
}

Compress-Archive -LiteralPath $stage -DestinationPath $archive -Force
Write-Output $archive
