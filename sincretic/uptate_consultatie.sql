DELIMITER $$
CREATE PROCEDURE update_consultatie(
	IN id_consultatie mediumint unsigned,
	IN cost_total float(7,2),
    IN cost_achitat float(7,2)
)
BEGIN
	update consultatie c
    SET 
		c.cost_total = cost_total,
        c.cost_achitat = cost_achitat
	WHERE c.id_consultatie = id_consultatie;
END $$
DELIMITER ;