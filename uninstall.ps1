# Script di disinstallazione completa di C.I.P.O. per Google Antigravity
$ErrorActionPreference = "Stop"

Write-Host "Rimozione di C.I.P.O. in corso..." -ForegroundColor Yellow

$destSkills = "$env:USERPROFILE\.gemini\config\skills\cipo"
$destPlugin = "$env:USERPROFILE\.gemini\config\plugins\cipo"

$rimosso = $false

if (Test-Path $destSkills) {
    Remove-Item -Recurse -Force $destSkills
    Write-Host "Rimossa skill globale: $destSkills" -ForegroundColor Cyan
    $rimosso = $true
}

if (Test-Path $destPlugin) {
    Remove-Item -Recurse -Force $destPlugin
    Write-Host "Rimosso plugin globale: $destPlugin" -ForegroundColor Cyan
    $rimosso = $true
}

if ($rimosso) {
    Write-Host "C.I.P.O. e tutte le relative configurazioni sono stati rimossi con successo dal sistema." -ForegroundColor Green
} else {
    Write-Host "Nessuna installazione di C.I.P.O. trovata nel percorso dell'utente." -ForegroundColor Gray
}
