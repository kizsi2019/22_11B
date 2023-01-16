4.faladat SELECT COUNT(keverekid) AS Darab
FROM osszetevo,kapcsolat
WHERE osszetevo.id= kapcsolat .osszetevoid And osszetevo.nev="Bazsalikom" 

5.feladat
SELECT keverek.nev COUNT(keverek.id,) As Ősszetevők szama
from keverek, kapcsolat
WHERE id = osszetevoid
GROUP BY keverek.nev
ORDER BY 2 DESC;

6. feladat
SELECT keverek.nev
FROM keverek
WHERE id NOT IN
(
    SELECT keverekid
    FROM osszetevo,kapcsolat
    WHERE keverek.id = osszetevo.id AND keverek.nev LIKE "%bors");



7. feladat
SELECT  keverek.nev
FROM keverek
WHERE keverek.id IN (SELECT keverek.nev
                     FROM osszetevo, keverek, kapcsolat
                     WHERE kapcsolat.osszetevoid = osszetevo.id AND osszetevo.nev="paradicsom")
AND
keverek.id IN (SELECT keverek.id FROM osszetevo, kapcsolat 
where keverek.id = osszetevo.id AND nev ="%chili%"              
