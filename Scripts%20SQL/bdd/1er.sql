-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 07 Octobre 2016 à 14:36
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `darties1`
--

DELIMITER $$
--
-- Procédures
--
CREATE DEFINER=`darties1`@`localhost` PROCEDURE `maj_data` ()  BEGIN
	TRUNCATE data;
    INSERT INTO data
	SELECT 
	dwr_faits_ventes.ID_MAGASIN, 
	dwr_faits_ventes.ID_FAMILLE_PRODUIT,
	dwr_faits_ventes.ID_TEMPS, 
	dwr_faits_ventes.INDICATEUR, 
	dwr_faits_ventes.OBJECTIF,
	dwr_faits_ventes.REEL, 
	dwr_faits_ventes.DATE_MAJ, 
	dim_famille_produit.LIB_FAMILLE_PRODUIT, 
	dim_famille_produit.DATEMAJ_FAMPROD,
	dim_magasin.ID_ENSEIGNE, 
	dim_magasin.ACTIF, 
	dim_magasin.DATE_OUVERTURE,
	dim_magasin.DATE_FERMETURE, 
	dim_magasin.DATE_MAJ AS DATE_MAJ_MAG, 
	dim_magasin.EMPLACEMENTS,
	dim_magasin.NB_CAISSES, 
	dim_magasin.VILLE, 
	dim_magasin.DEP,
	dim_magasin.FICHIER_IMAGE_CARTE_MAGASIN, 
	securite.ONGLET, 
	securite.DATEMAJ_SECURITE, 
	profil.ID_PROFIL, 
	profil.LIB_PROFIL,
	profil.TYPE_ZONE, 
	profil.ID_ZONE, 
	profil.USERNAME_BO, 
	profil.PASSWORD_BO, 
	profil.DATEMAJ_PROFIL,
	utilisateur.ID, 
	utilisateur.NOM, 
	utilisateur.PRENOM, 
	utilisateur.USERNAME, 
	utilisateur.PASSWORD,
	utilisateur.MAIL, 
	utilisateur.DATEMAJ_USER, 
	dim_enseigne.LIB_ENSEIGNE, 
	dim_enseigne.FICHIER_IMAGE_LOGO_ENSEIGNE,
	dim_enseigne.DATEMAJ_ENSEIGNE, 
	dim_departement.ID_DEPARTEMENT, 
	dim_departement.CODE_DEPARTEMENT,
	dim_departement.LIB_DEPARTEMENT, 
	dim_departement.ID_REGION_ADMIN1,
	dim_departement.ID_REGION_ADMIN2, 
	dim_departement.ID_REGION_COM, 
	dim_departement.DATEMAJ_DEP
	FROM dwr_faits_ventes INNER JOIN dim_famille_produit ON dwr_faits_ventes.ID_FAMILLE_PRODUIT=dim_famille_produit.ID_FAMILLE_PRODUIT
	INNER JOIN dim_magasin ON dwr_faits_ventes.id_magasin=dim_magasin.id_magasin
	INNER JOIN securite ON dwr_faits_ventes.id_magasin=securite.id_magasin
	INNER JOIN profil ON securite.id_profil=profil.id_profil
	INNER JOIN utilisateur ON profil.id_profil=utilisateur.id_profil
	INNER JOIN dim_enseigne ON dim_magasin.id_enseigne=dim_enseigne.id_enseigne
	INNER JOIN dim_departement ON dim_magasin.dep=dim_departement.id_departement
	;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maj_dim_magasin_star` ()  BEGIN
  
	TRUNCATE dim_magasin_star;
    INSERT INTO dim_magasin_star
    SELECT DISTINCT ID_MAGASIN, 
    ACTIF, 
    DATE_OUVERTURE , 
    DATE_FERMETURE , 
    DATE_MAJ , 
    EMPLACEMENTS , 
    NB_CAISSES , 
    VILLE , 
    FICHIER_IMAGE_CARTE_MAGASIN ,
  dim_enseigne.ID_ENSEIGNE, 
  LIB_ENSEIGNE, 
    FICHIER_IMAGE_LOGO_ENSEIGNE,
  ID_DEPARTEMENT, 
    CODE_DEPARTEMENT, 
    LIB_DEPARTEMENT , 
    ANC_ADMIN.ID_REGION_ADMIN AS ID_REGION_ANC_ADMIN,
    ANC_ADMIN.LIB_REGION_ADMIN AS LIB_REGION_ANC_ADMIN, 
    ANC_ADMIN.DATE_DEBUT_VALID_ADMIN AS DATE_DEBUT_VALID_ANC_ADMIN, 
    ANC_ADMIN.DATE_FIN_VALID_ADMIN AS DATE_FIN_VALID_ANC_ADMIN, 
    ANC_ADMIN.FICHIER_IMAGE_CARTE_REGADM AS FICHIER_IMG_ANC_REG_ADMIN, 
  NOUV_ADMIN.ID_REGION_ADMIN AS ID_REGION_NOUV_ADMIN,
    NOUV_ADMIN.LIB_REGION_ADMIN AS LIB_REGION_NOUV_ADMIN, 
    NOUV_ADMIN.DATE_DEBUT_VALID_ADMIN AS DATE_DEBUT_VALID_NOUV_ADMIN, 
    NOUV_ADMIN.DATE_FIN_VALID_ADMIN AS DATE_FIN_VALID_NOUV_ADMIN, 
    NOUV_ADMIN.FICHIER_IMAGE_CARTE_REGADM AS FICHIER_IMG_NOUV_REG_ADMIN, 
  dim_geographique_com.ID_REGION_COM, 
    LIB_REGION_COM, 
    DATE_DEBUT_VALID_COM , 
    DATE_FIN_VALID_COM , 
    FICHIER_IMAGE_CARTE_REGCOM
  FROM dim_magasin, dim_enseigne, dim_departement, dim_geographique_com, dim_geographique_admin ANC_ADMIN, dim_geographique_admin NOUV_ADMIN
  WHERE dim_magasin.ID_ENSEIGNE=dim_enseigne.ID_ENSEIGNE
  AND dim_departement.ID_DEPARTEMENT=dim_magasin.DEP
  AND dim_geographique_com.ID_REGION_COM=dim_departement.ID_REGION_COM
  AND ANC_ADMIN.ID_REGION_ADMIN=ID_REGION_ADMIN1
  AND NOUV_ADMIN.ID_REGION_ADMIN=ID_REGION_ADMIN2
  ;
END$$

CREATE DEFINER=`darties1`@`localhost` PROCEDURE `maj_dwr_faits_ventes` ()  BEGIN
	TRUNCATE dwr_faits_ventes;
    INSERT INTO dwr_faits_ventes
    SELECT ID_MAGASIN , ID_FAMILLE_PRODUIT , ID_TEMPS , 'VENTES' AS INDICATEUR , SUM(VENTES_OBJECTIF) AS OBJECTIF , SUM(VENTES_REEL)AS REEL,NULL AS DATE_MAJ
    FROM faits_ventes
    GROUP BY ID_MAGASIN , ID_FAMILLE_PRODUIT , ID_TEMPS, DATE_MAJ
    UNION ALL
    SELECT ID_MAGASIN , ID_FAMILLE_PRODUIT , ID_TEMPS , 'CA' AS INDICATEUR , SUM(CA_OBJECTIF) AS OBJECTIF , SUM(CA_REEL)AS REEL,NULL AS DATE_MAJ
    FROM faits_ventes
    GROUP BY ID_MAGASIN , ID_FAMILLE_PRODUIT , ID_TEMPS , DATE_MAJ
    UNION ALL
    SELECT ID_MAGASIN , ID_FAMILLE_PRODUIT , ID_TEMPS , 'MARGE' AS INDICATEUR , AVG(MARGE_OBJECTIF) AS OBJECTIF , AVG(MARGE_REEL) AS REEL,NULL AS DATE_MAJ
    FROM faits_ventes
    GROUP BY ID_MAGASIN , ID_FAMILLE_PRODUIT , ID_TEMPS , DATE_MAJ
    ORDER by 1,2,3,4
    ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maj_faits_ventes_star` ()  BEGIN
    TRUNCATE faits_ventes_star;
    INSERT INTO faits_ventes_star
    SELECT * FROM faits_ventes;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `maj_securite_star` ()  BEGIN
    TRUNCATE securite_star;

    INSERT INTO securite_star
    SELECT * FROM securite;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `ID_DEVISE` int(11) NOT NULL COMMENT 'Devise du cours',
  `MOIS` decimal(38,0) NOT NULL COMMENT 'Mois du cours',
  `ANNEE` decimal(38,0) NOT NULL COMMENT 'Annee du cours',
  `COURS` decimal(38,2) NOT NULL COMMENT 'Cours par rapport a l''''unite de compte (euro)',
  `DATEMAJ_COURS` timestamp NOT NULL COMMENT 'Date de la derniere mise a jour'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cours fluctuants';

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`ID_DEVISE`, `MOIS`, `ANNEE`, `COURS`, `DATEMAJ_COURS`) VALUES
(2, '1', '2014', '1.43', '2025-03-15 23:00:00'),
(2, '1', '2015', '1.43', '2025-03-15 23:00:00'),
(2, '1', '2016', '1.43', '2025-03-15 23:00:00'),
(2, '2', '2013', '1.51', '2025-03-15 23:00:00'),
(2, '2', '2014', '1.51', '2025-03-15 23:00:00'),
(2, '2', '2015', '1.51', '2025-03-15 23:00:00'),
(2, '3', '2013', '1.50', '2025-03-15 23:00:00'),
(2, '3', '2014', '1.50', '2025-03-15 23:00:00'),
(2, '3', '2015', '1.50', '2025-03-15 23:00:00'),
(2, '4', '2013', '1.49', '2025-03-15 23:00:00'),
(2, '4', '2014', '1.49', '2025-03-15 23:00:00'),
(2, '4', '2015', '1.49', '2025-03-15 23:00:00'),
(2, '5', '2013', '1.48', '2025-03-15 23:00:00'),
(2, '5', '2014', '1.48', '2025-03-15 23:00:00'),
(2, '5', '2015', '1.48', '2025-03-15 23:00:00'),
(2, '6', '2013', '1.47', '2025-03-15 23:00:00'),
(2, '6', '2014', '1.47', '2025-03-15 23:00:00'),
(2, '6', '2015', '1.47', '2025-03-15 23:00:00'),
(2, '7', '2013', '1.46', '2025-03-15 23:00:00'),
(2, '7', '2014', '1.46', '2025-03-15 23:00:00'),
(2, '7', '2015', '1.46', '2025-03-15 23:00:00'),
(2, '8', '2013', '1.45', '2025-03-15 23:00:00'),
(2, '8', '2014', '1.45', '2025-03-15 23:00:00'),
(2, '8', '2015', '1.45', '2025-03-15 23:00:00'),
(2, '9', '2013', '1.45', '2025-03-15 23:00:00'),
(2, '9', '2014', '1.45', '2025-03-15 23:00:00'),
(2, '9', '2015', '1.45', '2025-03-15 23:00:00'),
(2, '10', '2013', '1.44', '2025-03-15 23:00:00'),
(2, '10', '2014', '1.44', '2025-03-15 23:00:00'),
(2, '10', '2015', '1.44', '2025-03-15 23:00:00'),
(2, '11', '2013', '1.44', '2025-03-15 23:00:00'),
(2, '11', '2014', '1.44', '2025-03-15 23:00:00'),
(2, '11', '2015', '1.44', '2025-03-15 23:00:00'),
(2, '12', '2013', '1.43', '2025-03-15 23:00:00'),
(2, '12', '2014', '1.43', '2025-03-15 23:00:00'),
(2, '12', '2015', '1.43', '2025-03-15 23:00:00'),
(3, '1', '2014', '1.63', '2025-03-15 23:00:00'),
(3, '1', '2015', '1.63', '2025-03-15 23:00:00'),
(3, '1', '2016', '1.63', '2025-03-15 23:00:00'),
(3, '2', '2013', '1.70', '2025-03-15 23:00:00'),
(3, '2', '2014', '1.70', '2025-03-15 23:00:00'),
(3, '2', '2015', '1.70', '2025-03-15 23:00:00'),
(3, '3', '2013', '1.69', '2025-03-15 23:00:00'),
(3, '3', '2014', '1.69', '2025-03-15 23:00:00'),
(3, '3', '2015', '1.69', '2025-03-15 23:00:00'),
(3, '4', '2013', '1.69', '2025-03-15 23:00:00'),
(3, '4', '2014', '1.69', '2025-03-15 23:00:00'),
(3, '4', '2015', '1.69', '2025-03-15 23:00:00'),
(3, '5', '2013', '1.68', '2025-03-15 23:00:00'),
(3, '5', '2014', '1.68', '2025-03-15 23:00:00'),
(3, '5', '2015', '1.68', '2025-03-15 23:00:00'),
(3, '6', '2013', '1.68', '2025-03-15 23:00:00'),
(3, '6', '2014', '1.68', '2025-03-15 23:00:00'),
(3, '6', '2015', '1.68', '2025-03-15 23:00:00'),
(3, '7', '2013', '1.67', '2025-03-15 23:00:00'),
(3, '7', '2014', '1.67', '2025-03-15 23:00:00'),
(3, '7', '2015', '1.67', '2025-03-15 23:00:00'),
(3, '8', '2013', '1.66', '2025-03-15 23:00:00'),
(3, '8', '2014', '1.66', '2025-03-15 23:00:00'),
(3, '8', '2015', '1.66', '2025-03-15 23:00:00'),
(3, '9', '2013', '1.66', '2025-03-15 23:00:00'),
(3, '9', '2014', '1.66', '2025-03-15 23:00:00'),
(3, '9', '2015', '1.66', '2025-03-15 23:00:00'),
(3, '10', '2013', '1.65', '2025-03-15 23:00:00'),
(3, '10', '2014', '1.65', '2025-03-15 23:00:00'),
(3, '10', '2015', '1.65', '2025-03-15 23:00:00'),
(3, '11', '2013', '1.64', '2025-03-15 23:00:00'),
(3, '11', '2014', '1.64', '2025-03-15 23:00:00'),
(3, '11', '2015', '1.64', '2025-03-15 23:00:00'),
(3, '12', '2013', '1.64', '2025-03-15 23:00:00'),
(3, '12', '2014', '1.64', '2025-03-15 23:00:00'),
(3, '12', '2015', '1.64', '2025-03-15 23:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `data`
--

CREATE TABLE `data` (
  `ID_MAGASIN` int(11) NOT NULL DEFAULT '0',
  `ID_FAMILLE_PRODUIT` int(11) NOT NULL DEFAULT '0',
  `ID_TEMPS` varchar(8) NOT NULL DEFAULT '',
  `INDICATEUR` varchar(6) CHARACTER SET cp850 NOT NULL DEFAULT '',
  `OBJECTIF` decimal(65,6) DEFAULT NULL,
  `REEL` decimal(65,6) DEFAULT NULL,
  `DATE_MAJ` binary(0) DEFAULT NULL,
  `LIB_FAMILLE_PRODUIT` varchar(32) NOT NULL COMMENT 'Libelle de la famille des produits',
  `DATEMAJ_FAMPROD` timestamp NOT NULL COMMENT 'Date de la derniere mise a jour',
  `ID_ENSEIGNE` int(11) NOT NULL COMMENT 'Reference a l''enseigne du magasin',
  `ACTIF` varchar(6) NOT NULL COMMENT 'Statut d''activite du magasin',
  `DATE_OUVERTURE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date d''ouverture du magasin',
  `DATE_FERMETURE` timestamp NULL DEFAULT NULL COMMENT 'Date de fermeture du magasin',
  `DATE_MAJ_MAG` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date de la derniere mise ? jour',
  `EMPLACEMENTS` varchar(32) DEFAULT NULL COMMENT 'Emplacements - Elements d''adresse du magasin',
  `NB_CAISSES` decimal(38,0) DEFAULT NULL COMMENT 'Nombre de caisses dans le magasin',
  `VILLE` varchar(32) NOT NULL COMMENT 'Ville du magasin',
  `DEP` int(11) NOT NULL COMMENT 'Departement du magasin',
  `FICHIER_IMAGE_CARTE_MAGASIN` varchar(20) NOT NULL COMMENT 'Nom du fichier image la carte du magasin',
  `ONGLET` int(11) NOT NULL COMMENT 'Selon l''onglet du tableau de bord, des informations peuvent etre necessaires',
  `DATEMAJ_SECURITE` timestamp NOT NULL COMMENT 'Date de la derniere mise a jour',
  `ID_PROFIL` int(11) NOT NULL DEFAULT '0' COMMENT 'Identifiant du profil',
  `LIB_PROFIL` varchar(50) NOT NULL COMMENT 'Libelle du profil',
  `TYPE_ZONE` decimal(38,0) DEFAULT NULL COMMENT 'Type de la zone (zone commerciale, magasin) du profil',
  `ID_ZONE` decimal(38,0) DEFAULT NULL COMMENT 'Identifiant de la zone concernee (zone commerciale ou magasin) du profil',
  `USERNAME_BO` varchar(20) DEFAULT NULL COMMENT 'Identifiant dans SAP Business Objects XI 3.1',
  `PASSWORD_BO` varchar(20) DEFAULT NULL COMMENT 'Mot de passe pour SAP BusinessObjects XI 3.1',
  `DATEMAJ_PROFIL` timestamp NOT NULL COMMENT 'Date de la derniere mise a jour',
  `ID` int(11) NOT NULL DEFAULT '0' COMMENT 'Identifiant de l''utilisateur',
  `NOM` varchar(50) NOT NULL COMMENT 'Nom de l''utilisateur',
  `PRENOM` varchar(50) NOT NULL COMMENT 'Prenom  de l''utilisateur',
  `USERNAME` varchar(50) NOT NULL COMMENT 'Login de l''utilisateur',
  `PASSWORD` varchar(10) NOT NULL COMMENT 'Mot de passe de l''utilisateur',
  `MAIL` varchar(100) NOT NULL COMMENT 'Adresse electronique de l''utilisateur',
  `DATEMAJ_USER` timestamp NOT NULL COMMENT 'Date de la derniere mise a jour',
  `LIB_ENSEIGNE` varchar(32) NOT NULL COMMENT 'Libelle de l''enseigne',
  `FICHIER_IMAGE_LOGO_ENSEIGNE` varchar(20) DEFAULT NULL COMMENT 'Nom du fichier image du logo de l''enseigne',
  `DATEMAJ_ENSEIGNE` timestamp NOT NULL COMMENT 'Date de la derniere mise a jour',
  `ID_DEPARTEMENT` int(11) NOT NULL DEFAULT '0' COMMENT 'Identifiant du departement',
  `CODE_DEPARTEMENT` varchar(2) NOT NULL COMMENT 'Code INSEE du departement',
  `LIB_DEPARTEMENT` varchar(128) NOT NULL COMMENT 'Nom du departement',
  `ID_REGION_ADMIN1` int(11) NOT NULL COMMENT 'Reference a la region administrative ancienne du departement',
  `ID_REGION_ADMIN2` int(11) NOT NULL COMMENT 'Reference a la region administrative nouvelle du departement',
  `ID_REGION_COM` int(11) NOT NULL COMMENT 'Reference a la region commerciale du departement',
  `DATEMAJ_DEP` timestamp NOT NULL COMMENT 'Date de la derniere mise a jour'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Analyse croisee suite';
