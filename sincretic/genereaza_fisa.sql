DELIMITER $$
CREATE PROCEDURE genereaza_fisa(
	IN id_solicitat mediumint unsigned
)
BEGIN 
	SELECT f.id_fisa, f.data_intocmirii, p.nume, p.prenume, p.adresa, p.telefon
    FROM 
		pacienti p
	INNER JOIN 
		fise f USING(id_pacient)
	WHERE id_solicitat = p.id_pacient;
END $$
DELIMITER ;