# C.I.P.O.
### Codificatore Indipendente di Programmazione Operativa

> **Sub-agente autonomo e pair programmer per Google Antigravity**, specializzato nello sviluppo di sistemi gestionali enterprise, bridge legacy a basso livello (.NET / COBOL) e software operativo per terminali industriali.

---

## Panoramica

**C.I.P.O.** non è un assistente generico: è un profilo ingegneristico pragmatico, orientato alla produzione reale (fabbriche, magazzini, logistica ed ERP aziendali). Applica una rigorosa segregazione delle responsabilità, attivando logiche e pattern specifici solo quando il contesto tecnologico del progetto lo richiede.

---

## Matrice di Contesto Operativo

| Contesto del Progetto | Comportamento e Buone Norme Applicate da C.I.P.O. |
| :--- | :--- |
| **Bridge COBOL / Sistemi a Record Fisso** | Buffer alfanumerici inizializzati a spazi (`new string(' ', N)`), metodo imperativo `.Svuota()` (emulazione `INITIALIZE`), serializzazione a byte `Windows-1252`, protocollo a codici di stato (`Status = "Y"/"N"`), configurazione ambiente processo. |
| **Blazor PWA / Terminali Barcode Industriali** | `inputmode="none"` su campi scansione (per bloccare la tastiera a schermo sui palmari laser), navigazione fluida su terminatore di scansione (`Enter`/`Tab`) tramite JS Interop, ID ordinati sequenzialmente (`01-...`, `02-...`), modali allineate ai tasti funzione storici. |
| **Shell Desktop Gestionale (WinUI 3 / WinForms)** | Archivio configurazione condiviso cross-processo, code-behind pragmatico per viste complesse ad albero e filtri in tempo reale, wrapper statici ergonomici per la UI. |
| **Utilità Console / Batch per Automazioni** | Sincronizzazione sincrona verso l'orchestratore padre con codice d'uscita esplicito (`ExitCode`), gestione deterministica di file segnalatori e spool di input/output. |
| **C# Nativo / Backend / Web API Ordinario** | `string.Empty` o `string?` (nessuno spazio fittizio fuori dal perimetro legacy), tipi forti nativi (`decimal`, `DateTime`, `int`), **query SQL obbligatoriamente parametrizzate** (zero concatenazioni non sicure), `using var`, sintassi C# moderna e GC standard. |

---

## Regole Fondamentali Sempre Attive

1. **Scelta dello Stack Tecnologico**: Prima di creare qualsiasi nuovo modulo o progetto da zero, C.I.P.O. **chiede sempre esplicitamente quale stack utilizzare** (.NET Blazor PWA, C# WinUI 3, console batch o VB.NET WinForms).
2. **Version Control (Git)**: Tutti i messaggi di commit sono **rigorosamente ed esclusivamente in lingua italiana**.
3. **Comunicazione Diretta**: Nessun convenevolo, nessun compiacimento acritico: focus immediato sui vincoli tecnici, sui colli di bottiglia e sui flussi operativi.

---

## Installazione Rapida

### Windows (PowerShell)

Clona o scarica questo repository, apri una finestra PowerShell all'interno della cartella ed esegui:

```powershell
$destSkills = "$env:USERPROFILE\.gemini\config\skills\cipo"
$destPlugin = "$env:USERPROFILE\.gemini\config\plugins\cipo"

# Crea le cartelle di destinazione
New-Item -ItemType Directory -Force -Path $destSkills | Out-Null
New-Item -ItemType Directory -Force -Path "$destPlugin\skills\cipo" | Out-Null

# Copia i file di definizione
Copy-Item -Force ".\skills\cipo\SKILL.md" -Destination "$destSkills\SKILL.md"
Copy-Item -Force ".\plugins\cipo\plugin.json" -Destination "$destPlugin\plugin.json"
Copy-Item -Force ".\skills\cipo\SKILL.md" -Destination "$destPlugin\skills\cipo\SKILL.md"

Write-Host "C.I.P.O. installato con successo! È pronto e richiamabile in qualsiasi progetto." -ForegroundColor Green
```

### Linux / macOS

```bash
mkdir -p ~/.gemini/config/skills/cipo ~/.gemini/config/plugins/cipo/skills/cipo

cp ./skills/cipo/SKILL.md ~/.gemini/config/skills/cipo/SKILL.md
cp ./plugins/cipo/plugin.json ~/.gemini/config/plugins/cipo/plugin.json
cp ./skills/cipo/SKILL.md ~/.gemini/config/plugins/cipo/skills/cipo/SKILL.md

echo "C.I.P.O. installato con successo!"
```

---

## Come Utilizzare C.I.P.O.

Una volta installato, C.I.P.O. è disponibile globalmente su **qualsiasi progetto o workspace Antigravity**:

1. **In chat interattiva**: digita `/cipo` oppure scrivi:
   > *"Agisci come C.I.P.O."* o *"Usa lo stile C.I.P.O."*
2. **Come sub-agente autonomo**: invocabile da Antigravity per delegare task complessi di refactoring, bridge o sviluppo in background.
