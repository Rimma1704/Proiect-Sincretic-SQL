DELIMITER $$
CREATE PROCEDURE insert_medic(
    IN nume_utilizator varchar(20),
    IN parola varchar(20),
    IN CNP varchar(13),
    IN nume varchar(20),
    In prenume varchar(20),
    IN data_nasterii date,
    IN gen char (1),
    IN data_angajare date,
    IN salariul float(7,2)
)
BEGIN 
	INSERT INTO medici (medici.nume_utilizator,
                        medici.parola,
                        medici.CNP,
                        medici.nume,
                        medici.prenume,
                        medici.data_nasterii,
                        medici.gen,
                        medici.data_angajare,
                        medici.salariul)
    VALUES(nume_utilizator, parola, CNP, nume, prenume, data_nasterii, gen, data_angajare, salariul);
END $$
DELIMITER ;
