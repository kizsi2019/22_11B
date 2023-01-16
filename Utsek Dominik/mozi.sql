1. feladat
INSERT INTO vetites (azon, mozinev, fkod)
VALUES (365, Művész, 2)

2. feladat
UPDATE filmek
SET hossz WHERE = 'Álmodozók%', hossz = 120

3.
DELETE Film FROM filmek;

4.
SELECT * FROM  filmek;

5.
SELECT * FROM filmek
ORDER BY hossz;

6.
SELECT * FROM filmek
ORDER BY hossz DESC;

7.
SELECT filmcim, hossz, szarmazas
FROM filmek WHERE szarmazas LIKE '%amerika%';

8.
SELECT filmcim, mufaj, szinkron FROM filmek 
WHERE szinkron LIKE 'mb';

9.
SELECT mozinev from vetites 
ORDER BY mozinev ASC;

10.
SELECT filmcim, szarmazas FROM filmek WHERE szarmazas LIKE '%angol%';

11.
SELECT filmcim, hossz FROM filmek WHERE filmcim LIKE 'b%';

12.
 SELECT filmcim, mufaj, hossz
 FROM filmek WHERE hossz BETWEEN 90 and 120;

13.
SELECT filmcim, hossz FROM filmek ORDER BY hossz DESC LIMIT 5;

14.
SELECT filmcim, hossz 
FROM filmek ORDER BY hossz LIMIT 10;

