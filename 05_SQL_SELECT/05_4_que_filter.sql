/* QUERIES Filtern mit WHERE */

/* 
    Eingrenzen/Filtern WHERE & AND / OR etc.
    Eingrenzen/Filtern WHERE & LIKE + Parameter 
    Eingrenzen/Filtern WHERE &
    Eingrenzen/Filtern WHERE &
    Eingrenzen/Filtern WHERE &
    
*/



-- Scharfe Suche
/*
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
*/


SELECT
    ticker AS "SYM",
    c_name AS "Unternehmen",
    industry AS "Branche"
FROM stocks.ccc

-- scharfe Suche nach Strings
#WHERE industry = "Media"

-- unschärfere Suche --
-- Branchenname beginnt mit ... , dahinter beliebige Chars
#WHERE industry LIKE "Air%"
-- Branchenname endet mit ... , davor beliebige Chars
#WHERE industry LIKE "%ment"
-- Branchenname enthaelt ...
#WHERE industry LIKE "%ood%"

-- Branchenname endet/beginnt mit ... , danach/davor/inmitten genau _ Char
#WHERE industry LIKE "__dia"
#WHERE industry LIKE "Med__"
#WHERE industry LIKE "M___a"
#WHERE industry LIKE "_ir%"
#WHERE industry LIKE "_ood%"

#WHERE industry LIKE "%ment"
#WHERE industry LIKE "%ment" AND industry NOT LIKE "%ipment"
WHERE industry LIKE "%ment" AND industry NOT LIKE "%ipment" AND industry NOT LIKE "%tain"

ORDER BY industry ASC
LIMIT 20
;