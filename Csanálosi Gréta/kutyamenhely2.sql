DROP DATABASE IF EXISTS kutyamnehely;
CREATE DATABASE kutyamenhely;
USE kutyamenhely;

CREATE TABLE kutyak(
      id INT PRIMARY KEY AUTO_INCREMENT, 
      nev VARCHAR(30) NOT NULL, 
      kor int CHECK (kor<=30), 
      nem VARCHAR(15) DEFAULT 'kan', 
      megjegyzes VARCHAR(500)
     

);
  
INSERT INTO kutyak (nev, kor,megjegyzes)
VALUES( 'Bodri', 12,'barátságos állat'); 

INSERT INTO kutyak (nev, kor,megjegyzes)
VALUES( 'Foxi',1,'játékos'); 