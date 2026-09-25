# Script di installazione automatica di C.I.P.O. per Google Antigravity
$ErrorActionPreference = "Stop"

Write-Host "Installazione di C.I.P.O. in corso..." -ForegroundColor Cyan

$destSkills = "$env:USERPROFILE\.gemini\config\skills\cipo"

# Creazione cartella di destinazione per la skill globale
New-Item -ItemType Directory -Force -Path $destSkills | Out-Null

$baseUrl = "https://raw.githubusercontent.com/Ste-CipoDev/C.I.P.O./main"

# Download definizione skill globale
Invoke-RestMethod -Uri "$baseUrl/skills/cipo/SKILL.md" -OutFile "$destSkills\SKILL.md"

# Rimozione di eventuali versioni legacy duplicate registrate come plugin
$legacyPlugin = "$env:USERPROFILE\.gemini\config\plugins\cipo"
if (Test-Path $legacyPlugin) {
    Remove-Item -Recurse -Force $legacyPlugin -ErrorAction SilentlyContinue
}

Write-Host "C.I.P.O. installato con successo! È pronto e richiamabile con /cipo in qualsiasi progetto Antigravity." -ForegroundColor Green
