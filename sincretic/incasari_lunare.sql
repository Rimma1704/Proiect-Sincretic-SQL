DELIMITER $$
CREATE PROCEDURE incasari_lunare(
	IN data_solicitata date
    )
BEGIN 
	SELECT SUM(cost_achitat) AS total
	FROM consultatii
	WHERE MONTH(data_solicitata) = MONTH(DATE(data_consultatie)) AND YEAR(data_solicitata) = YEAR(DATE(data_consultatie));
END $$
DELIMITER ;