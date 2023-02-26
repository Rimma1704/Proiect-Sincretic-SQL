DELIMITER $$
CREATE PROCEDURE calcul_salarii()
BEGIN
    DECLARE n INT DEFAULT 0;
	DECLARE i INT DEFAULT 0;
    DECLARE id_medic mediumint unsigned DEFAULT 0;
    DECLARE salariul float(7,2) DEFAULT 0;
    DECLARE spor_calculat float(7,2) DEFAULT 0;
    DECLARE salariul_brut float(7,2) DEFAULT 0;
    DECLARE CAS float(7,2) DEFAULT 0;
    DECLARE CASS float(7,2) DEFAULT 0;
	DECLARE DP float(7,2) DEFAULT 0;
    DECLARE impozit_venit float(7,2) DEFAULT 0;
    DECLARE CAM float(7,2) DEFAULT 0;
    DECLARE salariu_net float(7,2) DEFAULT 0;
	SET n = (SELECT COUNT(*) FROM medici);
	SET i=0;
    WHILE i < n DO 
		SET id_medic = (SELECT id_medic FROM medici LIMIT i,1);
        SET salariul = (SELECT salariul FROM medici LIMIT i,1); 
        CALL calcul_spor(id_medic, @a);
        SET spor_calculat = @a;
        SET salariul_brut = salariul + spor_calculat;
        SET CAS = (salariul_brut * 0.25);
        SET CAS = (salariul_brut * 0.1);
        SET DP = IF(salariul < 1950, 510, 0);
        SET impozit_venit = ((salariul_brut - CAS - CASS) - DP) * 0.1;
        SET CAM = salariul_brut * 0.0225;
        SET salariu_net = (salariul_brut - CAS - CASS) - impozit_venit;
		INSERT INTO fluturasi_salariu(fluturasi_salariu.id_medic, 
									fluturasi_salariu.salariul_incadrare, 
									fluturasi_salariu.sporuri, 
                                    fluturasi_salariu.cas, 
                                    fluturasi_salariu.cass, 
                                    fluturasi_salariu.deduceri_personale, 
                                    fluturasi_salariu.impozit_venit, 
                                    fluturasi_salariu.cam, 
                                    fluturasi_salariu.salariul_net, 
                                    fluturasi_salariu.data_emitere)
		VALUES(id_medic,
				salariul,
                spor_calculat,
                CAS,
                CASS,
                DP,
                impozit_venit,
                CAM,
                salariu_net,
                CURRENT_DATE());
		SET i = i + 1;
    END WHILE;
END $$
DELIMITER ;