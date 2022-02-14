/*CRUD Create | Read | Update | Delete */

-- CREATE siehe 04_ ...ALTER

SELECT * FROM boo.cats;

/* UPDATE --> Änderung(en) in bestehender Tab. */
UPDATE boo.cats SET cat_name = "Alonzo" WHERE id = 2;
UPDATE boo.cats SET fur_color = "grey" WHERE id = 3;

/* READ - SELECT : NEUE Ergebnistabelle wird erstellt */
SELECT * FROM boo.cats; -- gesamte Tabelle
SELECT cat_name FROM boo.cats; -- einzelnes Feld
SELECT cat_name, age FROM boo.cats; -- kombinierte Felder 
SELECT cat_name AS "Katzen", age AS "Alter" FROM boo.cats; -- Felder / neue Namen