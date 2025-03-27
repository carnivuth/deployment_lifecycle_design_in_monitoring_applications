# Sistemi per la gestione scalabile del software life-cycle in applicativi di monitoraggio

Lavoro di tesi magistrale svolto presso i [Laboratori Guglielmo Marconi](https://www.labs.it/), dedicato alla progettazione e al management del software life-cycle del sistema di monitoraggio [Sanet](https://sanet.labs.it/homepage/)

## Ringraziamenti

Questo è stato l'ultimo traguardo alla fine di un viaggio incredibile pieno di alti bassi gioie e dolori che non si sarebbe concluso così se non fosse stato per tutta una serie di persone che mi hanno sostenuto, a loro vanno i miei più sentiti [ringraziamenti](./acknowledgements.md)

## Visionare l'elaborato

L'ultima versione dell'elaborato e disponibile nelle [releases](https://github.com/carnivuth/deployment_lifecycle_design_in_monitoring_applications/releases)

## Setup ambiente di sviluppo

- clonare la repository

```bash
git clone https://github.com/carnivuth/deployment_lifecycle_design_in_monitoring_applications
```

- installare le dipendenze di build

```bash
pacman -S texlive-latex texlive-latexrecommended texlive-latexextra make mermaid-cli inotify-tools evince
```

- buildare il progetto

```bash
make build
```

## Abstract

La tesi e stata svota nell'ambito del progetto di revisione del sistema di monitoraggio sanet presso i laboratori Marconi, e tocca temi quali progettazione di artefatti, gestione del deployment di sistemi distribuiti, miglioramento dei processi di produzione del software testing, in particolare

- Riorganizzazione dell'architettura di produzione del software
- Progettazione delle procedure di update del software
- Pianificazione e esecuzione delle operazioni di migrazione delle istanze di produzione

L'obbiettivo del progetto che ho condotto presso i Laboratori Marconi e' stato allineare le installazioni di Sanet, a una unica architettura di produzione che fosse in grado di coprire tutte le varie esigenze di business in termini di servizi erogati. L'architettura in questione deve essere replicabile in maniera programmatica.

Le sopracitate problematiche verranno esplorate con un occhio dedicato alla scalabilità e malleabilità delle operazioni e al mantenimento dei processi produttivi aziendali, con l'obbiettivo di rendere il Network operation center capace di gestire le operazioni regolari di manutenzione del software

Il progetto ha comportato un ampia fase di analisi e studio dei workflow aziendali tra cui:

- Workflow operativi del network operation center, intercettazione e gestione degli allarmi generati da sanet e procedure di escalation
- Workflow operativi sistemistici legati alla manutenzione di Sanet e utilizzo come pulizia dei log e aggiunta a monitoraggio degli apparati
- Workflow di sviluppo di integrazioni e componenti di sanet sia da parte dei team sistemistici che dell'area di sviluppo

Successivamente sono stati presi in analisi lo stato delle produzioni di sanet, identificate le situazioni critiche, i casi limite e le particolarità delle singole istanze, questo per avere coscienza di cosa sia necessario nell'architettura di produzione finale e definire il minimo insieme che contenesse tutte le features richieste per erogare il servizio di monitoraggio.

A seguito la progettazione e sviluppo della nuova architettura e del conseguente processo di migrazione delle istanze in produzione alla nuova architettura. Con la conseguente produzione della documentazione operativa e di sviluppo per la manutenzione e utilizzo del progetto.
