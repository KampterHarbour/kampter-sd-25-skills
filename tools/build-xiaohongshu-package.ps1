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
if ($manifest.skills.Count -ne 1 -or $manifest.skills[0].name -ne "kampter-sd-25-skills-zh" -or $manifest.skills[0].language -ne "zh-CN") {
    throw "The Xiaohongshu package must contain only the Simplified Chinese Skill."
}

$dist = Join-Path $Root "dist"
$releaseFolder = [string]$manifest.archiveRoot
if ([string]::IsNullOrWhiteSpace($releaseFolder) -or $releaseFolder -match '[\\/]') {
    throw "PACKAGE-MANIFEST.json archiveRoot must be a single directory name."
}
$stage = Join-Path $dist $releaseFolder
$archive = Join-Path $dist $manifest.package

if (Test-Path -LiteralPath $stage) {
    Remove-Item -LiteralPath $stage -Recurse -Force
}

New-Item -ItemType Directory -Force -Path $stage | Out-Null
$chineseTarget = Join-Path $stage $manifest.skills[0].folder
New-Item -ItemType Directory -Force -Path $chineseTarget | Out-Null
Copy-Item -LiteralPath (Join-Path $Root "zh-CN\SKILL.md"), (Join-Path $Root "zh-CN\agents"), (Join-Path $Root "zh-CN\references") -Destination $chineseTarget -Recurse

$packageFiles = [ordered]@{
    "PACKAGE-README.zh-CN.md" = "README.md"
    "INSTALL.zh-CN.md" = "INSTALL.md"
    "NOTICE.zh-CN.md" = "NOTICE.md"
    "LICENSE" = "LICENSE"
    "LICENSE.zh-CN.md" = "LICENSE.zh-CN.md"
    "VERSION" = "VERSION"
    "PACKAGE-MANIFEST.json" = "PACKAGE-MANIFEST.json"
    "tools\install-xiaohongshu-zh.ps1" = "install.ps1"
}

foreach ($source in $packageFiles.Keys) {
    Copy-Item -LiteralPath (Join-Path $Root $source) -Destination (Join-Path $stage $packageFiles[$source])
}

Compress-Archive -LiteralPath $stage -DestinationPath $archive -Force
Write-Output $archive
