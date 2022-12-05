2,feladat
SELECT keverek.tomeg, keverek.nev, keverek.ar
FROM keverek
WHERE NOT keverek.tomeg = 20
ORDER BY keverek.tomeg DESC;
3,feladat
SELECT keverek.nev, keverek.ar*1000/keverek.tomeg AS per_kilogram
FROM keverek
ORDER BY 2 DESC
LIMIT 1;
4,feladat

5,feladat

6,feladat

7,feladat

8,feladat
