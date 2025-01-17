/* DB */
DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;



/* Tabelle cats*/



DROP TABLE IF EXISTS boo.cats;

CREATE TABLE IF NOT EXISTS boo.cats
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cat_Name VARCHAR(20) NOT NULL,
    fur_Color VARCHAR(20) NOT NULL,
    age INT NOT NULL


);

DESCRIBE boo.cats;

-- CSV-Datei parsen
LOAD DATA LOCAL INFILE "04_SQL_Dataimport/data/cats_export_no_id.csv"
INTO TABLE boo.cats
FIELDS TERMINATED BY ","
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
(cat_Name,fur_Color,age) -- Daten in die richtigen Felder sortieren
;

SELECT * FROM boo.cats;