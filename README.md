# C.I.P.O.
### Codificatore Indipendente di Programmazione Operativa

[![Google Antigravity](https://img.shields.io/badge/Google-Antigravity%20Skill-4285F4?style=flat-square&logo=google&logoColor=white)](https://github.com/Ste-CipoDev/C.I.P.O.)
[![.NET 10](https://img.shields.io/badge/.NET-10-512BD4?style=flat-square&logo=dotnet&logoColor=white)](https://dotnet.microsoft.com/)
[![C#](https://img.shields.io/badge/C%23-Modern-239120?style=flat-square&logo=csharp&logoColor=white)](https://learn.microsoft.com/dotnet/csharp/)
[![Licenza MIT](https://img.shields.io/badge/Licenza-MIT-blue.svg?style=flat-square)](LICENSE)
[![Lingua Italiano](https://img.shields.io/badge/Lingua-Italiano-008C45?style=flat-square)](README.md)
[![Commit Italiano](https://img.shields.io/badge/Commit-Italiano%20Only-CD212A?style=flat-square)](README.md)

> **Sub-agente autonomo e pair programmer per Google Antigravity**, specializzato nello sviluppo di **Sistemi ERP complessi**, **Tool Professionali Enterprise** e bridge di interoperabilità a basso livello (.NET / COBOL / IPC).

---

## Il Manifesto di C.I.P.O.

L'utilità di **C.I.P.O.** è avere costantemente sottomano un **Developer Senior con anni di esperienza sul campo a costo zero**, con la garanzia che il codice scritto sarà sempre di **alta qualità, chiaro e manutenibile**.

Troppo spesso gli assistenti generici propongono soluzioni accademiche, dogmi teorici astratti o architetture speculative che crollano al primo impatto con la realtà aziendale. **C.I.P.O.** unisce il rigore delle buone norme ingegneristiche alla concretezza di chi conosce i problemi veri della produzione: consistenza contabile, transazioni multi-tabella, performance deterministiche, interoperabilità tra runtime storici e moderni, e software affidabile pensato per durare e sostenere progetti ambiziosi.

---

## Architettura e Competenze per Contesto

C.I.P.O. non forza mai un pattern unico: analizza il contesto del progetto e adotta la strategia architetturale più efficiente.

### 1. Sistemi ERP & Moduli Gestionali Complessi
Nello sviluppo del core business gestionale (contabilità, ciclo attivo/passivo, commesse, produzione):
- **Integrità transazionale rigorosa (ACID)**: transazioni atomiche esplicite (`using var transaction`) per modifiche documentali multi-tabella (testata-righe, castelletti IVA, movimenti contabili dare/avere). Rollback immediato su eccezione e divieto di stati parziali non coerenti.
- **Precisione finanziaria senza compromessi**: divieto categorico di tipi floating-point (`double`/`float`) per importi e prezzi. Utilizzo esclusivo di `decimal` con politiche di arrotondamento esplicite a norma di legge (`MidpointRounding.AwayFromZero`) e `DateOnly` per azzerare discrepanze da fusi orari.
- **Macchine a stati per il ciclo documentale**: validazione formale delle transizioni di stato nei documenti (*Bozza* -> *Confermato* -> *Fatturato* -> *Chiuso*) con precondizioni stringenti ed early return.
- **Idempotenza delle elaborazioni**: processi di contabilizzazione e ricalcolo massivo progettati per essere rieseguibili senza generare duplicazioni.

### 2. Tool Professionali, Launcher e Updater di Sistema
Nello sviluppo di utility aziendali, strumenti di manutenzione e launcher applicativi:
- **Gestione sicura dei processi attivi**: verifica preventiva dei processi in esecuzione prima di aggiornamenti binari (`Process.GetProcessesByName`), con attesa controllata per evitare blocchi da file in uso.
- **Backup preventivo e fallback**: creazione automatica di copie di sicurezza prima di sovrascrivere eseguibili o configurazioni critiche, con ripristino immediato in caso di errore.
- **Supporto per esecuzioni silenziose**: gestione di parametri CLI per esecuzioni non presidiate (`/silent`, `/noupdate`) e restituzione coerente dell'`ExitCode` per consentire l'orchestrazione da script batch esterni.

### 3. Sistemi Legacy & IPC a Basso Livello
Quando il progetto dialoga con runtime procedurali storici (COBOL, C nativo) o memoria condivisa (`MemoryMappedFile`, socket, pipe):
- **Buffer a record fisso deterministici**: inizializzazione rigorosa a lunghezza fissa con spazi (`new string(' ', N)`) per evitare disallineamenti di offset binari in memoria.
- **Emulazione del reset di stato (`.Svuota()`)**: ripristino manuale dei buffer prima di ogni ciclo consecutivo per prevenire contaminazioni di memoria tra chiamate (emulazione `INITIALIZE`).
- **Serializzazione binaria a byte**: lettura e scrittura esatta con codifiche host a byte (es. `Windows-1252`) senza l'overhead di parser generici (JSON/XML).
- **Protocolli a codici di stato**: traduzione automatica delle eccezioni .NET in flag di stato legacy (`Status = "Y"/"N"` e buffer di errore a lunghezza fissa).

### 4. Interfacce Web & Terminali Operativi con Barcode
Nello sviluppo di interfacce web (Blazor WebAssembly / PWA) per postazioni operative e terminali con scanner:
- **Gestione dell'input laser**: disabilitazione preventiva della tastiera virtuale a schermo (`inputmode="none"`) sui campi di lettura per non coprire l'interfaccia dell'operatore.
- **Navigazione fluida su terminatore**: intercettazione immediata del carattere terminatore (`Enter` o `Tab`) e spostamento deterministico del focus sul campo successivo via JS Interop.
- **Flussi sequenziali guidati**: ID dei controlli numerati in sequenza ordinata (`01-...`, `02-...`) per semplificare attraversamento e debug.

### 5. Client Desktop Enterprise (WinUI 3 / WinForms)
Nello sviluppo di shell desktop gestionali ad alta densità di dati e interattività:
- **Configurazioni e stato condiviso**: utilizzo di archivi centralizzati di sistema per condividere credenziali e percorsi tra processi eterogenei attivi sulla macchina.
- **Code-behind pragmatico**: interazione diretta con la Visual Tree quando le visualizzazioni complesse (alberi gerarchici di centinaia di programmi, filtri in tempo reale) renderebbero il puro MVVM un'inutile indirezione.
- **Wrapper ergonomici per la UI**: incapsulamento del boilerplate di dialogo e notifica in classi helper statiche e immediate.

### 6. Processi Batch & Automazioni di Sistema
Nello sviluppo di strumenti CLI e orchestratori batch:
- **Sincronizzazione esplicita verso il processo padre**: attesa deterministica delle API interne per restituire codici di uscita sincroni (`ExitCode`) conformi agli orchestratori di sistema.
- **Lock atomico e prevenzione collisioni**: scrittura su estensione temporanea (`.tmp`) con rinomina atomica finale (`.dat`) e lettura esclusiva controllata con retry pattern per evitare conflitti tra processi contemporanei.

### 7. Backend Moderno & Sicurezza
In assenza di vincoli legacy o interfacce barcode, C.I.P.O. applica le moderne pratiche di ingegneria del software:
- Tipi fortemente tipizzati nativi e `string.Empty` (nessuno spazio fittizio fuori dall'interscambio legacy).
- Gestione automatica del ciclo di vita con `using var` e piena conformità al Garbage Collector.
- Sintassi C# lineare, moderna ed espressiva (pattern matching, file-scoped namespaces, early return).

---

## Regole Fondamentali Sempre Attive

- **Zero Assunzioni Arbitrarie sullo Stack**: Prima di scrivere nuovo codice o creare moduli da zero, C.I.P.O. **ti consulta sempre preventivamente sullo stack tecnologico da adottare**, evitando di introdurre framework o dipendenze non desiderate.
- **Sicurezza e Riservatezza Enterprise**: 
  - Funziona al 100% in locale tramite l'infrastruttura di Google Antigravity: nessun dato o codice proprietario viene condiviso all'esterno.
  - **Query SQL obbligatoriamente parametrizzate**: divieto assoluto di concatenazioni di stringhe non sicure per prevenire ogni vulnerabilità di SQL Injection.
  - Divieto di credenziali o password in chiaro in codice sorgente o log.
- **Politica di Version Control**: Tutti i messaggi di commit sono **rigorosamente ed esclusivamente in lingua italiana**, garantendo tracciabilità e coerenza storica nei repository aziendali.

---

## Come Interagire con C.I.P.O.

C.I.P.O. può essere utilizzato in 3 modalità operative complementari:

1. **Pair Programming Interattivo**: digita il comando `/cipo` nella chat di Antigravity per iniziare una sessione di sviluppo congiunta. C.I.P.O. ti affiancherà nella stesura di codice, suggerendo architetture e verificando i vincoli operativi.
2. **Sub-Agente Autonomo in Background**: puoi delegargli interi task di refactoring, bridge o implementazione di componenti chiedendo ad Antigravity di eseguire il lavoro in background con il profilo C.I.P.O.
3. **Revisione Critica del Codice Esistente**: puoi sottoporre a C.I.P.O. file o porzioni di codice esistente per individuare colli di bottiglia prestazionali, rischi di sicurezza o incompatibilità tra sottosistemi.

---

## Installazione e Gestione del Ciclo di Vita

> **Prerequisiti**: È sufficiente disporre di **Google Antigravity** (o CLI `agy`) installato sul sistema e di una console PowerShell (Windows) o Bash (Linux/macOS).

### 1. Installazione Rapida (One-Liner PowerShell)
Apri PowerShell ed esegui:
```powershell
irm https://raw.githubusercontent.com/Ste-CipoDev/C.I.P.O./main/install.ps1 | iex
```

### 2. Aggiornamento Rapido all'Ultima Versione
Per sincronizzare le ultime modifiche rilasciate sul repository:
```powershell
irm https://raw.githubusercontent.com/Ste-CipoDev/C.I.P.O./main/update.ps1 | iex
```

### 3. Disinstallazione Completa
Se desideri rimuovere pulitamente C.I.P.O. dal sistema:
```powershell
irm https://raw.githubusercontent.com/Ste-CipoDev/C.I.P.O./main/uninstall.ps1 | iex
```

---

### Procedura Manuale da Repository Clonato

#### Su Windows (PowerShell):
```powershell
$destSkills = "$env:USERPROFILE\.gemini\config\skills\cipo"
$destPlugin = "$env:USERPROFILE\.gemini\config\plugins\cipo"

New-Item -ItemType Directory -Force -Path $destSkills | Out-Null
New-Item -ItemType Directory -Force -Path "$destPlugin\skills\cipo" | Out-Null

Copy-Item -Force ".\skills\cipo\SKILL.md" -Destination "$destSkills\SKILL.md"
Copy-Item -Force ".\plugins\cipo\plugin.json" -Destination "$destPlugin\plugin.json"
Copy-Item -Force ".\skills\cipo\SKILL.md" -Destination "$destPlugin\skills\cipo\SKILL.md"

Write-Host "C.I.P.O. installato con successo!" -ForegroundColor Green
```

#### Su Linux / macOS (Bash):
```bash
mkdir -p ~/.gemini/config/skills/cipo ~/.gemini/config/plugins/cipo/skills/cipo

cp ./skills/cipo/SKILL.md ~/.gemini/config/skills/cipo/SKILL.md
cp ./plugins/cipo/plugin.json ~/.gemini/config/plugins/cipo/plugin.json
cp ./skills/cipo/SKILL.md ~/.gemini/config/plugins/cipo/skills/cipo/SKILL.md

echo "C.I.P.O. installato con successo!"
```

---

## Come Funziona sotto il Cofano

Google Antigravity scansiona automaticamente la cartella `~/.gemini/config/skills/` all'avvio. Una volta installato `SKILL.md` in tale percorso, C.I.P.O. diventa disponibile **a livello globale su qualsiasi workspace o progetto** aperto sulla macchina, senza bisogno di riconfigurarlo per ogni singola cartella.

---

## Personalizzazione ed Estendibilità

C.I.P.O. è progettato per essere facilmente esteso. Se la tua azienda o il tuo team utilizzano convenzioni specifiche, è sufficiente modificare il file locale:

```text
~/.gemini/config/skills/cipo/SKILL.md
```

Le nuove istruzioni saranno immediatamente attive nella sessione successiva di Antigravity.

---

## Autore e Licenza

- **Ideato e sviluppato da**: [Stefano Cipollitti](https://github.com/Ste-CipoDev) ([@Ste-CipoDev](https://github.com/Ste-CipoDev))
- **Licenza**: [MIT](LICENSE) — Libero e gratuito per qualsiasi utilizzo, sia personale che aziendale.

Se trovi utile C.I.P.O. per i tuoi progetti o desideri proporre miglioramenti e casi d'uso enterprise, sentiti libero di aprire una [Issue su GitHub](https://github.com/Ste-CipoDev/C.I.P.O./issues)!
