DELIMITER $$
CREATE PROCEDURE insert_chitanta(
	IN id_consultatie mediumint unsigned,
    IN data_emiterii datetime,
    IN suma float(7,2)
)
BEGIN 
	INSERT INTO chitante(chitante.id_consultatie,
						chitante.data_emiterii,
                        chitante.suma)
	VALUES(id_consultatie, data_emiterii, suma);
END $$
DELIMITER ;