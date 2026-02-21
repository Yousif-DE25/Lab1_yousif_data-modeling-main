
SELECT 
    k.klassnamn, 
    u.förnamn, 
    u.efternamn
FROM klass k 
JOIN utbildningsledare u 
    ON k.utbildningsledare_id = u.utbildningsledare_id;

SELECT 
    s.förnamn, 
    s.efternamn, 
    k.klassnamn
FROM student s 
JOIN klass k 
    ON s.klass_id = k.klass_id;

SELECT 
    ku.kursnamn
    u.förnamn
    u.efternamn
FROM kurs ku
JOIN kurs_utbildare ku_u 
    ON ku.kurs_id = ku_u.kurs_id
JOIN utbildare u 
    ON ku_u.utbildare_id = u.utbildare_id;

SELECT 
    ku.kursnamn,
    COUNT(ku_u.utbildare_id) AS antal_utbildare
FROM kurs ku
JOIN kurs_utbildare ku_u
    ON ku.kurs_id = ku_u.kurs_id
GROUP BY ku.kursnamn;

SELECT 
    u.förnamn
    u.efternamn
    ku.kursnamn
FROM utbildare u
JOIN kurs_utbildare ku_u
    ON u.utbildare_id = ku_u.utbildare_id
JOIN kurs ku 
    ON ku_u.kurs_id = ku.kurs_id;
