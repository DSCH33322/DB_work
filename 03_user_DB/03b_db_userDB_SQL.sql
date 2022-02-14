/* USER DB Vers. 1 */

/* DB */
DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;

/* Table users */
DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	user_Name VARCHAR(20) NOT NULL UNIQUE,
    user_Pwd VARCHAR(40) NOT NULL,
	family_Name VARCHAR(20) NOT NULL,
	first_Name VARCHAR(20) NOT NULL
);

/* Struktur*/
DESCRIBE boo.users;

/* Daten */
INSERT INTO 
    boo.users(user_Name,user_Pwd,family_Name,first_Name) 
VALUES
    ("max",SHA1("1234"),"Mütze","Max"),
    ("maxine",SHA1("#7xD0"),"Mützerich","Maxine"),
    ("maxl",SHA1("user1234"),"Mützerich","Max")
;
/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;




