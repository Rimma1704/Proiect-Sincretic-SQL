DELIMITER $$
CREATE PROCEDURE appointments_per_day(
	IN required_day date
)
BEGIN
	SELECT p.nume, p.prenume, CONCAT(m.nume, ' ', m.prenume) AS medic, c.data_consultatie
    FROM 
		medici m 
	INNER JOIN 
		consultatii c USING(id_medic)
	INNER JOIN 
		fise f USING(id_fisa)
	INNER JOIN 
		pacienti p USING(id_pacient)
    WHERE required_day = DATE(data_consultatie);
END $$
DELIMITER ;