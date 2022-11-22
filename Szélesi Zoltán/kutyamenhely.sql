DROP DATABASE IF EXISTS Kutlya menhely;
CREATE DATABASE menhely;
  USE ;
  
  DROP TABLE IF EXISTS Kutya;
  
  CREATE TABLE szgk(
      id INT, 
      tipus VARCHAR(20), 
      modell VARCHAR(20), 
      rendszam VARCHAR(15), 
      ajtok_szama INT,
      gyartas_eve DATE
  );
  
  INSERT INTO szgk (id, tipus, modell, rendszam, ajtok_szama, gyartas_eve)
  VALUES(10, 'Opel', 'Corsa C', 'AAA123', 4, '2002-10-03'); 