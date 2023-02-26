DELIMITER $$
CREATE PROCEDURE calcul_spor(
	IN id_solicitat mediumint unsigned,
    OUT spor_calculat float(7,2)
)
BEGIN
	DECLARE nr_consultatii bigint;
    DECLARE salariul_incadrare float(7,2);
    SET salariul_incadrare = (SELECT salariul FROM medici WHERE id_medic = id_solicitat);
    SET nr_consultatii = (SELECT COUNT(*) FROM consultatii 
						WHERE consultatii.id_medic = id_medic AND MONTH(CURRENT_DATE()) = MONTH(consultatii.data_consultatie)
						AND YEAR(CURRENT_DATE()) = YEAR(consultatii.data_consultatie));
	SET spor_calculat = IF(nr_consultatii >= 10 AND nr_consultatii < 20, salariul_incadrare * 0.05, IF(nr_consultatii >= 20 AND nr_consultatii < 30, salariul_incadrare * 0.1, IF(nr_consultatii >= 30 AND nr_consultatii < 40, salariul_incadrare * 0.15, IF(nr_consultatii >= 40, salariul_incadrare * 0.2, 0))));
END $$
DELIMITER ;