DELIMITER $$
CREATE PROCEDURE pacienti_neachitati()
BEGIN
	SELECT c.data_consultatie, CONCAT(p.nume, ' ', p.prenume) AS pacient , p.nr_telefon, p.adresa,
		(c.cost_total - c.cost_achitat) AS de_achitat
    FROM 
		fise f
	INNER JOIN
		pacienti p USING(id_pacient)
	INNER JOIN
		consultatii c USING(id_fisa)
	WHERE (c.cost_total - c.cost_achitat) > 0;
END $$
DELIMITER ;