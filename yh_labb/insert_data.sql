
-- Program 
INSERT INTO program (programnamn, total_poäng)
VALUES ('Data Engineer', 400);

-- Utbildningsledare
INSERT INTO utbildningsledare (förnamn, efternamn)
VALUES ('Ignore', 'Dad');

-- Klass
INSERT INTO klass (klassnamn, startdatum, program_id, utbildningsledare_id)
VALUES 
('DE23', '2023-09-01', 6, 7),
('DE24', '2024-09-01', 6, 7),
('DE25', '2025-09-01', 6, 7);

-- Student
INSERT INTO student (förnamn, efternamn, email, klass_id)
VALUES 
('Gustaf', 'Mohammedsson', 'Gushamm@gmail.com', 1),
('Lisa', 'Ann', 'Hub@hotmail.com', 1);

-- Utbildare
INSERT INTO utbildare (förnamn, efternamn)
VALUES ('Balaa', 'Manjake');

-- Kurs
INSERT INTO kurs (kursnamn, kurskod, poäng, beskrivning, utbildare_id, timarvode)
VALUES ('Data modellering', 'DE23_145', 40, 'Grundläggande data modellering', 9, 800);

-- Företag
INSERT INTO företag (företagsnamn, organisationsnummer, har_f_skatt, adress)
VALUES ('Scania AB', '676767-6677', True, 'Stockholm');

-- Konsult
INSERT INTO konsult (utbildare_id, företag_id)
VALUES(1,1);

-- Kurs_Utbildare
INSERT INTO kurs_utbildare (kurs_id, utbildare_id)
VALUES(1,1);
