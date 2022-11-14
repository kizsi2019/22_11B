DROP DATABASE IF EXISTS kutyamenhely;
CREATE DATABASE kutyamenhely;
USE kutyamenhely;

DROP TABLE IF EXISTS kutyak;

CREATE TABLE kutyak(
id INT PRIMARY KEY AUTO_INCREMENT,
nev VARCHAR(30) NOT NULL,
kor int CHECK (kor <=30),
nem VARCHAR(15) DEAFAULT 'kan',
megjegyzes VARCHAR(50)

);

INSTERT INTO kutyak(nev,kor,megjegyzes)
VALUES('Ubul',3,'barátságos ember szerető kutya');


INSTERT INTO kutyak(nev,kor,megjegyzes)
VALUES('Devil',7,'Játékos kutya'); 


INSTERT INTO kutyak(nev,kor,megjegyzes)
VALUES('Puf',2,'Lusta egy kutya'), 
