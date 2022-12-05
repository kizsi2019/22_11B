4. SELECT Count(keverekid) AS Darab
FROM osszetevo, kapcsolat WHERE id = osszetevoid
GROUP BY keverek.nev
HAVING nev='bazsalikom';

------------------------------------------
5.SELECT keverek.nev, Count(osszetevoid) AS Összetevők száma
FROM keverek, kapcsolat WHERE id = keverekid
GROUP BY keverek.nev
ORDER BY 2 DESC;

------------------------------------------
6.SELECT keverek.nev
FROM keverek
WHERE id NOT in
(
SELECT keverekid
FROM osszetevo, kapcsolat WHERE id = osszetevoid AND keverek.nev Like "*bors"
);

-------------------------------------------
7.SELECT keverek.nev
FROM keverek WHERE id in (SELECT keverekid
FROM osszetevo, kapcsolat WHERE osszetevoid = id AND nev ="paradicsom")
AND id in (SELECT keverekid FROM osszetevo, kapcsolat
WHERE osszetevoid = id AND keverek.nev="chili");
