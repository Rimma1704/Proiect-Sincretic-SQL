DELIMITER $$
CREATE PROCEDURE insert_consultatie_interventie(
	IN id_consultatie mediumint unsigned,
    IN id_interventie mediumint unsigned
)
BEGIN 
	INSERT INTO consultatie_interventie(consultatie_interventie.id_consultatie, 
										consultatie_interventie.id_interventie)
	VALUES(id_consultatie, id_interventie);
END $$
DELIMITER ;