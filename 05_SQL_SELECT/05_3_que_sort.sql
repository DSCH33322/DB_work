/* QUERIES Sortierung */

-- ASC / DESC

SELECT
    ticker AS "SYM",
    c_name AS "Unternehmen",
	price AS "Kurs in $",
    no_yrs AS " Jahre ++",   
	#industry AS "Branche"
	CONCAT(sector, " | ", industry) AS "Operations"
FROM stocks.ccc
-- Sortierung 
#ORDER BY ticker ASC -- SYM, alphabetisch, aufsteigend
#ORDER BY ticker DESC -- SYM, alphabetisch, absteigend 

#ORDER BY price ASC -- Kurs, numerisch beginnend mit der günstigsten Aktie 
#ORDER BY price DESC -- Kurs, numerisch beginnend mit der teuersten Aktie 
#ORDER BY no_yrs DESC -- numerisch, Aktien mit der längsten Div.-Hostorie

#ORDER BY sector DESC,industry ASC --  Kombination ASC / DESC alphabetisch
ORDER BY no_yrs DESC,sector ASC -- Kombination ASC / DESC alphabetisch / numerisch 


-- Begrenzung
LIMIT 60 -- X Zeilen ab 0
#LIMIT 200,10
;