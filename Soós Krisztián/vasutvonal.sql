SELECT allomasl.nev , allomas.orszag
FROM allomas
WHERE NOT allomas.orszag = "" 
ORDER BY allomas.nev;

SELECT allomasl.nev , allomas.tipus ,hely.tav
FROM allomas , hely
WHERE hely.vonalid ="80"
	AND allomas.mukodo
    AND allomas.id = hely.allomasid
ORDER BY hely.tav;

SELECT hely.vonalid, MAX(hely.tav)
FROM hely
GROUP BY hely.vonalid;



SELECT indulasi.vonalid, indulasi.nev, veg.nev
FROM ( SELECT nev, vonalid 
FROM allomas, hely 
WHERE allomas.id=allomasid AND tav =0 ) AS indulasi, 
( SELECT nev, vonalid, tav FROM allomas, hely WHERE allomas.id=allomasid ) AS veg,
( SELECT vonalid, Max(tav) AS maxtav FROM hely GROUP BY vonalid ) AS tulso 
WHERE indulasi.vonalid=veg.vonalid 
AND veg.vonalid=tulso.vonalid 
AND veg.tav =tulso.maxtav;



SELECT allomas.nev, hely.vonalid
FROM allomas, hely
WHERE allomas.id=hely.allomasid
	AND vonalid IN(
        SELECT hely.vonalid
        FROM hely, allomas
        WHERE allomas.nev="Hatvan"
        	AND hely.allomasid=allomas.id
        )
AND allomas.nev <>"Hatvan";



SELECT allomas.nev, COUNT(*)
    FROM allomas, hely
    WHERE allomas.id=hely.allomasid
    GROUP BY allomas.nev
    HAVING Count(*)>=5
    ORDER BY Count(*) DESC;




SELECT allomas.nev, hely.tav
    FROM allomas, hely
    WHERE allomas.id=hely.allomasid
      AND hely.tav>90 AND hely.tav<=100
      AND hely.vonalid="140";
