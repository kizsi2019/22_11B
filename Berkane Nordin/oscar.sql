2,feladat 
SELECT film.ev, film.cim
FROM film
WHERE nyert
ORDER BY ev;
3,feladat
SELECT film.ev
FROM film
GROUP BY ev 
HAVING COUNT(id)>=10;
4,feladat 
SELECT film.cim
FROM film
WHERE ev BETWEEN 1939 And 1945
AND bemutato BETWEEN "1939-1-1" AND "1945-12-31";
5,feladat
SELECT film.cim
FROM film
WHERE Year(bemutato)-ev>=10
AND nyert;
6,feladat
SELECT keszito.nev, MAX(film.ev)-MIN(film.ev) AS eltelt, COUNT(film.id) AS db
FROM film, kapcsolat, keszito
  WHERE film.id=kapcsolat.filmid AND kapcsolat.keszitoid=keszito.id
  AND keszito.producer
  GROUP BY keszito.nev
  HAVING COUNT(film.id)>1;
7,feladat
SELECT DISTINCT keszito.nev
FROM keszito, kapcsolat
WHERE keszito.id=kapcsolat.keszitoid AND kapcsolat.filmid IN (
    SELECT kapcsolat.filmid FROM kapcsolat, keszito
    WHERE keszito.id=kapcsolat.keszitoid AND nev="Clint Eastwood")
AND nev <> "Clint Eastwood";
8,feladat
SELECT keszito.nev
FROM keszito
WHERE keszito.id NOT IN
  (
SELECT kapcsolat.keszitoid
FROM kapcsolat, film
WHERE kapcsolat.filmid=film.id
AND film.bemutato IS NOT NULL
   )
 AND keszito.producer;
