1. feladat

INSERT INTO vetites (azon, mozinev, fkod)
VALUES (356, Művész, 2)

2.feladat

UPDATE `filmek` SET `hossz` = '110' WHERE `filmek`.`fkod` = 3

3.feadat

DELETE FROM filmek WHERE `filmek`.`fkod` = 155"?

4.feladat

SELECT filmcim, mufaj, hossz FROM filmek;

5.feladat

SELECT filmcim, szarmazas FROM filmek ORDER BY szarmazas ASC;

6.feladat

SELECT filmcim, hossz FROM filmek ORDER BY hossz DESC;

7.feladat

SELECT filmcim, hossz, szarmazas FROM filmek WHERE szarmazas LIKE 'amerikai';

8.feladat

SELECT filmcim, mufaj, szinkron FROM filmek WHERE szinkron LIKE 'mb';

9.feladat

SELECT mozinev FROM vetites ORDER BY mozinev ASC;

10.feladat

SELECT filmcim, szarmazas FROM filmek WHERE szarmazas LIKE '%angol%';

11.feladat

SELECT filmcim, hossz FROM filmek WHERE filmcim LIKE 'B%';

12.feladat

SELECT filmcim, mufaj, hossz FROM filmek WHERE hossz BETWEEN 90 and 120;

13.feladat

SELECT filmcim, hossz FROM filmek ORDER BY hossz DESC LIMIT 5;

14.feladat

SELECT filmcim, hossz FROM filmek ORDER BY hossz LIMIT 10;