-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!


-- 1. feladat:
CREATE DATABASE formula1
DEFAULT CHARSET = utf8
COLLATE utf8_hungarian_ci;


-- 3. feladat:
UPDATE nagydijak
SET nagydijak.korokszama = 70
WHERE nagydijak.nev LIKE '%Hungarian Grand Prix%';

-- 4. feladat:
SELECT pilotak.vezeteknev, pilotak.rajtszam, pilotak.csapatnev,
2019-year(pilotak.szuletesidatum) AS eletkor
FROM pilotak
ORDER BY eletkor DESC;

-- 5. feladat:
SELECT nagydijak.nev, pilotak.vezeteknev, pilotak.keresztnev, nagydijak.versenynap
FROM nagydijak
INNER JOIN eredmenyek ON nagydijak.id=eredmenyek.nagydijid
INNER JOIN pilotak ON pilotak.id=eredmenyek.pilotaid
WHERE eredmenyek.helyezes=1
ORDER BY nagydijak.versenynap

-- 6. feladat:
SELECT concat(pilotak.keresztnev," ",pilotak.vezeteknev) AS nev,pilotak.csapatnev,
SUM(eredmenyek.pontszam) AS osszpontszam
FROM pilotak
INNER JOIN eredmenyek ON pilotak.id=eredmenyek.pilotaid
GROUP BY nev,pilotak.csapatnev
ORDER BY osszpontszam DESC
LIMIT 3