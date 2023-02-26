DELIMITER $$
CREATE PROCEDURE insert_fluturas_salariu(
	IN id_medic mediumint unsigned,
    IN salariul_incadrare float(7,2),
    IN data_emitere datetime
)
BEGIN 
	INSERT INTO fluturasi_salariu(fluturasi_salariu.id_medic,
						fluturasi_salariu.salariul_incadrare,
                        fluturasi_salariu.data_emitere)
	VALUES(id_medic, salariul_incadrare, data_emitere);
END $$
DELIMITER ;