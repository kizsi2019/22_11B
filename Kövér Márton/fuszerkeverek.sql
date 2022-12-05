2.feladat

SELECT keverek.tomeg, keverek.ar, keverek.nev
FROM keverek
WHERE NOT keverek.tomeg = 20;

3.feladat

SELECT keverek.nev, keverek.ar*1000/keverek.tomeg AS Kilogrammonként 
FROM keverek 
ORDER BY 2 DESC
LIMIT 1;

4.feladat

SELECT COUNT(keverekid) AS Darab 
FROM osszetevo, kapcsolat 
WHERE id = osszetevoid AND nev='bazsalikom';

5.feladat

SELECT TOP 1 nev, COUNT(osszetevo.id) AS Összetevők_száma 
FROM keverek, kapcsolat 
WHERE keverek.id = keverek.id
GROUP BY nev,
ORDER BY 2 DESC;

6.feladat

SELECT keverek.nev
FROM keverek
WHERE keverek.id NOT IN (
    SELECT keverek.id
    FROM osszetevo, kapcsolat
    WHERE keverek.id = osszetevo.id AND keverek.nev LIKE "%bors%");

7.feladat

SELECT keverek.nev 
FROM osszetevo, keverek, kapcsolat 
WHERE keverek.id = keverekid AND osszetevo.id = osszetevoid 
	AND  osszetevo.nev = "%paradicsom%" AND
    keverek.id IN (
        SELECT keverek.id
        FROM kapcsolat, osszetevo
        WHERE keverek.id = osszetevo.id AND nev="%chili%");

8.feladat

SELECT keverek.nev, osszetevo.nev
FROM osszetevo, keverek, kapcsolat
WHERE keverek.id = keverekid AND osszetevo.id =osszetevoid
	AND ajanlat LIKE "%indiai%";   