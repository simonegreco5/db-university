# Database name: db-university

Modellizzare la struttura di un database per memorizzare tutti i dati riguardanti una università:

- sono presenti diversi `Dipartimenti` (es.: Lettere e Filosofia, Matematica, Ingegneria ecc.);
- ogni `Dipartimento` offre più `Corsi di Laurea` (es.: Civiltà e Letterature Classiche, Informatica, Ingegneria Elettronica ecc..)
- ogni `Corso di Laurea` prevede diversi `Corsi` (es.: Letteratura Latina, Sistemi Operativi 1, Analisi Matematica 2 ecc.);
- ogni `Corso` può essere tenuto da diversi `Insegnanti`;
- ogni `Corso` prevede più appelli d'`Esame`;
- ogni `Studente` è iscritto ad un solo `Corso di Laurea`;
- ogni `Studente` può iscriversi a più appelli di `Esame`;
- per ogni appello d'`Esame` a cui lo `Studente` ha partecipato, è necessario memorizzare il voto ottenuto, anche se non sufficiente.

Pensiamo a quali entità (tabelle) creare per il nostro database e cerchiamo poi di stabilirne le relazioni. Infine, andiamo a definire le colonne e i tipi di dato di ogni tabella.

## Tables

- Dipartimenti
- Corso di Laurea
- Corsi
- Insegnanti
- Studente
- Esame

## Table name: Dipartimenti

- id                          PK  BIGINT
- nome
- descrizione
- sede
- email
- telefono 

## Table name: Corso di Laurea

- id                          PK  BIGINT
- id_dipartimento             FK  BIGINT
- id_corso                    FK  BIGINT
- nome                            VARCHAR(200)
- descrizione                     TEXT
- tipo di corso                   VARCHAR(30)
- crediti formativi (o cfu)       VARCHAR(30)

## Table name: Corsi

- id                          PK  BIGINT
- id_corso_di_laurea          FK  BIGINT
- id_insegnante               FK  BIGINT
- nome                            VARCHAR(200)
- descrizione                     TEXT
- codice                          VARCHAR(30)
- cfu                             VARCHAR(30)
- semestre                        VARCHAR(30)
- ore                             VARCHAR(30)

## Table name: Insegnanti

- id                          PK  BIGINT
- id_dipartimento             FK  BIGINT
- id_corso                    FK  BIGINT
- id_esame                    FK  BIGINT
- nome                            VARCHAR(100)
- cognome                         VARCHAR(100)
- email                           VARCHAR(50)
- ufficio                         VARCHAR(50)

## Table name: Studente

- id                          PK  BIGINT
- id_corso_di_laurea          FK  BIGINT
- id_corso                    FK  BIGINT
- matricola                       VARCHAR(20)
- nome                            VARCHAR(100)
- cognome                         VARCHAR(100)
- email                           VARCHAR(100)
- anno_iscrizione                 DATE

## Table name: Esame

- id                          PK  BIGINT
- id_studente                 FK  BIGINT
- id_corso                    FK  BIGINT
- id_insegnante               FK  BIGINT
- nome                            VARCHAR(100)
- data_appello                    DATE
- esito                           VARCHAR(50)
- voto                            VARCHAR(30)



