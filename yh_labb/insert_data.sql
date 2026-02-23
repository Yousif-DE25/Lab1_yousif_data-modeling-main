
-- Utbildningsledare
INSERT INTO utbildningsledare (förnamn, efternamn)
VALUES ('Ignore', 'Dad');

-- Program 
INSERT INTO program (programnamn, total_poäng, utbildningsledare_id)
VALUES ('Data Engineer', 400, 1);

-- Företag
INSERT INTO företag (företagsnamn, organisationsnummer, har_f_skatt, adress)
VALUES ('Scania AB', '676767-6677', True, 'Stockholm');

-- Utbildare
INSERT INTO utbildare (förnamn, efternamn)
VALUES ('Balaa', 'Manjake');

-- Kurs
INSERT INTO kurs (kursnamn, kurskod, poäng, beskrivning)
VALUES ('Data modellering', 'DE23_145', 40, 'Grundläggande data modellering');

-- Klass
INSERT INTO klass (klassnamn, startdatum, program_id)
VALUES 
('DE23', '2023-09-01', 1),
('DE24', '2024-09-01', 1),
('DE25', '2025-09-01', 1);

-- Student
INSERT INTO student (förnamn, efternamn, email, klass_id)
VALUES 
('Gustaf', 'Mohammedsson', 'Gushamm@gmail.com', 1),
('Lisa', 'Ann', 'Hub@hotmail.com', 1);

-- Konsult
INSERT INTO konsult (utbildare_id, företag_id, timarvode)
VALUES(1,1,800);

-- Kurs_Utbildare
INSERT INTO kurs_utbildare (kurs_id, utbildare_id)
VALUES(1,1);
