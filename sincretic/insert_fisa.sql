DELIMITER $$
CREATE PROCEDURE insert_fisa(
	IN id_pacient mediumint unsigned,
	IN data_intocmirii date
)
BEGIN 
	INSERT INTO fise(fise.id_pacient, fise.data_intocmirii)
    VALUES(id_pacient, data_intocmirii);
END $$
DELIMITER ;