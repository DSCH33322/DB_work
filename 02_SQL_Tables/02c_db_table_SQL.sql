/* --------- Strukturen ------- */
/* Tabelle mit id als PRIMARY KEY --> Keine Dublikate moeglich
AUTO Increment  */

/* DB boo löschen, falls vorhanden */
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden */
CREATE DATABASE IF NOT EXISTS boo;


/* DB auswählen */
USE boo;

CREATE TABLE IF NOT EXISTS boo.test
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(20) NOT NULL DEFAULT "TBA",
	age INT NOT NULL DEFAULT 0


);

/* Alle Tabellenm in der DB anzeigen */
SHOW TABLES;

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.test;

/* ----- Daten ----- */
INSERT INTO boo.test(name,age) VALUES ("Grizabella",29);
INSERT INTO boo.test(name,age) VALUES ("Alonzo",35);
INSERT INTO boo.test(name,age) VALUES ("Alonzo",31);
INSERT INTO boo.test(name,age) VALUES ("Alonzo",25);
INSERT INTO boo.test(name,age) VALUES ("Maxine",25);


/* Inhalte der Tabelle anzeigen */
SELECT * FROM boo.test;




