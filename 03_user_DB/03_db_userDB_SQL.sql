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
	family_Name VARCHAR(20) NOT NULL,
	first_Name VARCHAR(20) NOT NULL
);

/* Struktur*/
DESCRIBE boo.users;

/* Daten */
INSERT INTO boo.users(user_Name,family_Name,first_Name) VALUES ("max","Max","Mütze");
INSERT INTO boo.users(user_Name,family_Name,first_Name) VALUES ("maxine","Maxine","Mützerich");
INSERT INTO boo.users(user_Name,family_Name,first_Name) VALUES ("maxl","Max","Mützerich");
/* Inhalte : Ergebnistabelle */
SELECT * FROM boo.users;




