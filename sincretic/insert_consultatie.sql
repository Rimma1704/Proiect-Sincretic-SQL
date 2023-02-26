DELIMITER $$
CREATE PROCEDURE insert_consultatie(
	IN id_fisa mediumint unsigned,
    IN id_medic mediumint unsigned,
    IN data_consultatie datetime,
    IN observatii text
)
BEGIN 
	INSERT INTO consultatii(consultatii.id_fisa,
						    consultatii.id_medic,
                            consultatii.data_consultatie,
                            consultatii.observatii)
    VALUES(id_fisa, id_medic, data_consultatie, observatii);
END $$
DELIMITER ;