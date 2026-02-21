
-- Program
CREATE TABLE program (
    program_id SERIAL PRIMARY KEY,
    programnamn VARCHAR(100),
    total_poäng INTEGER,
    utbildningsledare_id INTEGER REFERENCES utbildningsledare(utbildningsledare_id)
);

-- Utbildningsledare
CREATE TABLE utbildningsledare (
    utbildningsledare_id SERIAL PRIMARY KEY,
    förnamn VARCHAR(50),
    efternamn VARCHAR(50)
);

-- Klass
CREATE TABLE klass (
    klass_id SERIAL PRIMARY KEY,
    klassnamn VARCHAR(50),
    startdatum DATE,
    program_id INTEGER REFERENCES program(program_id)
);

-- Student
CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    förnamn VARCHAR(50),
    efternamn VARCHAR(50),
    email VARCHAR(100),
    klass_id INTEGER REFERENCES klass(klass_id)
);

-- Utbildare
CREATE TABLE utbildare (
    utbildare_id SERIAL PRIMARY KEY,
    förnamn VARCHAR(50),
    efternamn VARCHAR(50)
);

-- Kurs
CREATE TABLE kurs (
    kurs_id SERIAL PRIMARY KEY,
    kursnamn VARCHAR(100),
    kurskod VARCHAR(20),
    poäng INTEGER,
    beskrivning TEXT,
    utbildare_id INTEGER REFERENCES utbildare(utbildare_id)
);

-- Konsult
CREATE TABLE konsult (
    konsult_id SERIAL PRIMARY KEY,
    utbildare_id INTEGER REFERENCES utbildare(utbildare_id),
    företag_id INTEGER REFERENCES företag(företag_id),
    timarvode FLOAT
);

-- Företag
CREATE TABLE företag (
    företag_id SERIAL PRIMARY KEY,
    företagsnamn VARCHAR(100),
    organisationsnummer VARCHAR(20),
    har_f_skatt BOOLEAN,
    adress VARCHAR(200)
);

-- Personuppgifter
CREATE TABLE personuppgifter (
    personuppgifter_id SERIAL PRIMARY KEY,
    personnummer VARCHAR(12)
);

-- Kurs_Utbildare (kopplings tabell)
CREATE TABLE kurs_utbildare (
    kurs_id INTEGER REFERENCES kurs(kurs_id),
    utbildare_id INTEGER REFERENCES utbildare(utbildare_id),
    PRIMARY KEY (kurs_id, utbildare_id)
);
