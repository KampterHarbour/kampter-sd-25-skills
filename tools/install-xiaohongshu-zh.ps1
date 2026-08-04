[CmdletBinding()]
param(
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

$skillName = "kampter-sd-25-skills-zh"
$source = Join-Path $PSScriptRoot $skillName
if (-not (Test-Path -LiteralPath $source -PathType Container)) {
    throw "The package is missing the Simplified Chinese Skill: $source"
}

$resolvedSkillsDirectory = [System.IO.Path]::GetFullPath($SkillsDirectory)
$target = Join-Path $resolvedSkillsDirectory $skillName
New-Item -ItemType Directory -Force -Path $resolvedSkillsDirectory | Out-Null

if (Test-Path -LiteralPath $target) {
    $answer = Read-Host "$skillName already exists. Create a recoverable backup and replace it? (Y/N)"
    if ($answer -notin @("Y", "y")) {
        Write-Host "Skipped $skillName."
        return
    }

    $timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
    $backup = "$target.backup-$timestamp"
    if (Test-Path -LiteralPath $backup) {
        throw "Backup path already exists: $backup"
    }

    Move-Item -LiteralPath $target -Destination $backup
    Write-Host "Backed up the existing Skill to $backup"
}

Copy-Item -LiteralPath $source -Destination $target -Recurse
Write-Host "Installed $skillName to $target"
Write-Host "Restart or reload the agent host before invoking the Skill."
