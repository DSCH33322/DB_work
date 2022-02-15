/* QUERIES Basic */

/*
Felder abfragen
Felder kombinieren 
Ausgabe beschränken
*/

-- Abfrage aller Spalten oder Tab
#SELECT * FROM stocks.ccc;

-- Begrenzung: LIMIT
-- Abfrage eines Feldes oder einer Feld-Kombi m. Umbenennung (Alias)
-- Kombination aus mehreren Feldern in neues Feld 
-- hier mit Verknüpfung CONCAT() // String-Fkt. 
SELECT
    ticker AS "SYM",
	price AS "Kurs in $",
    c_name AS "Unternehmen",
	#industry AS "Branche"
	CONCAT(sector, "|", industry) AS "Operations"
FROM stocks.ccc
LIMIT 10 -- X Zeilen ab 0
#LIMIT 200,10
;

