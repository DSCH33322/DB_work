/* QUERIES Filtern mit WHERE */

/* 
    Eingrenzen/Filtern WHERE & AND / OR etc.
    Eingrenzen/Filtern WHERE & LIKE + Parameter 
    Eingrenzen/Filtern WHERE &
    Eingrenzen/Filtern WHERE &
    Eingrenzen/Filtern WHERE &
    
*/



-- Scharfe Suche

SELECT
    ticker AS "SYM",
    c_name AS "Unternehmen",
	price AS "Kurs in $",
    payouts AS "Zahlung p.a.",
    dividend AS "Dividende",
	CONCAT(sector, " | ", industry) AS "Operations"
FROM stocks.ccc
-- Einzeldaten / Strings 
#WHERE sector = "Communication Services" -- spez. Sektor
#WHERE industry = "Media" -- spez. Branche 
#WHERE payouts = 12 -- Wer zahlt monatlich?

-- Kombination durch AND  
#WHERE sector = "Communication Services" AND industry = "Entertainment"
#WHERE sector = "Communication Services" AND payouts = 12

-- Kombination durch AND und OR
#WHERE sector = "Communication Services" AND NOT (industry = "Entertainment" OR industry = "Media")

-- Kombination durch AND / NOT
WHERE sector = "Communication Services" AND NOT industry = "Media"

-- Sortierung 
ORDER BY price DESC 

-- Begrenzung
LIMIT 40
;