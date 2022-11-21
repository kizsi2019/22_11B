
  DROP DATABASE IF EXISTS muhely;
  CREATE DATABASE muhely;
  USE muhely;
  
  DROP TABLE IF EXISTS szgk;
  
  CREATE TABLE szgk(
      id INT, 
      tipus VARCHAR(20), 
      modell VARCHAR(20), 
      rendszam VARCHAR(15), 
      ajtok_szama INT,
      gyartas_eve DATE
  );
  CREATE TABLE tulajdonsagok(
      id INT, 
      nev VARCHAR(20),
      
  INSERT INTO szgk (id, tipus, modell, rendszam, ajtok_szama, gyartas_eve)
  VALUES(10, 'Opel', 'Corsa C', 'AAA123', 4, '2002-10-03'); 
  
    
  