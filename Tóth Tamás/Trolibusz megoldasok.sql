﻿-- A feladatok megoldására elkészített SQL parancsokat illessze be a feladat sorszáma után!


-- 10. feladat:
CREATE DATABASE halozat
CHARSET utf8
COLLATE utf8_hungarian_ci;

-- 12. feladat:
INSERT INTO megallok
VALUES (198, Kőbányai Garázs)

-- 13. feladat:
UPDATE jaratok
SET jaratok.elsoAjtos = 0
WHERE jaratok.id = 20;

-- 14. feladat:
SELECT jaratok.jaratSzam FROM jaratok
WHERE jaratok.elsoAjtos = 1;

-- 15. feladat:
SELECT megallok.nev FROM megallok
WHERE megallok.nev LIKE "%setány%";

-- 16. feladat:
SELECT halozat.sorszam, megallok.nev AS "megallo"
FROM halozat,megallok,jaratok
WHERE megallok.id = halozat.megallo AND halozat.jarat = jaratok.id
	AND jaratok.jaratSzam = "City" AND halozat.irany = "A"
    ORDER BY 1 ASC

-- 17. feladat:
SELECT megallok.nev AS "megallo", COUNT(halozat.jarat) AS "jaratokSzama"
FROM halozat,megallok
WHERE megallok.id = halozat.megallo
GROUP BY megallok.nev
HAVING jaratokSzama > 2



