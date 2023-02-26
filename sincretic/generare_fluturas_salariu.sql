DELIMITER $$
CREATE PROCEDURE genereaza_fluturas_salariu(
	IN id_medic mediumint unsigned,
    IN data_solicitata datetime
)
BEGIN
	SELECT fs.id_medic, fs.salariul_incadrare, fs.sporuri, (fs.salariul_incadrare + fs.sporuri) AS salariul_brut,
		(fs.salariul_incadrare + fs.sporuri) AS total_venituri, fs.cas, fs.cass, fs.impozit_venit, 
        (fs.cas + fs.cass + fs.impozit_venit) AS taxe_angajat, fs.cam AS taxe_angajator, fs.salariul_net
    FROM 
		fluturasi_salariu fs
	WHERE fs.id_medic = id_medic AND MONTH(data_solicitata) = MONTH(fs.data_solicitata) 
    AND YEAR(data_solicitata) = YEAR(fs.data_solicitata);
END $$
DELIMITER ;