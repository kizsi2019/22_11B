1,
INSERT INTO vetites(azon,mozinev,fkod)
VALUES(356,'Művész',2)
2,
UPDATE filmek
SET filmek.hossz = 110
WHERE filmek.fkod = 3;
3,
DELETE FROM filmek WHERE filmek.filmcim='Film';
4,
SELECT filmek.filmcim, filmek.mufaj, filmek.hossz 
FROM filmek
5,
SELECT filmek.filmcim, filmek.szarmazas FROM filmek ORDER BY filmek.szarmazas;
6,
SELECT filmek.filmcim, filmek.hossz FROM filmek
WHERE filmek.mufaj LIKE '%dokumentum%'
ORDER BY filmek.hossz DESC;
7,
SELECT filmek.filmcim, filmek.hossz FROM filmek
WHERE filmek.szarmazas LIKE '%amerikai%';
8,
SELECT filmek.filmcim, filmek.mufaj FROM filmek
WHERE filmek.szinkron LIKE '%mb%';
9,
SELECT filmek.filmcim FROM filmek ORDER BY filmek.filmcim ASC;
10,
SELECT filmek.filmcim, filmek.szarmazas FROM filmek 
WHERE filmek.szarmazas LIKE '%angol%';
11,
SELECT filmek.filmcim, filmek.hossz FROM filmek 
WHERE filmek.filmcim LIKE 'b%';
12,
SELECT filmek.filmcim, filmek.mufaj FROM filmek 
13,
SELECT filmek.filmcim, filmek.mufaj FROM filmek
ORDER BY filmek.hossz DESC LIMIT 5;
14,
SELECT filmek.filmcim, filmek.mufaj FROM filmek
ORDER BY filmek.hossz LIMIT 10;
