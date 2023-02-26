DELIMITER $$
CREATE PROCEDURE delete_fluturas_salariu(
	IN id_to_delete mediumint unsigned
)
BEGIN
	DELETE fs
    FROM fluturasi_salariu fs
    WHERE fs.id_fluturas_salariu = id_to_delete;
END $$
DELIMITER ;