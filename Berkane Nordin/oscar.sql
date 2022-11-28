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
