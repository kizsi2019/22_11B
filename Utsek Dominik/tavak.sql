2.feladat
SELECT alloviz.nev, alloviz.terulet
FROM alloviz
WHERE alloviz.nev LIKE "%morotva%"
ORDER BY alloviz.terulet;

3.feladat
SELECT SUM(alloviz.terulet)/93036 AS vizfelület_aránya FROM alloviz;

4.feladat
SELECT alloviz.nev, alloviz.tipus, alloviz.terulet
FROM alloviz
WHERE alloviz.terulet BETWEEN 3 AND 10
AND alloviz.vizgyujto >= 10*alloviz.terulet;

5.feladat
SELECT alloviz.nev, COUNT(helykapcs.gpsid) AS Darab
FROM alloviz, helykapcs
WHERE alloviz.id=helykapcs.allovizid
GROUP BY alloviz.id, alloviz.nev
HAVING COUNT(helykapcs.gpsid)>=3;

6.feladat

7.feladat
SELECT alloviz.nev, terulet, telepulesgps.nev
FROM alloviz, helykapcs, telepulesgps
WHERE alloviz.id=alloviz AND telepulesgps.id=gpsid AND
allovizid IN (
    SELECT helykapcs.allovizid FROM helykapcs
    GROUP BY helykapcs.allovizid
    HAVING COUNT(helykapcs.gpsid)=1)
    AND
gpsid IN (
    SELECT helykapcs.gpsid FROM helykapcs
    GROUP BY helykapcs.gpsid
    HAVING COUNT (helykapcs.allovizid)=1);