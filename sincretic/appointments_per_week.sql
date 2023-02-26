DELIMITER $$
CREATE PROCEDURE appointments_per_week(
	IN required_date date
)
BEGIN
	SELECT p.nume, p.prenume, CONCAT(m.nume, ' ', m.prenume) AS medic, c.data_consultatie, DATE_FORMAT(DATE(c.data_consultatie), '%W') AS zi
    FROM 
		medici m 
	INNER JOIN 
		consultatii c USING(id_medic)
	INNER JOIN 
		fise f USING(id_fisa)
	INNER JOIN 
		pacienti p USING(id_pacient) 
    WHERE (DAYOFWEEK(DATE(c.data_consultatie)) NOT IN (7, 1) AND DATE(c.data_consultatie) >= required_date) 
    AND ((WEEKOFYEAR(required_date) = WEEKOFYEAR(DATE(c.data_consultatie)) AND DAYOFWEEK(required_date) NOT IN (7, 1)) 
	OR (DAYOFWEEK(required_date) = 7 AND WEEKOFYEAR(DATE_ADD(required_date, INTERVAL 2 DAY)) = WEEKOFYEAR(DATE(c.data_consultatie))) 
    OR (DAYOFWEEK(required_date) = 1 AND WEEKOFYEAR(DATE_ADD(required_date, INTERVAL 1 DAY)) = WEEKOFYEAR(DATE(c.data_consultatie))) );
END $$
DELIMITER ;