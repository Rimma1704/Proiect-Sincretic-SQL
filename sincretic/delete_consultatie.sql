DELIMITER $$
CREATE PROCEDURE delete_consultatie(
	IN id_to_delete mediumint unsigned
)
BEGIN
	DELETE c
    FROM consultatii c
    WHERE c.id_consultatie = id_to_delete;
END $$
DELIMITER ;