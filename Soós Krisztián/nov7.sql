SELECT dalok.cim, eloadok.nev 
FROM dalok, eloadok
WHERE dalok.eloadoid = eloadok.eloadoid AND eloadok.nev = 'Queen';



SELECT lista.ev, dalok.cim, eloadok.nev
FROM lista, dalok, eloadok 
WHERE lista.ev = '2010' AND lista.helyezes = 1 AND lista.dalid = dalok.dalid AND dalok.dalid = eloadok.eloadoid;


SELECT dalok.cim, eloadok.nev FROM dalok, eloadok WHERE eloadok.nev LIKE "B%" AND dalok.eloadoid = eloadok.eloadoid;