SELECT alloviz.nev ,alloviz.terulet
FROM alloviz
WHERE alloviz.nev LIKE "morotva%"
order by alloviz.terulet DESC;



SELECT alloviz.terulet /93036.AS vizfelulet_aranya
From alloviz



SELECT alloviz.nev, alloviz.tipus, alloviz.terulet
From alloviz;
WHERE alloviz.terulet BETWEEN 3 AND 10
AND alloviz.vizgyujto >= 10*alloviz.terulet;



SELECT alloviz.nev, COUNT(helykapcs.gpsid) AS darab
FROM alloviz, helykapcs
WHERE alloviz.id=helykapcs.allovizid
GROUP BY alloviz.id , alloviz.nev
HAVING COUNT(helykapcs.gpsid)>=3;



SELECT alloviz.nev
FROM alloviz
WHERE id IN(
    SELECT top 1 h1.allovizid FROM telepulesgps AS g1,
    helykapcs as h1, telepulesgps AS g2,
    helykapcs AS h2
    WHERE g1.id = h1.gpsid and g2.id =h2.gpsid and h1.allovizid=h2.allovizid
    ORDER BY g1.hosszusag=g2.hosszusag DESC;



SELECT alloviz.nev, terulet, telepulesgps.nev
FROM alloviz, helykapcs, telepulesgps
WHERE alloviz.id=allovizid And telepulesgps.id=gpsid And
allovizid IN (
    SELECT helykapcs.allovizid FROM helykapcs
    GROUP BY helykapcs.allovizid
    HAVING COUNT(helykapcs.gpsid)=1
    And
gpsid IN (
    SELECT helykapcs.gpsid FROM helykapcs 
    GROUP BY helykapcs.gpsid
    HAVING COUNT (helykapcs.allovizid)=1);
