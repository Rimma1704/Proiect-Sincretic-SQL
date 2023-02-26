DELIMITER $$
CREATE PROCEDURE delete_interventie(
	IN id_to_delete mediumint unsigned
)
BEGIN
	DELETE i
    FROM interventii i
    WHERE i.id_interventie = id_to_delete;
END $$
DELIMITER ;