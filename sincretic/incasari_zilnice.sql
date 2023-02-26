DELIMITER $$
CREATE PROCEDURE incasari_zilnice(
	IN data_solicitata date
)
BEGIN 
	SELECT SUM(cost_achitat) AS total
	FROM consultatii
	WHERE DATE(data_consultatie) = data_solicitata;
END $$
DELIMITER ;