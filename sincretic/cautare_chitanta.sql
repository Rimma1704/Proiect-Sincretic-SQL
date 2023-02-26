DELIMITER $$
CREATE PROCEDURE cautare_chitanta(
	IN id_consultatie mediumint unsigned,
    IN data_emiterii datetime
)
BEGIN
	SELECT c.id_chitanta, c.data_emiterii, c.suma
    FROM 
		chitante c
	INNER JOIN
		consultatii con USING(id_consultatie)
    WHERE con.id_consultatie = id_consultatie AND c.data_emiterii = data_emiterii;
END $$
DELIMITER ;