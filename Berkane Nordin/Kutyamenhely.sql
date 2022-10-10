DROP DATABASE IF EXISTS kutyamenhely;
CREATE DATABASE kutyamenhely;
USE kutyamenhely;
  
DROP TABLE IF EXISTS kutyak;
  
CREATE TABLE kutyak(
id INT PRIMARY KEY AUTO_INCREMENT, 
nev VARCHAR(30) NOT NULL,
kor int CHECK(kor<=30),
nem VARCHAR(15) DEFAULT 'kan',
megjegyzes VARCHAR(50)

  );
  
INSERT INTO kutyak ( nev, kor, megjegyzes,)
VALUES(Bodri, '12', 'baratsagos allat'); 
  
INSERT INTO kutyak (, nev, kor, megjegyzes)
VALUES(Foxi,'1','játékos'); 
  