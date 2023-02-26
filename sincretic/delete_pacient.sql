DELIMITER $$
CREATE PROCEDURE delete_pacient(
	IN id_to_delete mediumint unsigned
) 
BEGIN
	DELETE p
    FROM pacienti p
    WHERE p.id_pacient = id_to_delete;
END $$
DELIMITER ;