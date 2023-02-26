CREATE TABLE `pacienti` (
    `id_pacient` mediumint  unsigned AUTO_INCREMENT PRIMARY KEY NOT NULL ,
    `nume_utilizator` varchar(20) UNIQUE NOT NULL ,
    `parola` varchar(20)  NOT NULL ,
    `cnp` varchar(13)  NOT NULL ,
    `nume` varchar(20)  NOT NULL ,
    `prenume` varchar(20)  NOT NULL ,
    `data_nasterii` date  NOT NULL ,
    `adresa` varchar(40)  NOT NULL ,
    `nr_telefon` varchar(15)  NOT NULL 
) ENGINE=INNODB;

CREATE TABLE `fise` (
    `id_fisa` mediumint  unsigned AUTO_INCREMENT PRIMARY KEY NOT NULL ,
    `id_pacient` mediumint  unsigned UNIQUE NOT NULL ,
    `data_intocmirii` date  NOT NULL,
    CONSTRAINT fk_pacient
    FOREIGN KEY (id_pacient)
		REFERENCES pacienti(id_pacient)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE=INNODB;

CREATE TABLE `medici` (
    `id_medic` mediumint  unsigned AUTO_INCREMENT PRIMARY KEY NOT NULL ,
    `nume_utilizator` varchar(20) UNIQUE NOT NULL ,
    `parola` varchar(20)  NOT NULL ,
    `CNP` varchar(13)  NOT NULL ,
    `nume` varchar(20)  NOT NULL ,
    `prenume` varchar(20)  NOT NULL ,
    `data_nasterii` date  NOT NULL ,
    `gen` char  NOT NULL ,
    `data_angajare` date  NOT NULL,
    `salariul` float(7,2)  NOT NULL,
    `bool_angajat` tinyint(1) unsigned NOT NULL DEFAULT 1
) ENGINE=INNODB;

CREATE TABLE `fluturasi_salariu`(
	`id_fluturas_salariu` mediumint  unsigned AUTO_INCREMENT PRIMARY KEY NOT NULL ,
    `id_medic` mediumint unsigned NOT NULL ,
	`salariul_incadrare` float(7,2)  NOT NULL,
    `sporuri` float(7,2)  NOT NULL DEFAULT 0,
    `cas` float(7,2)  NOT NULL DEFAULT 0,
    `cass` float(7,2)  NOT NULL DEFAULT 0,
    `deduceri_personale` float(7,2)  NOT NULL DEFAULT 0,
    `impozit_venit` float(7,2) NOT NULL DEFAULT 0,
    `cam` float(7,4)  NOT NULL DEFAULT 0,
    `salariul_net` float(7,2)  NOT NULL DEFAULT 0,
    `data_emitere` datetime,
    CONSTRAINT fk_medic
    FOREIGN KEY (id_medic)
		REFERENCES medici(id_medic)
		ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE=INNODB;

CREATE TABLE `consultatii` (
    `id_consultatie` mediumint  unsigned AUTO_INCREMENT PRIMARY KEY NOT NULL ,
    `id_fisa` mediumint unsigned NOT NULL ,
    `id_medic` mediumint unsigned NOT NULL ,
    `data_consultatie` datetime  NOT NULL ,
    `cost_total` float(7,2)  NOT NULL DEFAULT 0,
	`cost_achitat` float(7,2)  NOT NULL DEFAULT 0,
    `observatii` text(1000)  NOT NULL,
    CONSTRAINT fk_fisa_consultatie
    FOREIGN KEY (id_fisa)
		REFERENCES fise(id_fisa)
        ON UPDATE CASCADE
        ON DELETE CASCADE ,
	CONSTRAINT fk_medic_consultatie
    FOREIGN KEY (id_medic)
		REFERENCES medici(id_medic)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE=INNODB;

CREATE TABLE `interventii` (
    `id_interventie` mediumint  unsigned AUTO_INCREMENT PRIMARY KEY NOT NULL ,
    `tip` varchar(100)  NOT NULL ,
    `cost_materiale` float(7,2)  NOT NULL ,
    `tarif` float(7,2)  NOT NULL 
) ENGINE=INNODB;

CREATE TABLE `consultatie_interventie` (
	`id_jonction` bigint unsigned AUTO_INCREMENT PRIMARY KEY NOT NULL ,
    `id_consultatie` mediumint unsigned NOT NULL ,
    `id_interventie` mediumint unsigned NOT NULL ,
    CONSTRAINT fk_consultatie
    FOREIGN KEY (id_consultatie)
		REFERENCES consultatii(id_consultatie)
        ON UPDATE CASCADE
        ON DELETE CASCADE ,
	CONSTRAINT fk_interventie
    FOREIGN KEY (id_interventie)
		REFERENCES interventii(id_interventie)
		ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE=INNODB;

CREATE TABLE `chitante` (
	`id_chitanta` int unsigned AUTO_INCREMENT PRIMARY KEY NOT NULL ,
    `id_consultatie` mediumint unsigned NOT NULL,
    `data_emiterii` datetime NOT NULL ,
    `suma` float(7,2)  NOT NULL ,
    CONSTRAINT fk_consultatie_chitanta
    FOREIGN KEY (id_consultatie)
		REFERENCES consultatii(id_consultatie)
        ON UPDATE CASCADE
        ON DELETE CASCADE
) ENGINE=INNODB;