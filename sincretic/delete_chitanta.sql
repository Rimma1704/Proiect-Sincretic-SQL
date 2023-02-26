DELIMITER $$
CREATE PROCEDURE delete_chitanta(
	IN id_to_delete mediumint unsigned
)
BEGIN
	DELETE c
    FROM chitanta c
    WHERE c.id_chitanta = id_to_delete;
END $$
DELIMITER ;