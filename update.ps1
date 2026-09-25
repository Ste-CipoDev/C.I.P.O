# Script di aggiornamento automatico per C.I.P.O.
$ErrorActionPreference = "Stop"

Write-Host "Verifica e aggiornamento di C.I.P.O. in corso..." -ForegroundColor Cyan

$destSkills = "$env:USERPROFILE\.gemini\config\skills\cipo"
$destPlugin = "$env:USERPROFILE\.gemini\config\plugins\cipo"

# Assicurati che le cartelle esistano
New-Item -ItemType Directory -Force -Path $destSkills | Out-Null
New-Item -ItemType Directory -Force -Path "$destPlugin\skills\cipo" | Out-Null

$baseUrl = "https://raw.githubusercontent.com/Ste-CipoDev/C.I.P.O./main"

try {
    # Se eseguito dentro la cartella locale clonata del repository
    if (Test-Path ".\skills\cipo\SKILL.md") {
        Write-Host "Aggiornamento dai file locali del repository..." -ForegroundColor Yellow
        Copy-Item -Force ".\skills\cipo\SKILL.md" -Destination "$destSkills\SKILL.md"
        Copy-Item -Force ".\plugins\cipo\plugin.json" -Destination "$destPlugin\plugin.json"
        Copy-Item -Force ".\skills\cipo\SKILL.md" -Destination "$destPlugin\skills\cipo\SKILL.md"
    } else {
        # Altrimenti scarica l'ultima versione direttamente da GitHub
        Write-Host "Download dell'ultima versione da GitHub (Ste-CipoDev/C.I.P.O.)..." -ForegroundColor Yellow
        Invoke-RestMethod -Uri "$baseUrl/skills/cipo/SKILL.md" -OutFile "$destSkills\SKILL.md"
        Invoke-RestMethod -Uri "$baseUrl/plugins/cipo/plugin.json" -OutFile "$destPlugin\plugin.json"
        Copy-Item -Force "$destSkills\SKILL.md" -Destination "$destPlugin\skills\cipo\SKILL.md"
    }

    Write-Host "C.I.P.O. aggiornato con successo all'ultima versione!" -ForegroundColor Green
} catch {
    Write-Host "Errore durante l'aggiornamento: $_" -ForegroundColor Red
}
