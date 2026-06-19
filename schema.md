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

- id
- nome
- descrizione
- sede
- email
- telefono 

## Table name: Corso di Laurea

- id 
- id_dipartimento FK 
- id_corso
- nome
- descrizione
- tipo di corso
- crediti formativi (o cfu)

## Table name: Corsi

- id
- id_corso_di_laurea FK 
- id_insegnante
- nome
- descrizione
- codice
- cfu
- ore

## Table name: Insegnanti

- id
- id_dipartimento
- id_corso
- id_esame
- nome
- cognome
- email
- ufficio

## Table name: Studente

- id
- id_corso_di_laurea
- id_corso
- matricola
- nome
- cognome
- email
- anno_iscrizione

## Table name: Esame

- id
- id_studente
- id_corso
- id_insegnante
- data_appello
- esito
- voto



