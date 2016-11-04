
-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `data_0`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `data_0` (
`CODE_TEMPS` varchar(81)
,`LIB_TEMPS` varchar(92)
,`ORDRE` decimal(39,0)
,`CODE` varchar(13)
,`ID_MAGASIN` int(11)
,`ID_FAMILLE_PRODUIT` int(11)
,`ID_TEMPS` varchar(8)
,`INDICATEUR` varchar(6)
,`OBJECTIF` decimal(65,6)
,`REEL` decimal(65,6)
,`DATE_MAJ` binary(0)
,`LIB_FAMILLE_PRODUIT` varchar(32)
,`DATEMAJ_FAMPROD` timestamp
,`ID_ENSEIGNE` int(11)
,`ACTIF` varchar(6)
,`DATE_OUVERTURE` timestamp
,`DATE_FERMETURE` timestamp
,`DATE_MAJ_MAG` timestamp
,`EMPLACEMENTS` varchar(32)
,`NB_CAISSES` decimal(38,0)
,`VILLE` varchar(32)
,`DEP` int(11)
,`FICHIER_IMAGE_CARTE_MAGASIN` varchar(20)
,`ONGLET` int(11)
,`DATEMAJ_SECURITE` timestamp
,`ID_PROFIL` int(11)
,`LIB_PROFIL` varchar(50)
,`TYPE_ZONE` decimal(38,0)
,`ID_ZONE` decimal(38,0)
,`USERNAME_BO` varchar(20)
,`PASSWORD_BO` varchar(20)
,`DATEMAJ_PROFIL` timestamp
,`ID` int(11)
,`NOM` varchar(50)
,`PRENOM` varchar(50)
,`USERNAME` varchar(50)
,`PASSWORD` varchar(10)
,`MAIL` varchar(100)
,`DATEMAJ_USER` timestamp
,`LIB_ENSEIGNE` varchar(32)
,`FICHIER_IMAGE_LOGO_ENSEIGNE` varchar(20)
,`DATEMAJ_ENSEIGNE` timestamp
,`ID_DEPARTEMENT` int(11)
,`CODE_DEPARTEMENT` varchar(2)
,`LIB_DEPARTEMENT` varchar(128)
,`ID_REGION_ADMIN1` int(11)
,`ID_REGION_ADMIN2` int(11)
,`ID_REGION_COM` int(11)
,`DATEMAJ_DEP` timestamp
,`ANNEE` varchar(4)
,`MOIS` varchar(2)
,`id_i` int(1)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `data_1`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `data_1` (
`CODE_TEMPS` varchar(81)
,`LIB_TEMPS` varchar(92)
,`ORDRE` decimal(39,0)
,`CODE` varchar(81)
,`ID_MAGASIN` int(11)
,`ID_FAMILLE_PRODUIT` int(11)
,`ID_TEMPS` varchar(8)
,`INDICATEUR` varchar(6)
,`OBJECTIF` decimal(65,6)
,`REEL` decimal(65,6)
,`DATE_MAJ` binary(0)
,`LIB_FAMILLE_PRODUIT` varchar(32)
,`DATEMAJ_FAMPROD` timestamp
,`ID_ENSEIGNE` int(11)
,`ACTIF` varchar(6)
,`DATE_OUVERTURE` timestamp
,`DATE_FERMETURE` timestamp
,`DATE_MAJ_MAG` timestamp
,`EMPLACEMENTS` varchar(32)
,`NB_CAISSES` decimal(38,0)
,`VILLE` varchar(32)
,`DEP` int(11)
,`FICHIER_IMAGE_CARTE_MAGASIN` varchar(20)
,`ONGLET` int(11)
,`DATEMAJ_SECURITE` timestamp
,`ID_PROFIL` int(11)
,`LIB_PROFIL` varchar(50)
,`TYPE_ZONE` decimal(38,0)
,`ID_ZONE` decimal(38,0)
,`USERNAME_BO` varchar(20)
,`PASSWORD_BO` varchar(20)
,`DATEMAJ_PROFIL` timestamp
,`ID` int(11)
,`NOM` varchar(50)
,`PRENOM` varchar(50)
,`USERNAME` varchar(50)
,`PASSWORD` varchar(10)
,`MAIL` varchar(100)
,`DATEMAJ_USER` timestamp
,`LIB_ENSEIGNE` varchar(32)
,`FICHIER_IMAGE_LOGO_ENSEIGNE` varchar(20)
,`DATEMAJ_ENSEIGNE` timestamp
,`ID_DEPARTEMENT` int(11)
,`CODE_DEPARTEMENT` varchar(2)
,`LIB_DEPARTEMENT` varchar(128)
,`ID_REGION_ADMIN1` int(11)
,`ID_REGION_ADMIN2` int(11)
,`ID_REGION_COM` int(11)
,`DATEMAJ_DEP` timestamp
,`ANNEE` varchar(4)
,`MOIS` varchar(2)
,`id_i` int(1)
);

-- --------------------------------------------------------

--
-- Structure de la table `devise`
--

CREATE TABLE `devise` (
  `ID_DEVISE` int(11) NOT NULL COMMENT 'Identifiant devise',
  `LIB_DEVISE` varchar(10) NOT NULL COMMENT 'Libelle devise',
  `ISOCODE` varchar(3) NOT NULL COMMENT 'Code ISO de la device pour le web service d''alimentation',
  `SYMBOLE` varchar(1) DEFAULT NULL COMMENT 'Symbole de la devise',
  `FORMAT_BO` varchar(20) DEFAULT NULL COMMENT 'Format a utiliser dans BO',
  `COURS_FIXE` decimal(38,2) DEFAULT NULL COMMENT 'Pour les anciennes monnaies avant euro, la conversion fixe ? utiliser',
  `DATEMAJ_DEVISE` timestamp NOT NULL COMMENT 'Date de la derniere mise a jour'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Devises pour l''affichage';

--
-- Contenu de la table `devise`
--

INSERT INTO `devise` (`ID_DEVISE`, `LIB_DEVISE`, `ISOCODE`, `SYMBOLE`, `FORMAT_BO`, `COURS_FIXE`, `DATEMAJ_DEVISE`) VALUES
(1, 'Euro', 'EUR', '€', NULL, '1.00', '2016-03-25 09:20:53'),
(2, 'dollar', 'USD', '$', NULL, NULL, '2016-03-25 09:20:53'),
(3, 'yen', 'JPY', '¥', NULL, NULL, '2016-03-25 09:20:53');

-- --------------------------------------------------------

--
-- Structure de la table `dim_departement`
--

CREATE TABLE `dim_departement` (
  `ID_DEPARTEMENT` int(11) NOT NULL COMMENT 'Identifiant du departement',
  `CODE_DEPARTEMENT` varchar(2) NOT NULL COMMENT 'Code INSEE du departement',
  `LIB_DEPARTEMENT` varchar(128) NOT NULL COMMENT 'Nom du departement',
  `ID_REGION_ADMIN1` int(11) NOT NULL COMMENT 'Reference a la region administrative ancienne du departement',
  `ID_REGION_ADMIN2` int(11) NOT NULL COMMENT 'Reference a la region administrative nouvelle du departement',
  `ID_REGION_COM` int(11) NOT NULL COMMENT 'Reference a la region commerciale du departement',
  `DATEMAJ_DEP` timestamp NOT NULL COMMENT 'Date de la derniere mise a jour'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Les departement des magasins (flocon)';

--
-- Contenu de la table `dim_departement`
--

INSERT INTO `dim_departement` (`ID_DEPARTEMENT`, `CODE_DEPARTEMENT`, `LIB_DEPARTEMENT`, `ID_REGION_ADMIN1`, `ID_REGION_ADMIN2`, `ID_REGION_COM`, `DATEMAJ_DEP`) VALUES
(1, '25', 'Doubs', 10, 27, 2, '2025-03-15 23:00:00'),
(2, '57', 'Moselle', 15, 23, 2, '2025-03-15 23:00:00'),
(3, '30', 'Gard', 13, 29, 4, '2025-03-15 23:00:00'),
(4, '12', 'Aveyron', 16, 29, 3, '2025-03-15 23:00:00'),
(5, '33', 'Gironde', 2, 24, 3, '2025-03-15 23:00:00'),
(6, '77', 'Seine-et-Marne', 12, 12, 5, '2025-03-15 23:00:00'),
(7, '44', 'Loire-Atlantique', 18, 18, 1, '2025-03-15 23:00:00'),
(8, '76', 'Seine-Maritime', 11, 26, 1, '2025-03-15 23:00:00'),
(9, '26', 'Drôme', 22, 25, 4, '2025-03-15 23:00:00'),
(10, '62', 'Pas-de-Calais', 17, 30, 2, '2025-03-15 23:00:00'),
(11, '04', 'Alpes-de-Haute-Provence', 21, 21, 4, '2025-03-15 23:00:00'),
(12, '09', 'Ariège', 16, 29, 3, '2025-03-15 23:00:00'),
(13, '38', 'Isère', 22, 25, 4, '2025-03-15 23:00:00'),
(14, '87', 'Haute-Vienne', 14, 24, 3, '2025-03-15 23:00:00'),
(15, '24', 'Dordogne', 2, 24, 3, '2025-03-15 23:00:00'),
(16, '22', 'Côtes-d\'Armor', 6, 6, 1, '2025-03-15 23:00:00'),
(17, '73', 'Savoie', 22, 25, 4, '2025-03-15 23:00:00'),
(18, '92', 'Hauts-de-Seine', 12, 12, 5, '2025-03-15 23:00:00'),
(19, '06', 'Alpes-Maritimes', 21, 21, 4, '2025-03-15 23:00:00'),
(20, '64', 'Pyrénées-Atlantiques', 6, 24, 3, '2025-03-15 23:00:00'),
(21, '18', 'Cher', 7, 7, 4, '2025-03-15 23:00:00'),
(22, '42', 'Loire', 22, 25, 4, '2025-03-15 23:00:00'),
(23, '65', 'Hautes-Pyrénées', 16, 29, 3, '2025-03-15 23:00:00'),
(24, '16', 'Charente', 20, 24, 3, '2025-03-15 23:00:00'),
(25, '93', 'Seine-St-Denis', 12, 12, 5, '2025-03-15 23:00:00'),
(26, '95', 'Val-d\'Oise', 12, 12, 5, '2025-03-15 23:00:00'),
(27, '29', 'Finistère', 6, 6, 1, '2025-03-15 23:00:00'),
(28, '83', 'Var', 21, 21, 3, '2025-03-15 23:00:00'),
(29, '37', 'Indre-et-Loire', 7, 7, 1, '2025-03-15 23:00:00'),
(30, '10', 'Aube', 8, 23, 2, '2025-03-15 23:00:00'),
(31, '78', 'Yvelines', 12, 12, 5, '2025-03-15 23:00:00'),
(32, '61', 'Orne', 4, 26, 1, '2025-03-15 23:00:00'),
(33, '80', 'Somme', 19, 30, 1, '2025-03-15 23:00:00'),
(34, '49', 'Maine-et-Loire', 18, 18, 1, '2025-03-15 23:00:00'),
(35, '2B', 'Corse-du-Sud', 9, 9, 4, '2025-03-15 23:00:00'),
(36, '11', 'Aude', 13, 29, 3, '2025-03-15 23:00:00'),
(37, '63', 'Puy-de-D�me', 3, 25, 4, '2025-03-15 23:00:00'),
(38, '94', 'Val-de-Marne', 12, 12, 5, '2025-03-15 23:00:00'),
(39, '21', 'Côte-d\'Or', 5, 27, 2, '2025-03-15 23:00:00'),
(40, '91', 'Essonne', 12, 12, 5, '2025-03-15 23:00:00'),
(41, '59', 'Nord', 17, 30, 2, '2025-03-15 23:00:00'),
(42, '54', 'Meurthe-et-Moselle', 15, 23, 2, '2025-03-15 23:00:00'),
(43, '75', 'Paris', 12, 12, 5, '2025-03-15 23:00:00'),
(44, '67', 'Bas-Rhin', 1, 23, 2, '2025-03-15 23:00:00'),
(45, '69', 'Rhône', 22, 25, 4, '2025-03-15 23:00:00'),
(46, '13', 'Bouches-du-Rhône', 21, 21, 4, '2025-03-15 23:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `dim_enseigne`
--

CREATE TABLE `dim_enseigne` (
  `ID_ENSEIGNE` int(11) NOT NULL COMMENT 'Identifiant de l''enseigne',
  `LIB_ENSEIGNE` varchar(32) NOT NULL COMMENT 'Libelle de l''enseigne',
  `FICHIER_IMAGE_LOGO_ENSEIGNE` varchar(20) DEFAULT NULL COMMENT 'Nom du fichier image du logo de l''enseigne',
  `DATEMAJ_ENSEIGNE` timestamp NOT NULL COMMENT 'Date de la derniere mise a jour'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Les enseignes du groupe Darties (flocon)';

--
-- Contenu de la table `dim_enseigne`
--

INSERT INTO `dim_enseigne` (`ID_ENSEIGNE`, `LIB_ENSEIGNE`, `FICHIER_IMAGE_LOGO_ENSEIGNE`, `DATEMAJ_ENSEIGNE`) VALUES
(1, 'Boulanger', 'boulanger', '2016-03-25 09:24:15'),
(2, 'Darty', 'darty', '2016-03-25 09:24:15'),
(3, 'Leroy_merlin', 'leroy_merlin', '2016-03-25 09:24:15');

-- --------------------------------------------------------

--
-- Structure de la table `dim_famille_produit`
--

CREATE TABLE `dim_famille_produit` (
  `ID_FAMILLE_PRODUIT` int(11) NOT NULL COMMENT 'Identifiant de la famille des produits',
  `LIB_FAMILLE_PRODUIT` varchar(32) NOT NULL COMMENT 'Libelle de la famille des produits',
  `DATEMAJ_FAMPROD` timestamp NOT NULL COMMENT 'Date de la derniere mise a jour'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Les familles des produits';

--
-- Contenu de la table `dim_famille_produit`
--

INSERT INTO `dim_famille_produit` (`ID_FAMILLE_PRODUIT`, `LIB_FAMILLE_PRODUIT`, `DATEMAJ_FAMPROD`) VALUES
(1, 'Four', '2016-03-25 09:24:15'),
(2, 'Hifi', '2016-03-25 09:24:15'),
(3, 'Magnetoscope', '2016-03-25 09:24:15');

-- --------------------------------------------------------

--
-- Structure de la table `dim_geographique_admin`
--

CREATE TABLE `dim_geographique_admin` (
  `ID_REGION_ADMIN` int(11) NOT NULL COMMENT 'Identifiant de la region administrative',
  `LIB_REGION_ADMIN` varchar(50) NOT NULL COMMENT 'Libelle de la region administrative',
  `DATE_DEBUT_VALID_ADMIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date de debut de validite de la region administrative',
  `DATE_FIN_VALID_ADMIN` timestamp NULL DEFAULT NULL COMMENT 'Date de fin de validite de la region administrative',
  `FICHIER_IMAGE_CARTE_REGADM` varchar(50) NOT NULL COMMENT 'Nom du fichier image la carte de la region administrative',
  `DATEMAJ_GEO_ADMIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date de la derniere mise a jour'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Les regions administratives (flocon)';

--
-- Contenu de la table `dim_geographique_admin`
--

INSERT INTO `dim_geographique_admin` (`ID_REGION_ADMIN`, `LIB_REGION_ADMIN`, `DATE_DEBUT_VALID_ADMIN`, `DATE_FIN_VALID_ADMIN`, `FICHIER_IMAGE_CARTE_REGADM`, `DATEMAJ_GEO_ADMIN`) VALUES
(1, 'Alsace', '2016-10-07 14:32:58', NULL, 'alsace', '2016-03-25 09:20:53'),
(2, 'Aquitaine', '2016-10-07 14:32:58', NULL, 'aquitaine', '2016-03-25 09:20:53'),
(3, 'Auvergne', '2016-10-07 14:32:58', NULL, 'auvergne', '2016-03-25 09:20:53'),
(4, 'Basse-Normandie', '2016-10-07 14:32:58', NULL, 'basse-normandie', '2016-03-25 09:20:53'),
(5, 'Bourgogne', '2016-10-07 14:32:58', NULL, 'bourgogne', '2016-03-25 09:20:53'),
(6, 'Bretagne', '2016-10-07 14:32:58', NULL, 'bretagne', '2016-03-25 09:20:53'),
(7, 'Centre', '2016-10-07 14:32:58', NULL, 'centre', '2016-03-25 09:20:53'),
(8, 'Champagne-Ardenne', '2016-10-07 14:32:58', NULL, 'champagne-ardenne', '2016-03-25 09:20:53'),
(9, 'Corse', '2016-10-07 14:32:58', NULL, 'corse', '2016-03-25 09:20:53'),
(10, 'Franche-Comté', '2016-10-07 14:32:58', NULL, 'franche-comte', '2016-03-25 09:20:53'),
(11, 'Haute-Normandie', '2016-10-07 14:32:58', NULL, 'haute-normandie', '2016-03-25 09:20:53'),
(12, 'Île-de-France', '2016-10-07 14:32:58', NULL, 'ile-de-france', '2016-03-25 09:20:53'),
(13, 'Languedoc-Roussillon', '2016-10-07 14:32:58', NULL, 'languedoc-roussillon', '2016-03-25 09:20:53'),
(14, 'Limousin', '2016-10-07 14:32:58', NULL, 'limousin', '2016-03-25 09:20:53'),
(15, 'Lorraine', '2016-10-07 14:32:58', NULL, 'lorraine', '2016-03-25 09:20:53'),
(16, 'Midi-Pyrénées', '2016-10-07 14:32:58', NULL, 'midi-pyrenees', '2016-03-25 09:20:53'),
(17, 'Nord-Pas-de-Calais', '2016-10-07 14:32:58', NULL, 'nord-pas-de-calais', '2016-03-25 09:20:53'),
(18, 'Pays-de-la-loire', '2016-10-07 14:32:58', NULL, 'pays-de-la-loire', '2016-03-25 09:20:53'),
(19, 'Picardie', '2016-10-07 14:32:58', NULL, 'picardie', '2016-03-25 09:20:53'),
(20, 'Poitou-Charentes', '2016-10-07 14:32:58', NULL, 'poitou-charentes', '2016-03-25 09:20:53'),
(21, 'Provence-Alpes-Côte d\'Azur', '2016-10-07 14:32:58', NULL, 'provence-alpes-cote d\'azur', '2016-03-25 09:20:53'),
(22, 'Rhône-Alpes', '2016-10-07 14:32:58', NULL, 'rhone-alpes', '2016-03-25 09:20:53'),
(23, 'Alsace-Champagne-Ardenne-Lorraine', '2016-10-07 14:32:58', NULL, 'alsace-champagne-ardenne-lorraine', '2016-03-25 09:20:53'),
(24, 'Aquitaine-Limousin-Poitou-Charentes', '2016-10-07 14:32:58', NULL, 'aquitaine-limousin-poitou-charentes', '2016-03-25 09:20:53'),
(25, 'Auvergne-Rhônes-Alpes', '2016-10-07 14:32:58', NULL, 'auvergne-rhones-alpes', '2016-03-25 09:20:53'),
(26, 'Normandie', '2016-10-07 14:32:58', NULL, 'normandie', '2016-03-25 09:20:53'),
(27, 'Bourgogne-Franche-Comté', '2016-10-07 14:32:58', NULL, 'bourgogne-franche-comte', '2016-03-25 09:20:53'),
(29, 'Languedoc-Roussillon-Midi-Pyrénées', '2016-10-07 14:32:58', NULL, 'languedoc-roussillon-midi-pyrenees', '2016-03-25 09:20:53'),
(30, 'Nord-Pas-de-Calais-Picardie', '2016-10-07 14:32:58', NULL, 'nord-pas-de-calais-picardie', '2016-03-25 09:20:53');

-- --------------------------------------------------------

--
-- Structure de la table `dim_geographique_com`
--

CREATE TABLE `dim_geographique_com` (
  `ID_REGION_COM` int(11) NOT NULL COMMENT 'Identifiant de la region commerciale',
  `LIB_REGION_COM` varchar(50) NOT NULL COMMENT 'Libelle de la region commerciale',
  `DATE_DEBUT_VALID_COM` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date de debut de validite de la region commerciale',
  `DATE_FIN_VALID_COM` timestamp NULL DEFAULT NULL COMMENT 'Date de fin de validite de la region commerciale',
  `FICHIER_IMAGE_CARTE_REGCOM` varchar(20) NOT NULL COMMENT 'Nom du fichier image la carte de la region commerciale',
  `DATEMAJ_GEO_COM` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date de la derniere mise a jour'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Les regions commerciales (flocon)';

--
-- Contenu de la table `dim_geographique_com`
--

INSERT INTO `dim_geographique_com` (`ID_REGION_COM`, `LIB_REGION_COM`, `DATE_DEBUT_VALID_COM`, `DATE_FIN_VALID_COM`, `FICHIER_IMAGE_CARTE_REGCOM`, `DATEMAJ_GEO_COM`) VALUES
(1, 'Nord_Ouest', '2016-10-07 14:32:58', NULL, 'nord_ouest', '2016-03-25 09:20:53'),
(2, 'Nord_Est', '2016-10-07 14:32:58', NULL, 'nord_est', '2016-03-25 09:20:53'),
(3, 'Sud_Ouest', '2016-10-07 14:32:58', NULL, 'sud_ouest', '2016-03-25 09:20:53'),
(4, 'Sud_Est', '2016-10-07 14:32:58', NULL, 'sud_est', '2016-03-25 09:20:53'),
(5, 'Région_parisienne', '2016-10-07 14:32:58', NULL, 'region_parisienne', '2016-03-25 09:20:53');

-- --------------------------------------------------------

--
-- Structure de la table `dim_magasin`
--

CREATE TABLE `dim_magasin` (
  `ID_MAGASIN` int(11) NOT NULL COMMENT 'Identifiant du magasin',
  `ID_ENSEIGNE` int(11) NOT NULL COMMENT 'Reference a l''enseigne du magasin',
  `ACTIF` varchar(6) NOT NULL COMMENT 'Statut d''activite du magasin',
  `DATE_OUVERTURE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date d''ouverture du magasin',
  `DATE_FERMETURE` timestamp NULL DEFAULT NULL COMMENT 'Date de fermeture du magasin',
  `DATE_MAJ` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date de la derniere mise ? jour',
  `EMPLACEMENTS` varchar(32) DEFAULT NULL COMMENT 'Emplacements - Elements d''adresse du magasin',
  `NB_CAISSES` decimal(38,0) DEFAULT NULL COMMENT 'Nombre de caisses dans le magasin',
  `VILLE` varchar(32) NOT NULL COMMENT 'Ville du magasin',
  `DEP` int(11) NOT NULL COMMENT 'Departement du magasin',
  `FICHIER_IMAGE_CARTE_MAGASIN` varchar(20) NOT NULL COMMENT 'Nom du fichier image la carte du magasin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Les magasins (flocon)';

--
-- Contenu de la table `dim_magasin`
--

INSERT INTO `dim_magasin` (`ID_MAGASIN`, `ID_ENSEIGNE`, `ACTIF`, `DATE_OUVERTURE`, `DATE_FERMETURE`, `DATE_MAJ`, `EMPLACEMENTS`, `NB_CAISSES`, `VILLE`, `DEP`, `FICHIER_IMAGE_CARTE_MAGASIN`) VALUES
(1, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'ZAC', '16', 'Alencon', 32, 'alencon'),
(2, 3, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '14', 'Amiens', 33, 'amiens'),
(3, 1, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '13', 'Angers', 34, 'angers'),
(4, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'ZAC', '16', 'Angouleme', 24, 'angouleme'),
(5, 3, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'ZAC', '16', 'Arras', 10, 'arras'),
(6, 1, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '16', 'Bastia', 35, 'bastia'),
(7, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '16', 'Besancon', 1, 'besancon'),
(8, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'ZAC', '16', 'Bobigny', 25, 'bobigny'),
(9, 3, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '15', 'Bordeaux', 5, 'bordeaux'),
(10, 1, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'ZAC', '15', 'Bourges', 21, 'bourges'),
(11, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '16', 'Carcassonne', 36, 'carcassonne'),
(12, 3, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '15', 'Cergy', 26, 'cergy'),
(13, 1, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '15', 'Chambery', 17, 'chambery'),
(14, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '16', 'Clermont-Ferrand', 37, 'clermont-ferrand'),
(15, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '14', 'Creteil', 38, 'creteil'),
(16, 3, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'ZAC', '16', 'Digne', 11, 'digne'),
(17, 1, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '13', 'Dijon', 39, 'dijon'),
(18, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '16', 'Evry', 40, 'evry'),
(19, 3, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'ZAC', '14', 'Foix', 12, 'foix'),
(20, 1, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '15', 'Grenoble', 13, 'grenoble'),
(21, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'ZAC', '16', 'Lille', 41, 'lille'),
(22, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '16', 'Limoges', 14, 'limoges'),
(23, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'ZAC', '15', 'Lyon', 45, 'lyon'),
(24, 3, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '15', 'Marseille', 46, 'marseille'),
(25, 1, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '15', 'Melun', 6, 'melun'),
(26, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '13', 'Metz', 2, 'metz'),
(27, 1, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '15', 'Nancy', 42, 'nancy'),
(28, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '15', 'Nanterre', 18, 'nanterre'),
(29, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '16', 'Nantes', 7, 'nantes'),
(30, 3, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'ZAC', '16', 'Nice', 19, 'nice'),
(31, 3, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '16', 'Nimes', 3, 'nimes'),
(32, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'ZAC', '13', 'Paris-Sud', 43, 'paris-sud'),
(33, 3, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '15', 'Paris-Nord', 43, 'paris-nord'),
(34, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'ZAC', '16', 'Pau', 20, 'pau'),
(35, 1, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '13', 'Perigueux', 15, 'perigueux'),
(36, 3, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '16', 'Quimper', 27, 'quimper'),
(37, 1, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '16', 'Rodez', 4, 'rodez'),
(38, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '16', 'Rouen', 8, 'rouen'),
(39, 3, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'ZAC', '16', 'Saint-Brieuc', 16, 'saint-brieuc'),
(40, 1, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '15', 'Saint-Etienne', 22, 'saint-etienne'),
(41, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '15', 'Strasbourg', 44, 'strasbourg'),
(42, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '15', 'Tarbes', 23, 'tarbes'),
(43, 3, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '15', 'Toulon', 28, 'toulon'),
(44, 1, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '15', 'Tours', 29, 'tours'),
(45, 2, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'Centre_Ville', '16', 'Troyes', 30, 'troyes'),
(46, 3, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'ZAC', '16', 'Valence', 9, 'valence'),
(47, 1, 'Oui', '2016-10-07 14:32:58', NULL, '2016-03-25 09:20:53', 'ZAC', '16', 'Valenciennes', 41, 'valenciennes'),
(48, 2, 'Oui', '1999-12-31 22:00:00', '1999-12-31 22:00:00', '2016-03-25 09:24:15', 'ZAC', '18', 'Versailles', 31, 'versailles'),
(49, 2, 'Oui', '1999-12-31 22:00:00', '1999-12-31 22:00:00', '2016-03-25 09:23:35', 'ZAC', '14', 'Bonnetable', 31, 'bonnetable');

-- --------------------------------------------------------

--
-- Structure de la table `dim_magasin_star`
--

CREATE TABLE `dim_magasin_star` (
  `ID_MAGASIN` int(11) NOT NULL DEFAULT '0' COMMENT 'Identifiant du magasin',
  `ACTIF` varchar(6) NOT NULL COMMENT 'Statut d''activite du magasin',
  `DATE_OUVERTURE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date d''ouverture du magasin',
  `DATE_FERMETURE` timestamp NULL DEFAULT NULL COMMENT 'Date de fermeture du magasin',
  `DATE_MAJ` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date de la derniere mise ? jour',
  `EMPLACEMENTS` varchar(32) DEFAULT NULL COMMENT 'Emplacements - Elements d''adresse du magasin',
  `NB_CAISSES` decimal(38,0) DEFAULT NULL COMMENT 'Nombre de caisses dans le magasin',
  `VILLE` varchar(32) NOT NULL COMMENT 'Ville du magasin',
  `FICHIER_IMAGE_CARTE_MAGASIN` varchar(20) NOT NULL COMMENT 'Nom du fichier image la carte du magasin',
  `ID_ENSEIGNE` int(11) NOT NULL DEFAULT '0' COMMENT 'Identifiant de l''enseigne',
  `LIB_ENSEIGNE` varchar(32) NOT NULL COMMENT 'Libelle de l''enseigne',
  `FICHIER_IMAGE_LOGO_ENSEIGNE` varchar(20) DEFAULT NULL COMMENT 'Nom du fichier image du logo de l''enseigne',
  `ID_DEPARTEMENT` int(11) NOT NULL DEFAULT '0' COMMENT 'Identifiant du departement',
  `CODE_DEPARTEMENT` varchar(2) NOT NULL COMMENT 'Code INSEE du departement',
  `LIB_DEPARTEMENT` varchar(128) NOT NULL COMMENT 'Nom du departement',
  `ID_REGION_ANC_ADMIN` int(11) NOT NULL DEFAULT '0' COMMENT 'Identifiant de la region administrative',
  `LIB_REGION_ANC_ADMIN` varchar(50) NOT NULL COMMENT 'Libelle de la region administrative',
  `DATE_DEBUT_VALID_ANC_ADMIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date de debut de validite de la region administrative',
  `DATE_FIN_VALID_ANC_ADMIN` timestamp NULL DEFAULT NULL COMMENT 'Date de fin de validite de la region administrative',
  `FICHIER_IMG_ANC_REG_ADMIN` varchar(50) NOT NULL COMMENT 'Nom du fichier image la carte de la region administrative',
  `ID_REGION_NOUV_ADMIN` int(11) NOT NULL DEFAULT '0' COMMENT 'Identifiant de la region administrative',
  `LIB_REGION_NOUV_ADMIN` varchar(50) NOT NULL COMMENT 'Libelle de la region administrative',
  `DATE_DEBUT_VALID_NOUV_ADMIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date de debut de validite de la region administrative',
  `DATE_FIN_VALID_NOUV_ADMIN` timestamp NULL DEFAULT NULL COMMENT 'Date de fin de validite de la region administrative',
  `FICHIER_IMG_NOUV_REG_ADMIN` varchar(50) NOT NULL COMMENT 'Nom du fichier image la carte de la region administrative',
  `ID_REGION_COM` int(11) NOT NULL DEFAULT '0' COMMENT 'Identifiant de la region commerciale',
  `LIB_REGION_COM` varchar(50) NOT NULL COMMENT 'Libelle de la region commerciale',
  `DATE_DEBUT_VALID_COM` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date de debut de validite de la region commerciale',
  `DATE_FIN_VALID_COM` timestamp NULL DEFAULT NULL COMMENT 'Date de fin de validite de la region commerciale',
  `FICHIER_IMAGE_CARTE_REGCOM` varchar(20) NOT NULL COMMENT 'Nom du fichier image la carte de la region commerciale'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Les magasins (etoile)';
