DELIMITER $$
CREATE PROCEDURE programare_pacient(
	IN data_solicitata date, 
    IN ora_solicitata datetime,
    IN medic_nume varchar(20),
    IN medic_prenume varchar(20)
)
BEGIN
	SELECT * 
    FROM 
		consultatii
	INNER JOIN 
		medici USING(id_medic)
	WHERE data_solicitata = DATE(data_consultatie) AND ora_solicitata = data_consultatie
    AND nume = medic_nume AND prenume = medic_prenume;
END $$
DELIMITER ;