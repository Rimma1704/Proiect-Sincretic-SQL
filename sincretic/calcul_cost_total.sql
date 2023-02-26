DELIMITER $$
CREATE PROCEDURE calcul_cost_total(
	IN id_solicitat mediumint unsigned
)
BEGIN 
	DECLARE cost float(7,2) DEFAULT 0;
	SELECT SUM(i.cost_materiale + i.tarif)
    INTO cost
    FROM 
		consultatie_interventie ci
	INNER JOIN
		interventii i USING(id_interventie)
	WHERE id_solicitat = ci.id_consultatie;
    UPDATE consultatii c
    SET c.cost_total = cost
    WHERE id_solicitat = c.id_consultatie;
END $$
DELIMITER ;