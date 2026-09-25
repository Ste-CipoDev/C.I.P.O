# Script di installazione automatica di C.I.P.O. per Google Antigravity
$ErrorActionPreference = "Stop"

Write-Host "Installazione di C.I.P.O. in corso..." -ForegroundColor Cyan

$destSkills = "$env:USERPROFILE\.gemini\config\skills\cipo"
$destPlugin = "$env:USERPROFILE\.gemini\config\plugins\cipo"

# Creazione cartelle di destinazione
New-Item -ItemType Directory -Force -Path $destSkills | Out-Null
New-Item -ItemType Directory -Force -Path "$destPlugin\skills\cipo" | Out-Null

$baseUrl = "https://raw.githubusercontent.com/Ste-CipoDev/C.I.P.O./main"

# Download definizioni skill e plugin
Invoke-RestMethod -Uri "$baseUrl/skills/cipo/SKILL.md" -OutFile "$destSkills\SKILL.md"
Invoke-RestMethod -Uri "$baseUrl/plugins/cipo/plugin.json" -OutFile "$destPlugin\plugin.json"
Copy-Item -Force "$destSkills\SKILL.md" -Destination "$destPlugin\skills\cipo\SKILL.md"

Write-Host "C.I.P.O. installato con successo! È pronto e richiamabile con /cipo in qualsiasi progetto Antigravity." -ForegroundColor Green
