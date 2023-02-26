DELIMITER $$
CREATE PROCEDURE cautare_consultatie (
	IN data_cautata datetime
)
BEGIN 
	SELECT DATE(c.data_consultatie) AS 'data', TIME(c.data_consultatie) AS ora,
	CONCAT(p.nume, ' ', p.prenume) AS pacient, CONCAT(m.nume, ' ', m.prenume) AS medic, c.observatii, c.cost_total
    FROM 
		consultatii c
    INNER JOIN 
		fise f USING(id_fisa)
	INNER JOIN 
		pacienti p USING(id_pacient)
	INNER JOIN 
		medici m USING(id_medic)
    WHERE c.data_consultatie = data_cautata;
END $$
DELIMITER ;