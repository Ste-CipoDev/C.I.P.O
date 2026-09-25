# C.I.P.O.
### Codificatore Indipendente di Programmazione Operativa

[![Google Antigravity](https://img.shields.io/badge/Google-Antigravity%20Skill-4285F4?style=flat-square&logo=google&logoColor=white)](https://github.com/Ste-CipoDev/C.I.P.O.)
[![.NET 10](https://img.shields.io/badge/.NET-10-512BD4?style=flat-square&logo=dotnet&logoColor=white)](https://dotnet.microsoft.com/)
[![C#](https://img.shields.io/badge/C%23-Modern-239120?style=flat-square&logo=csharp&logoColor=white)](https://learn.microsoft.com/dotnet/csharp/)
[![Licenza MIT](https://img.shields.io/badge/Licenza-MIT-blue.svg?style=flat-square)](LICENSE)
[![Lingua Italiano](https://img.shields.io/badge/Lingua-Italiano-008C45?style=flat-square)](README.md)
[![Commit Italiano](https://img.shields.io/badge/Commit-Italiano%20Only-CD212A?style=flat-square)](README.md)

> **Sub-agente autonomo e pair programmer per Google Antigravity**, specializzato nello sviluppo di sistemi gestionali enterprise, bridge legacy a basso livello (.NET / COBOL / IPC) e software operativo per terminali industriali e di magazzino.

---

## Il Manifesto di C.I.P.O.

L'utilità di **C.I.P.O.** è avere costantemente sottomano un **Developer Senior con anni di esperienza sul campo a costo zero**, con la garanzia che il codice scritto sarà sempre di **alta qualità, chiaro e manutenibile**.

Troppo spesso gli assistenti generici propongono soluzioni accademiche, dogmi teorici astratti o architetture inutilmente complesse che crollano al primo impatto con la realtà aziendale. **C.I.P.O.** unisce il rigore delle buone norme ingegneristiche alla concretezza di chi ha visto e risolto i problemi veri della produzione: flussi operativi continui, performance deterministiche, interoperabilità tra runtime storici e moderni, e software affidabile pensato per durare e sostenere progetti ambiziosi.

---

## Architettura e Competenze per Contesto

C.I.P.O. non forza mai un pattern unico: analizza il contesto del progetto e adotta la strategia architetturale più efficiente.

### 1. Sistemi Legacy & IPC a Basso Livello
Quando il progetto dialoga con runtime procedurali storici (COBOL, C nativo) o memoria condivisa (`MemoryMappedFile`, socket, pipe):
- **Buffer a record fisso deterministici**: inizializzazione rigorosa a lunghezza fissa predefinita per evitare disallineamenti di offset binari in memoria.
- **Emulazione del reset di stato**: implementazione di metodi imperativi di pulizia buffer prima di ogni ciclo per evitare contaminazioni tra chiamate consecutive.
- **Serializzazione binaria a byte**: lettura e scrittura esatta con codifiche host a byte (es. `Windows-1252`) senza l'overhead di parser generici (JSON/XML).
- **Protocolli a codici di stato**: intercettazione delle eccezioni interne e traduzione in flag di stato standard per garantire compatibilità con i chiamanti storici.

### 2. Terminali Industriali & Barcode
Nello sviluppo di interfacce web (Blazor WebAssembly / PWA) destinate a palmari industriali e lettori laser di magazzino:
- **Gestione dell'input laser**: disabilitazione preventiva della tastiera virtuale a schermo (`inputmode="none"`) sui campi di lettura per non coprire l'interfaccia dell'operatore.
- **Navigazione fluida su terminatore**: intercettazione immediata del carattere terminatore inviato dal lettore ottico (`Enter` o `Tab`) e spostamento deterministico del focus sul campo successivo via JS Interop.
- **Flussi sequenziali guidati**: ID dei controlli numerati in sequenza ordinata per semplificare attraversamento e debug sul campo.

### 3. Client Desktop Enterprise
Nello sviluppo di shell desktop gestionali ad alta interattività:
- **Configurazioni e stato condiviso**: utilizzo di archivi centralizzati di sistema per condividere credenziali e percorsi tra processi eterogenei attivi sulla macchina.
- **Code-behind pragmatico**: accesso diretto alla Visual Tree quando le visualizzazioni complesse (alberi gerarchici di centinaia di programmi, filtri in tempo reale) renderebbero il puro MVVM un'inutile indirezione.
- **Wrapper ergonomici per la UI**: incapsulamento del boilerplate di dialogo e notifica in classi helper statiche e immediate.

### 4. Processi Batch & Automazioni di Sistema
Nello sviluppo di strumenti CLI e orchestratori batch:
- **Sincronizzazione esplicita verso il processo padre**: attesa deterministica delle API interne per restituire codici di uscita sincroni (`ExitCode`) conformi agli orchestratori di sistema.
- **Gestione dei file segnalatori**: elaborazione sequenziale dei file di spool con eliminazione atomica a conferma del successo o tracciamento d'errore dedicato.

### 5. Backend Moderno & Cloud-Ready
In assenza di vincoli legacy o hardware di magazzino, C.I.P.O. applica le moderne pratiche di ingegneria del software:
- Tipi fortemente tipizzati nativi (`decimal`, `DateTime`, `DateOnly`, `int`, `bool`) e `string.Empty` (nessuno spazio fittizio fuori dall'interscambio legacy).
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

## Installazione Rapida

> **Prerequisiti**: È sufficiente disporre di **Google Antigravity** (o CLI `agy`) installato sul sistema e di una console PowerShell (Windows) o Bash (Linux/macOS).

### Metodo 1: Comando Rapido One-Liner (Windows PowerShell)

Apri una finestra PowerShell ed esegui questo singolo comando per installare C.I.P.O. globalmente sul tuo utente:

```powershell
irm https://raw.githubusercontent.com/Ste-CipoDev/C.I.P.O./main/install.ps1 | iex
```

---

### Metodo 2: Installazione Manuale da Repository Clonato

Se preferisci scaricare o clonare manualmente il repository:

#### Su Windows (PowerShell):
```powershell
$destSkills = "$env:USERPROFILE\.gemini\config\skills\cipo"
$destPlugin = "$env:USERPROFILE\.gemini\config\plugins\cipo"

# Crea le cartelle di destinazione
New-Item -ItemType Directory -Force -Path $destSkills | Out-Null
New-Item -ItemType Directory -Force -Path "$destPlugin\skills\cipo" | Out-Null

# Copia le definizioni
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

C.I.P.O. è progettato per essere facilmente esteso. Se la tua azienda o il tuo team utilizzano protocolli proprietari, librerie interne o convenzioni di formattazione specifiche, è sufficiente modificare il file locale:

```text
~/.gemini/config/skills/cipo/SKILL.md
```

Le nuove istruzioni saranno immediatamente attive nella sessione successiva di Antigravity.

---

## Autore e Licenza

- **Ideato e sviluppato da**: [Stefano Cipollitti](https://github.com/Ste-CipoDev) ([@Ste-CipoDev](https://github.com/Ste-CipoDev))
- **Licenza**: [MIT](LICENSE) — Libero e gratuito per qualsiasi utilizzo, sia personale che aziendale.

Se trovi utile C.I.P.O. per i tuoi progetti o desideri proporre miglioramenti e casi d'uso enterprise, sentiti libero di aprire una [Issue su GitHub](https://github.com/Ste-CipoDev/C.I.P.O./issues)!
