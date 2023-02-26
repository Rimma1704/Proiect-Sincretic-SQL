DELIMITER $$
CREATE PROCEDURE calcul_sporuri()
BEGIN
	SET SQL_SAFE_UPDATES = 0;
    IF DAYOFMONTH(NOW()) = 1 THEN
		UPDATE fluturasi_salariu fs
		INNER JOIN
		(SELECT id_fluturas_salariu
			FROM 
				medici m
			INNER JOIN 
				fluturasi_salariu USING(id_medic)
			INNER JOIN 
				consultatii c USING(id_medic)
			WHERE MONTH(NOW()) = MONTH(c.data_consultatie) AND YEAR(NOW()) = YEAR(c.data_consultatie)
			GROUP BY id_fluturas_salariu
			HAVING COUNT(id_medic) < 10) aux ON(fs.id_fluturas_salariu = aux.id_fluturas_salariu)
		SET sporuri = 0;
    
		UPDATE fluturasi_salariu fs
		INNER JOIN
		(SELECT id_fluturas_salariu
			FROM 
				medici m
			INNER JOIN 
				fluturasi_salariu USING(id_medic)
			INNER JOIN 
				consultatii c USING(id_medic)
			WHERE MONTH(NOW()) = MONTH(c.data_consultatie) AND YEAR(NOW()) = YEAR(c.data_consultatie)
			GROUP BY id_fluturas_salariu
			HAVING COUNT(id_medic) >= 10 AND COUNT(id_medic) < 20) aux ON(fs.id_fluturas_salariu = aux.id_fluturas_salariu)
		SET sporuri = fs.salariul_incadrare * 0.05;
		
		UPDATE fluturasi_salariu fs
		INNER JOIN
		(SELECT id_fluturas_salariu
			FROM 
				medici m
			INNER JOIN 
				fluturasi_salariu USING(id_medic)
			INNER JOIN 
				consultatii c USING(id_medic)
			WHERE MONTH(NOW()) = MONTH(c.data_consultatie) AND YEAR(NOW()) = YEAR(c.data_consultatie)
			GROUP BY id_fluturas_salariu
			HAVING COUNT(id_medic) >= 20 AND COUNT(id_medic) < 30) aux ON(fs.id_fluturas_salariu = aux.id_fluturas_salariu)
		SET sporuri = fs.salariul_incadrare * 0.1;
		
		UPDATE fluturasi_salariu fs
		INNER JOIN
		(SELECT id_fluturas_salariu
			FROM 
				medici m
			INNER JOIN 
				fluturasi_salariu USING(id_medic)
			INNER JOIN 
				consultatii c USING(id_medic)
			WHERE MONTH(NOW()) = MONTH(c.data_consultatie) AND YEAR(NOW()) = YEAR(c.data_consultatie)
			GROUP BY id_fluturas_salariu
			HAVING COUNT(id_medic) >= 30 AND COUNT(id_medic) < 40) aux ON(fs.id_fluturas_salariu = aux.id_fluturas_salariu)
		SET sporuri = fs.salariul_incadrare * 0.15;
		
		UPDATE fluturasi_salariu fs
		INNER JOIN
		(SELECT id_fluturas_salariu
			FROM 
				medici m
			INNER JOIN 
				fluturasi_salariu USING(id_medic)
			INNER JOIN 
				consultatii c USING(id_medic)
			WHERE MONTH(NOW()) = MONTH(c.data_consultatie) AND YEAR(NOW()) = YEAR(c.data_consultatie)
			GROUP BY id_fluturas_salariu
			HAVING COUNT(id_medic) >= 40) aux ON(fs.id_fluturas_salariu = aux.id_fluturas_salariu)
		SET sporuri = fs.salariul_incadrare * 0.2;
        
    END IF;
    SET SQL_SAFE_UPDATES = 1;
END $$
DELIMITER ;