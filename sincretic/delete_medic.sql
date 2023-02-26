DELIMITER $$
CREATE PROCEDURE delete_medic(
	IN id_to_delete mediumint unsigned
)
BEGIN
	DELETE m
    FROM medici m
    WHERE m.id_medic = id_to_delete;
END $$
DELIMITER ;