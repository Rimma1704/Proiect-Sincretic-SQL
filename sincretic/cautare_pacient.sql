DELIMITER $$
CREATE PROCEDURE cautare_pacient (
	IN nume varchar(20),
    IN prenume varchar(20)
)
BEGIN 
	SELECT p.id_fisa, p.nume, p.prenume, p.data_nasterii, p.nr_telefon, p.adresa
    FROM 
		pacienti p
	INNER JOIN 
		fise f USING(id_pacient)
    WHERE p.nume = nume AND p.prenume = prenume;
END $$
DELIMITER ;
    
	