DELIMITER $$
CREATE PROCEDURE cautare_interventie (
	IN tip_cautat varchar(100)
)
BEGIN 
	SELECT tip, cost_materiale, tarif, (cost_materiale + tarif) AS cost_total 
    FROM interventii i
    WHERE tip LIKE CONCAT('%', tip_cautat,'%');
END $$
DELIMITER ;
    
	