DELIMITER $$
CREATE PROCEDURE insert_pacient(
    IN nume_utilizator varchar(20),
    IN parola varchar(20),
    IN cnp varchar(13),
    IN nume varchar(20),
    IN prenume varchar(20),
    IN data_nasterii date,
    IN adresa varchar(40),
    IN nr_telefon varchar(15)
)
BEGIN 
	INSERT INTO pacienti(pacienti.nume_utilizator, 
						pacienti.parola, 
                        pacienti.cnp, 
                        pacienti.nume, 
                        pacienti.prenume, 
                        pacienti.data_nasterii, 
                        pacienti.adresa, 
                        pacienti.nr_telefon)
    VALUES(nume_utilizator, parola, cnp, nume, prenume, data_nasterii, adresa, nr_telefon);
END $$
DELIMITER ;
