DELIMITER $$
CREATE PROCEDURE insert_interventie(
    IN tip varchar(100),
    IN cost_materiale float (7,2),
    IN tarif float (7,2)
)
BEGIN 
	INSERT INTO interventii (interventii.tip,
                            interventii.cost_materiale, 
                            interventii.tarif)
   VALUES(tip, cost_materiale, tarif);
END $$
DELIMITER ;
