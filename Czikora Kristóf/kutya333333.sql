DROP DATABASE IF EXISTS kutyamenhely;
  CREATE DATABASE kutyamenhely;
  USE kutyamenhely;
  
  DROP TABLE IF EXISTS kutya;
  
  CREATE TABLE menhely(
      id INT PRIMARY KEY AUTO_INCREMENT, 
      nev VARCHAR(30) NOT NULL, 
      kor int CHECK(kor=30), 
      nem VARCHAR(15) DEDAULT'kan', 
      megjegyzés VARCHAR(50)
  );
  
  INSERT INTO szgk (nev, kor, megjegyzés)
  VALUES('Anton', '12', 'barátságos állat',
); 


   INSERT INTO kutya (nev, kor, megjegyzés)
   VALUES('Béla', '2', 'szőrös',
);
  