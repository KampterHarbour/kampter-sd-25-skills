[CmdletBinding()]
param(
    [ValidateSet("English", "Chinese", "Both")]
    [string]$Language,
    [string]$SkillsDirectory
)

$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($SkillsDirectory)) {
    if ([string]::IsNullOrWhiteSpace($env:CODEX_HOME)) {
        $SkillsDirectory = Join-Path $env:USERPROFILE ".codex\skills"
    }
    else {
        $SkillsDirectory = Join-Path $env:CODEX_HOME "skills"
    }
}

if ([string]::IsNullOrWhiteSpace($Language)) {
    $Language = Read-Host "Install English, Chinese, or Both"
}

$editionMap = @{
    English = "kampter-sd-25-skills"
    Chinese = "kampter-sd-25-skills-zh"
}

switch ($Language) {
    "English" { $editions = @("English") }
    "Chinese" { $editions = @("Chinese") }
    "Both" { $editions = @("English", "Chinese") }
    default { throw "Choose English, Chinese, or Both." }
}

$packageRoot = $PSScriptRoot
$sourceRoot = Join-Path $packageRoot "skills"
$resolvedSkillsDirectory = [System.IO.Path]::GetFullPath($SkillsDirectory)
New-Item -ItemType Directory -Force -Path $resolvedSkillsDirectory | Out-Null

foreach ($edition in $editions) {
    $folderName = $editionMap[$edition]
    $source = Join-Path $sourceRoot $folderName
    $target = Join-Path $resolvedSkillsDirectory $folderName

    if (-not (Test-Path -LiteralPath $source -PathType Container)) {
        throw "Package source is missing: $source"
    }

    if (Test-Path -LiteralPath $target) {
        $answer = Read-Host "$folderName already exists. Create a recoverable backup and replace it? (Y/N)"
        if ($answer -notin @("Y", "y")) {
            Write-Host "Skipped $folderName."
            continue
        }

        $timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
        $backup = "$target.backup-$timestamp"
        if (Test-Path -LiteralPath $backup) {
            throw "Backup path already exists: $backup"
        }

        Move-Item -LiteralPath $target -Destination $backup
        Write-Host "Backed up existing Skill to $backup"
    }

    Copy-Item -LiteralPath $source -Destination $target -Recurse
    Write-Host "Installed $folderName to $target"
}

Write-Host "Restart or reload your agent host before invoking the Skill."
