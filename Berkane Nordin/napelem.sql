-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!


-- 1. feladat:
CREATE DATABASE napsutes
DEFAULT CHARSET = utf8
COLLATE utf8_hungarian_ci;


-- 3. feladat:
UPDATE regiok
SET regiok.regioNev = "Észak-írország"
WHERE regiok.id = 4;

-- 4. feladat:
SELECT COUNT(id) AS rekordszam,
AVG(perc) AS atlag
FROM meresek;

-- 5. feladat:
SELECT ev,
SUM(perc)/60 AS orak
FROM meresek INNER JOIN regiok ON meresek.regioId=regiok.id
WHERE regiok.regioNev="Anglia"
AND ev BETWEEN 1990 AND 2000
GROUP BY ev ORDER BY ev DESC;

-- 6. feladat:
SELECT ev, perc, regioNev AS terulet 
FROM meresek INNER JOIN regiok ON meresek.regioId=regiok.id
WHERE ho=2
AND perc>6000
ORDER BY perc DESC;
