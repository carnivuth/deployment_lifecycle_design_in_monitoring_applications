# Sistemi per la gestione scalabile del software lifecycle in applicativi di monitoraggio

Lavoro di tesi magistrale svolto presso i Laboratori Guglielmo Marconi, dedicato alla progettazione e al management del software lifecicle del sistema di monitoraggio Sanet

## Setup ambiente di sviluppo

- clonare la repository

```bash
git clone https://github.com/carnivuth/[CHANGEME]
```

- installare le dipendenze di build

```bash
pacman -S texlive-latex texlive-latexrecommended texlive-latexextra make mermaid-cli
```

- buildare il progetto

```bash
make build
```

## Sommario

Lo sviluppo software per risultare efficace necessita di una adeguata strategia di manutenzione e monitoraggio delle istanze in produzione per prevenire situazioni di software erosion. Il mio elaborato di tesi punta a mostrare quanto e stato svolto presso i Laboratori Marconi per quanto riguarda il software lifecycle del sistema di monitoraggio aziendale: Sanet.

Nel elaborato verranno affrontate problematiche quali:

- Riorganizzazione dell'architettura di produzione del software
- Progettazione delle procedure di update del software
- Pianificazione e esecuzione delle operazioni di migrazione delle istanze di produzione

L'obbiettivo del progetto che ho condotto presso i Laboratori Marconi e' stato allineare le installazioni di Sanet, a una unica architettura di produzione che fosse in grado di coprire tutte le varie esigenze di business in termini di servizi erogati. l'architettura in questione deve essere replicabile in maniera programmatica.

Le sopracitate problematiche verranno esplorate con un occhio dedicato alla scalabilità e malleabilità delle operazioni e al mantenimento dei processi produttivi aziendali, con l'obbiettivo di rendere il Network operation center capace di gestire le operazioni regolari di manutenzione del software

Il progetto ha comportato un ampia fase di analisi e studio dei workflow aziendali tra cui:

- Workflow operativi del network operation center, intercettazione e gestione degli allarmi generati da sanet e procedure di escalation
- Workflow operativi sistemistici legati alla manutenzione di Sanet e utilizzo come pulizia dei log e aggiunta a monitoraggio degli apparati
- Workflow di sviluppo di integrazioni e componenti di sanet sia da parte dei team sistemistici che dell'area di sviluppo

Successivamente sono stati presi in analisi lo stato delle produzioni di sanet, identificate le situazioni critiche, i casi limite e le particolarità delle singole istanze, questo per avere coscienza di cosa sia necessario nell'architettura di produzione finale e definire il minimo insieme che contenesse tutte le features richieste per erogare il servizio di monitoraggio.

A seguito la progettazione e sviluppo della nuova architettura e del conseguente processo di migrazione delle istanze in produzione alla nuova architettura. Con la conseguente produzione della documentazione operativa e di sviluppo per la manutenzione e utilizzo del progetto.
