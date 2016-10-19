
--
-- Contenu de la table `data`
--


--
-- Structure de la table `profil`
--

CREATE TABLE `profil` (
  `ID_PROFIL` int(11) NOT NULL COMMENT 'Identifiant du profil',
  `LIB_PROFIL` varchar(50) NOT NULL COMMENT 'Libelle du profil',
  `TYPE_ZONE` decimal(38,0) DEFAULT NULL COMMENT 'Type de la zone (zone commerciale, magasin) du profil',
  `ID_ZONE` decimal(38,0) DEFAULT NULL COMMENT 'Identifiant de la zone concernee (zone commerciale ou magasin) du profil',
  `USERNAME_BO` varchar(20) DEFAULT NULL COMMENT 'Identifiant dans SAP Business Objects XI 3.1',
  `PASSWORD_BO` varchar(20) DEFAULT NULL COMMENT 'Mot de passe pour SAP BusinessObjects XI 3.1',
  `DATEMAJ_PROFIL` timestamp NOT NULL COMMENT 'Date de la derniere mise a jour'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='La securite est basee sur les profils.';

--
-- Contenu de la table `profil`
--

INSERT INTO `profil` (`ID_PROFIL`, `LIB_PROFIL`, `TYPE_ZONE`, `ID_ZONE`, `USERNAME_BO`, `PASSWORD_BO`, `DATEMAJ_PROFIL`) VALUES
(1, 'Administrateur', NULL, NULL, 'etudiant01', 'P@ssw0rd', '2016-03-25 09:20:54'),
(2, 'Directeur commercial', '3', NULL, 'etudiant02', 'P@ssw0rd', '2016-03-25 09:20:54'),
(3, 'Directeur Alencon', '2', '1', 'etudiant08', 'P@ssw0rd', '2016-03-25 09:20:54'),
(4, 'Directeur Amiens', '2', '2', 'etudiant09', 'P@ssw0rd', '2016-03-25 09:20:54'),
(5, 'Directeur Angers', '2', '3', 'etudiant10', 'P@ssw0rd', '2016-03-25 09:20:54'),
(6, 'Directeur Angouleme', '2', '4', 'etudiant11', 'P@ssw0rd', '2016-03-25 09:20:54'),
(7, 'Directeur Arras', '2', '5', 'etudiant12', 'P@ssw0rd', '2016-03-25 09:20:54'),
(8, 'Directeur Bastia', '2', '6', 'etudiant13', 'P@ssw0rd', '2016-03-25 09:20:54'),
(9, 'Directeur Besancon', '2', '7', 'etudiant14', 'P@ssw0rd', '2016-03-25 09:20:54'),
(10, 'Directeur Bobigny', '2', '8', 'etudiant15', 'P@ssw0rd', '2016-03-25 09:20:54'),
(11, 'Directeur Bordeaux', '2', '9', 'etudiant16', 'P@ssw0rd', '2016-03-25 09:20:54'),
(12, 'Directeur Bourges', '2', '10', 'etudiant17', 'P@ssw0rd', '2016-03-25 09:20:54'),
(13, 'Directeur Carcassonne', '2', '11', 'etudiant18', 'P@ssw0rd', '2016-03-25 09:20:54'),
(14, 'Directeur Cergy', '2', '12', 'etudiant19', 'P@ssw0rd', '2016-03-25 09:20:54'),
(15, 'Directeur Chambery', '2', '13', 'etudiant20', 'P@ssw0rd', '2016-03-25 09:20:54'),
(16, 'Directeur Clermont-Ferrand', '2', '14', 'etudiant21', 'P@ssw0rd', '2016-03-25 09:20:54'),
(17, 'Directeur Creteil', '2', '15', 'etudiant22', 'P@ssw0rd', '2016-03-25 09:20:54'),
(18, 'Directeur Digne', '2', '16', 'etudiant23', 'P@ssw0rd', '2016-03-25 09:20:54'),
(19, 'Directeur Dijon', '2', '17', 'etudiant24', 'P@ssw0rd', '2016-03-25 09:20:54'),
(20, 'Directeur Evry', '2', '18', 'etudiant25', 'P@ssw0rd', '2016-03-25 09:20:54'),
(21, 'Directeur Foix', '2', '19', 'etudiant26', 'P@ssw0rd', '2016-03-25 09:20:54'),
(22, 'Directeur Grenoble', '2', '20', 'etudiant27', 'P@ssw0rd', '2016-03-25 09:20:54'),
(23, 'Directeur Lille', '2', '21', 'etudiant28', 'P@ssw0rd', '2016-03-25 09:20:54'),
(24, 'Directeur Limoges', '2', '22', 'etudiant29', 'P@ssw0rd', '2016-03-25 09:20:54'),
(25, 'Directeur Lyon', '2', '23', 'etudiant30', 'P@ssw0rd', '2016-03-25 09:20:54'),
(26, 'Directeur Marseille', '2', '24', 'etudiant31', 'P@ssw0rd', '2016-03-25 09:20:54'),
(27, 'Directeur Melun', '2', '25', 'etudiant32', 'P@ssw0rd', '2016-03-25 09:20:54'),
(28, 'Directeur Metz', '2', '26', 'etudiant33', 'P@ssw0rd', '2016-03-25 09:20:54'),
(29, 'Directeur Nancy', '2', '27', 'etudiant34', 'P@ssw0rd', '2016-03-25 09:20:54'),
(30, 'Directeur Nanterre', '2', '28', 'etudiant35', 'P@ssw0rd', '2016-03-25 09:20:54'),
(31, 'Directeur Nantes', '2', '29', 'etudiant36', 'P@ssw0rd', '2016-03-25 09:20:54'),
(32, 'Directeur Nice', '2', '30', 'etudiant37', 'P@ssw0rd', '2016-03-25 09:20:54'),
(33, 'Directeur Nimes', '2', '31', 'etudiant38', 'P@ssw0rd', '2016-03-25 09:20:54'),
(34, 'Directeur Nord_Est', '1', '2', 'etudiant04', 'P@ssw0rd', '2016-03-25 09:20:54'),
(35, 'Directeur Nord_Ouest', '1', '1', 'etudiant03', 'P@ssw0rd', '2016-03-25 09:20:54'),
(36, 'Directeur Paris-Sud', '2', '32', 'etudiant39', 'P@ssw0rd', '2016-03-25 09:20:54'),
(37, 'Directeur Paris-Nord', '2', '33', 'etudiant40', 'P@ssw0rd', '2016-03-25 09:20:54'),
(38, 'Directeur Pau', '2', '34', 'etudiant41', 'P@ssw0rd', '2016-03-25 09:20:54'),
(39, 'Directeur Perigueux', '2', '35', 'etudiant42', 'P@ssw0rd', '2016-03-25 09:20:54'),
(40, 'Directeur Quimper', '2', '36', 'etudiant43', 'P@ssw0rd', '2016-03-25 09:20:54'),
(41, 'Directeur Rodez', '2', '37', 'etudiant44', 'P@ssw0rd', '2016-03-25 09:20:54'),
(42, 'Directeur Rouen', '2', '38', 'etudiant45', 'P@ssw0rd', '2016-03-25 09:20:54'),
(43, 'Directeur Region_parisienne', '1', '5', 'etudiant07', 'P@ssw0rd', '2016-03-25 09:20:54'),
(44, 'Directeur Saint-Brieuc', '2', '39', 'etudiant46', 'P@ssw0rd', '2016-03-25 09:20:54'),
(45, 'Directeur Saint-Etienne', '2', '40', 'etudiant47', 'P@ssw0rd', '2016-03-25 09:20:54'),
(46, 'Directeur Strasbourg', '2', '41', 'etudiant48', 'P@ssw0rd', '2016-03-25 09:20:54'),
(47, 'Directeur Sud_Est', '1', '4', 'etudiant06', 'P@ssw0rd', '2016-03-25 09:20:54'),
(48, 'Directeur Sud_Ouest', '1', '3', 'etudiant05', 'P@ssw0rd', '2016-03-25 09:20:54'),
(49, 'Directeur Tarbes', '2', '42', 'etudiant49', 'P@ssw0rd', '2016-03-25 09:20:54'),
(50, 'Directeur Toulon', '2', '43', 'etudiant50', 'P@ssw0rd', '2016-03-25 09:20:54'),
(51, 'Directeur Tours', '2', '44', 'etudiant51', 'P@ssw0rd', '2016-03-25 09:20:54'),
(52, 'Directeur Troyes', '2', '45', 'etudiant52', 'P@ssw0rd', '2016-03-25 09:20:54'),
(53, 'Directeur Valence', '2', '46', 'etudiant53', 'P@ssw0rd', '2016-03-25 09:20:54'),
(54, 'Directeur Valenciennes', '2', '47', 'etudiant54', 'P@ssw0rd', '2016-03-25 09:20:54'),
(55, 'Directeur Versailles', '2', '48', 'etudiant55', 'P@ssw0rd', '2016-03-25 09:20:54');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `requete_enseigne`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `requete_enseigne` (
`CODE_ENSEIGNE` bigint(11)
,`ID_ENSEIGNE` int(11)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `requete_famille`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `requete_famille` (
`CODE_FAMILLE` bigint(11)
,`ID_FAMILLE_PRODUIT` int(11)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `requete_geo`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `requete_geo` (
`CODE` bigint(20)
,`ID_MAGASIN` int(11)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `requete_temps_0`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `requete_temps_0` (
`CODE` varchar(13)
,`ID_TEMPS` varchar(7)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `requete_temps_1`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `requete_temps_1` (
`CODE` varchar(81)
,`ID_TEMPS` varchar(8)
);

-- --------------------------------------------------------

--
-- Structure de la table `securite`
--

CREATE TABLE `securite` (
  `ID_MAGASIN` int(11) NOT NULL COMMENT 'Visibilite des donnees du magasin',
  `ID_PROFIL` int(11) NOT NULL COMMENT 'Visibilite du profil',
  `ONGLET` int(11) NOT NULL COMMENT 'Selon l''onglet du tableau de bord, des informations peuvent etre necessaires',
  `DATEMAJ_SECURITE` timestamp NOT NULL COMMENT 'Date de la derniere mise a jour'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Visibilite en fonction du profil (flocon)';

--
-- Contenu de la table `securite`
--

INSERT INTO `securite` (`ID_MAGASIN`, `ID_PROFIL`, `ONGLET`, `DATEMAJ_SECURITE`) VALUES
(1, 1, 1, '2016-03-25 09:20:54'),
(1, 2, 1, '2016-03-25 09:20:54'),
(1, 3, 1, '2016-03-25 09:20:54'),
(1, 35, 1, '2016-03-25 09:20:54'),
(2, 1, 1, '2016-03-25 09:20:54'),
(2, 2, 1, '2016-03-25 09:20:54'),
(2, 4, 1, '2016-03-25 09:20:54'),
(2, 35, 1, '2016-03-25 09:20:54'),
(3, 1, 1, '2016-03-25 09:20:54'),
(3, 2, 1, '2016-03-25 09:20:54'),
(3, 5, 1, '2016-03-25 09:20:54'),
(3, 35, 1, '2016-03-25 09:20:54'),
(4, 1, 1, '2016-03-25 09:20:54'),
(4, 2, 1, '2016-03-25 09:20:54'),
(4, 6, 1, '2016-03-25 09:20:54'),
(4, 48, 1, '2016-03-25 09:20:54'),
(5, 1, 1, '2016-03-25 09:20:54'),
(5, 2, 1, '2016-03-25 09:20:54'),
(5, 7, 1, '2016-03-25 09:20:54'),
(5, 34, 1, '2016-03-25 09:20:54'),
(6, 1, 1, '2016-03-25 09:20:54'),
(6, 2, 1, '2016-03-25 09:20:54'),
(6, 8, 1, '2016-03-25 09:20:54'),
(6, 47, 1, '2016-03-25 09:20:54'),
(7, 1, 1, '2016-03-25 09:20:54'),
(7, 2, 1, '2016-03-25 09:20:54'),
(7, 9, 1, '2016-03-25 09:20:54'),
(7, 34, 1, '2016-03-25 09:20:54'),
(8, 1, 1, '2016-03-25 09:20:54'),
(8, 2, 1, '2016-03-25 09:20:54'),
(8, 10, 1, '2016-03-25 09:20:54'),
(8, 43, 1, '2016-03-25 09:20:54'),
(9, 1, 1, '2016-03-25 09:20:54'),
(9, 2, 1, '2016-03-25 09:20:54'),
(9, 11, 1, '2016-03-25 09:20:54'),
(9, 48, 1, '2016-03-25 09:20:54'),
(10, 1, 1, '2016-03-25 09:20:54'),
(10, 2, 1, '2016-03-25 09:20:54'),
(10, 12, 1, '2016-03-25 09:20:54'),
(10, 47, 1, '2016-03-25 09:20:54'),
(11, 1, 1, '2016-03-25 09:20:54'),
(11, 2, 1, '2016-03-25 09:20:54'),
(11, 13, 1, '2016-03-25 09:20:54'),
(11, 48, 1, '2016-03-25 09:20:54'),
(12, 1, 1, '2016-03-25 09:20:54'),
(12, 2, 1, '2016-03-25 09:20:54'),
(12, 14, 1, '2016-03-25 09:20:54'),
(12, 43, 1, '2016-03-25 09:20:54'),
(13, 1, 1, '2016-03-25 09:20:54'),
(13, 2, 1, '2016-03-25 09:20:54'),
(13, 15, 1, '2016-03-25 09:20:54'),
(13, 47, 1, '2016-03-25 09:20:54'),
(14, 1, 1, '2016-03-25 09:20:54'),
(14, 2, 1, '2016-03-25 09:20:54'),
(14, 16, 1, '2016-03-25 09:20:54'),
(14, 47, 1, '2016-03-25 09:20:54'),
(15, 1, 1, '2016-03-25 09:20:54'),
(15, 2, 1, '2016-03-25 09:20:54'),
(15, 17, 1, '2016-03-25 09:20:54'),
(15, 43, 1, '2016-03-25 09:20:54'),
(16, 1, 1, '2016-03-25 09:20:54'),
(16, 2, 1, '2016-03-25 09:20:54'),
(16, 18, 1, '2016-03-25 09:20:54'),
(16, 47, 1, '2016-03-25 09:20:54'),
(17, 1, 1, '2016-03-25 09:20:54'),
(17, 2, 1, '2016-03-25 09:20:54'),
(17, 19, 1, '2016-03-25 09:20:54'),
(17, 34, 1, '2016-03-25 09:20:54'),
(18, 1, 1, '2016-03-25 09:20:54'),
(18, 2, 1, '2016-03-25 09:20:54'),
(18, 20, 1, '2016-03-25 09:20:54'),
(18, 43, 1, '2016-03-25 09:20:54'),
(19, 1, 1, '2016-03-25 09:20:54'),
(19, 2, 1, '2016-03-25 09:20:54'),
(19, 21, 1, '2016-03-25 09:20:54'),
(19, 48, 1, '2016-03-25 09:20:54'),
(20, 1, 1, '2016-03-25 09:20:54'),
(20, 2, 1, '2016-03-25 09:20:54'),
(20, 22, 1, '2016-03-25 09:20:54'),
(20, 47, 1, '2016-03-25 09:20:54'),
(21, 1, 1, '2016-03-25 09:20:54'),
(21, 2, 1, '2016-03-25 09:20:54'),
(21, 23, 1, '2016-03-25 09:20:54'),
(21, 34, 1, '2016-03-25 09:20:54'),
(22, 1, 1, '2016-03-25 09:20:54'),
(22, 2, 1, '2016-03-25 09:20:54'),
(22, 24, 1, '2016-03-25 09:20:54'),
(22, 48, 1, '2016-03-25 09:20:54'),
(23, 1, 1, '2016-03-25 09:20:54'),
(23, 2, 1, '2016-03-25 09:20:54'),
(23, 25, 1, '2016-03-25 09:20:54'),
(23, 47, 1, '2016-03-25 09:20:54'),
(24, 1, 1, '2016-03-25 09:20:54'),
(24, 2, 1, '2016-03-25 09:20:54'),
(24, 26, 1, '2016-03-25 09:20:54'),
(24, 47, 1, '2016-03-25 09:20:54'),
(25, 1, 1, '2016-03-25 09:20:54'),
(25, 2, 1, '2016-03-25 09:20:54'),
(25, 27, 1, '2016-03-25 09:20:54'),
(25, 43, 1, '2016-03-25 09:20:54'),
(26, 1, 1, '2016-03-25 09:20:54'),
(26, 2, 1, '2016-03-25 09:20:54'),
(26, 28, 1, '2016-03-25 09:20:54'),
(26, 34, 1, '2016-03-25 09:20:54'),
(27, 1, 1, '2016-03-25 09:20:54'),
(27, 2, 1, '2016-03-25 09:20:54'),
(27, 29, 1, '2016-03-25 09:20:54'),
(27, 34, 1, '2016-03-25 09:20:54'),
(28, 1, 1, '2016-03-25 09:20:54'),
(28, 2, 1, '2016-03-25 09:20:54'),
(28, 30, 1, '2016-03-25 09:20:54'),
(28, 43, 1, '2016-03-25 09:20:54'),
(29, 1, 1, '2016-03-25 09:20:54'),
(29, 2, 1, '2016-03-25 09:20:54'),
(29, 31, 1, '2016-03-25 09:20:54'),
(29, 35, 1, '2016-03-25 09:20:54'),
(30, 1, 1, '2016-03-25 09:20:54'),
(30, 2, 1, '2016-03-25 09:20:54'),
(30, 32, 1, '2016-03-25 09:20:54'),
(30, 47, 1, '2016-03-25 09:20:54'),
(31, 1, 1, '2016-03-25 09:20:54'),
(31, 2, 1, '2016-03-25 09:20:54'),
(31, 33, 1, '2016-03-25 09:20:54'),
(31, 47, 1, '2016-03-25 09:20:54'),
(32, 1, 1, '2016-03-25 09:20:54'),
(32, 2, 1, '2016-03-25 09:20:54'),
(32, 36, 1, '2016-03-25 09:20:54'),
(32, 43, 1, '2016-03-25 09:20:54'),
(33, 1, 1, '2016-03-25 09:20:54'),
(33, 2, 1, '2016-03-25 09:20:54'),
(33, 37, 1, '2016-03-25 09:20:54'),
(33, 43, 1, '2016-03-25 09:20:54'),
(34, 1, 1, '2016-03-25 09:20:54'),
(34, 2, 1, '2016-03-25 09:20:54'),
(34, 38, 1, '2016-03-25 09:20:54'),
(34, 48, 1, '2016-03-25 09:20:54'),
(35, 1, 1, '2016-03-25 09:20:54'),
(35, 2, 1, '2016-03-25 09:20:54'),
(35, 39, 1, '2016-03-25 09:20:54'),
(35, 48, 1, '2016-03-25 09:20:54'),
(36, 1, 1, '2016-03-25 09:20:54'),
(36, 2, 1, '2016-03-25 09:20:54'),
(36, 35, 1, '2016-03-25 09:20:54'),
(36, 40, 1, '2016-03-25 09:20:54'),
(37, 1, 1, '2016-03-25 09:20:54'),
(37, 2, 1, '2016-03-25 09:20:54'),
(37, 41, 1, '2016-03-25 09:20:54'),
(37, 48, 1, '2016-03-25 09:20:54'),
(38, 1, 1, '2016-03-25 09:20:54'),
(38, 2, 1, '2016-03-25 09:20:54'),
(38, 35, 1, '2016-03-25 09:20:54'),
(38, 42, 1, '2016-03-25 09:20:54'),
(39, 1, 1, '2016-03-25 09:20:54'),
(39, 2, 1, '2016-03-25 09:20:54'),
(39, 35, 1, '2016-03-25 09:20:54'),
(39, 44, 1, '2016-03-25 09:20:54'),
(40, 1, 1, '2016-03-25 09:20:54'),
(40, 2, 1, '2016-03-25 09:20:54'),
(40, 45, 1, '2016-03-25 09:20:54'),
(40, 47, 1, '2016-03-25 09:20:54'),
(41, 1, 1, '2016-03-25 09:20:54'),
(41, 2, 1, '2016-03-25 09:20:54'),
(41, 34, 1, '2016-03-25 09:20:54'),
(41, 46, 1, '2016-03-25 09:20:54'),
(42, 1, 1, '2016-03-25 09:20:54'),
(42, 2, 1, '2016-03-25 09:20:54'),
(42, 48, 1, '2016-03-25 09:20:54'),
(42, 49, 1, '2016-03-25 09:20:54'),
(43, 1, 1, '2016-03-25 09:20:54'),
(43, 2, 1, '2016-03-25 09:20:54'),
(43, 48, 1, '2016-03-25 09:20:54'),
(43, 50, 1, '2016-03-25 09:20:54'),
(44, 1, 1, '2016-03-25 09:20:54'),
(44, 2, 1, '2016-03-25 09:20:54'),
(44, 35, 1, '2016-03-25 09:20:54'),
(44, 51, 1, '2016-03-25 09:20:54'),
(45, 1, 1, '2016-03-25 09:20:54'),
(45, 2, 1, '2016-03-25 09:20:54'),
(45, 34, 1, '2016-03-25 09:20:54'),
(45, 52, 1, '2016-03-25 09:20:54'),
(46, 1, 1, '2016-03-25 09:20:54'),
(46, 2, 1, '2016-03-25 09:20:54'),
(46, 47, 1, '2016-03-25 09:20:54'),
(46, 53, 1, '2016-03-25 09:20:54'),
(47, 1, 1, '2016-03-25 09:20:54'),
(47, 2, 1, '2016-03-25 09:20:54'),
(47, 34, 1, '2016-03-25 09:20:54'),
(47, 54, 1, '2016-03-25 09:20:54'),
(48, 1, 1, '2016-03-25 09:20:54'),
(48, 2, 1, '2016-03-25 09:20:54'),
(48, 43, 1, '2016-03-25 09:20:54'),
(48, 55, 1, '2016-03-25 09:20:54');

-- --------------------------------------------------------

--
-- Structure de la table `securite_star`
--

CREATE TABLE `securite_star` (
  `ID_MAGASIN` int(11) NOT NULL COMMENT 'Visibilite des donnees du magasin',
  `ID_PROFIL` int(11) NOT NULL COMMENT 'Visibilite du profil',
  `ONGLET` int(11) NOT NULL COMMENT 'Selon l''onglet du tableau de bord, des informations peuvent etre necessaires',
  `DATEMAJ_SECURITE` timestamp NOT NULL COMMENT 'Date de la derniere mise a jour'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Visibilite en fonction du profil (etoile)';

--
-- Contenu de la table `securite_star`
--

INSERT INTO `securite_star` (`ID_MAGASIN`, `ID_PROFIL`, `ONGLET`, `DATEMAJ_SECURITE`) VALUES
(1, 1, 1, '2016-03-25 09:20:54'),
(2, 1, 1, '2016-03-25 09:20:54'),
(3, 1, 1, '2016-03-25 09:20:54'),
(4, 1, 1, '2016-03-25 09:20:54'),
(5, 1, 1, '2016-03-25 09:20:54'),
(6, 1, 1, '2016-03-25 09:20:54'),
(7, 1, 1, '2016-03-25 09:20:54'),
(8, 1, 1, '2016-03-25 09:20:54'),
(9, 1, 1, '2016-03-25 09:20:54'),
(10, 1, 1, '2016-03-25 09:20:54'),
(11, 1, 1, '2016-03-25 09:20:54'),
(12, 1, 1, '2016-03-25 09:20:54'),
(13, 1, 1, '2016-03-25 09:20:54'),
(14, 1, 1, '2016-03-25 09:20:54'),
(15, 1, 1, '2016-03-25 09:20:54'),
(16, 1, 1, '2016-03-25 09:20:54'),
(17, 1, 1, '2016-03-25 09:20:54'),
(18, 1, 1, '2016-03-25 09:20:54'),
(19, 1, 1, '2016-03-25 09:20:54'),
(20, 1, 1, '2016-03-25 09:20:54'),
(21, 1, 1, '2016-03-25 09:20:54'),
(22, 1, 1, '2016-03-25 09:20:54'),
(23, 1, 1, '2016-03-25 09:20:54'),
(24, 1, 1, '2016-03-25 09:20:54'),
(25, 1, 1, '2016-03-25 09:20:54'),
(26, 1, 1, '2016-03-25 09:20:54'),
(27, 1, 1, '2016-03-25 09:20:54'),
(28, 1, 1, '2016-03-25 09:20:54'),
(29, 1, 1, '2016-03-25 09:20:54'),
(30, 1, 1, '2016-03-25 09:20:54'),
(31, 1, 1, '2016-03-25 09:20:54'),
(32, 1, 1, '2016-03-25 09:20:54'),
(33, 1, 1, '2016-03-25 09:20:54'),
(34, 1, 1, '2016-03-25 09:20:54'),
(35, 1, 1, '2016-03-25 09:20:54'),
(36, 1, 1, '2016-03-25 09:20:54'),
(37, 1, 1, '2016-03-25 09:20:54'),
(38, 1, 1, '2016-03-25 09:20:54'),
(39, 1, 1, '2016-03-25 09:20:54'),
(40, 1, 1, '2016-03-25 09:20:54'),
(41, 1, 1, '2016-03-25 09:20:54'),
(42, 1, 1, '2016-03-25 09:20:54'),
(43, 1, 1, '2016-03-25 09:20:54'),
(44, 1, 1, '2016-03-25 09:20:54'),
(45, 1, 1, '2016-03-25 09:20:54'),
(46, 1, 1, '2016-03-25 09:20:54'),
(47, 1, 1, '2016-03-25 09:20:54'),
(48, 1, 1, '2016-03-25 09:20:54'),
(1, 2, 1, '2016-03-25 09:20:54'),
(2, 2, 1, '2016-03-25 09:20:54'),
(3, 2, 1, '2016-03-25 09:20:54'),
(4, 2, 1, '2016-03-25 09:20:54'),
(5, 2, 1, '2016-03-25 09:20:54'),
(6, 2, 1, '2016-03-25 09:20:54'),
(7, 2, 1, '2016-03-25 09:20:54'),
(8, 2, 1, '2016-03-25 09:20:54'),
(9, 2, 1, '2016-03-25 09:20:54'),
(10, 2, 1, '2016-03-25 09:20:54'),
(11, 2, 1, '2016-03-25 09:20:54'),
(12, 2, 1, '2016-03-25 09:20:54'),
(13, 2, 1, '2016-03-25 09:20:54'),
(14, 2, 1, '2016-03-25 09:20:54'),
(15, 2, 1, '2016-03-25 09:20:54'),
(16, 2, 1, '2016-03-25 09:20:54'),
(17, 2, 1, '2016-03-25 09:20:54'),
(18, 2, 1, '2016-03-25 09:20:54'),
(19, 2, 1, '2016-03-25 09:20:54'),
(20, 2, 1, '2016-03-25 09:20:54'),
(21, 2, 1, '2016-03-25 09:20:54'),
(22, 2, 1, '2016-03-25 09:20:54'),
(23, 2, 1, '2016-03-25 09:20:54'),
(24, 2, 1, '2016-03-25 09:20:54'),
(25, 2, 1, '2016-03-25 09:20:54'),
(26, 2, 1, '2016-03-25 09:20:54'),
(27, 2, 1, '2016-03-25 09:20:54'),
(28, 2, 1, '2016-03-25 09:20:54'),
(29, 2, 1, '2016-03-25 09:20:54'),
(30, 2, 1, '2016-03-25 09:20:54'),
(31, 2, 1, '2016-03-25 09:20:54'),
(32, 2, 1, '2016-03-25 09:20:54'),
(33, 2, 1, '2016-03-25 09:20:54'),
(34, 2, 1, '2016-03-25 09:20:54'),
(35, 2, 1, '2016-03-25 09:20:54'),
(36, 2, 1, '2016-03-25 09:20:54'),
(37, 2, 1, '2016-03-25 09:20:54'),
(38, 2, 1, '2016-03-25 09:20:54'),
(39, 2, 1, '2016-03-25 09:20:54'),
(40, 2, 1, '2016-03-25 09:20:54'),
(41, 2, 1, '2016-03-25 09:20:54'),
(42, 2, 1, '2016-03-25 09:20:54'),
(43, 2, 1, '2016-03-25 09:20:54'),
(44, 2, 1, '2016-03-25 09:20:54'),
(45, 2, 1, '2016-03-25 09:20:54'),
(46, 2, 1, '2016-03-25 09:20:54'),
(47, 2, 1, '2016-03-25 09:20:54'),
(48, 2, 1, '2016-03-25 09:20:54'),
(1, 3, 1, '2016-03-25 09:20:54'),
(2, 4, 1, '2016-03-25 09:20:54'),
(3, 5, 1, '2016-03-25 09:20:54'),
(4, 6, 1, '2016-03-25 09:20:54'),
(5, 7, 1, '2016-03-25 09:20:54'),
(6, 8, 1, '2016-03-25 09:20:54'),
(7, 9, 1, '2016-03-25 09:20:54'),
(8, 10, 1, '2016-03-25 09:20:54'),
(9, 11, 1, '2016-03-25 09:20:54'),
(10, 12, 1, '2016-03-25 09:20:54'),
(11, 13, 1, '2016-03-25 09:20:54'),
(12, 14, 1, '2016-03-25 09:20:54'),
(13, 15, 1, '2016-03-25 09:20:54'),
(14, 16, 1, '2016-03-25 09:20:54'),
(15, 17, 1, '2016-03-25 09:20:54'),
(16, 18, 1, '2016-03-25 09:20:54'),
(17, 19, 1, '2016-03-25 09:20:54'),
(18, 20, 1, '2016-03-25 09:20:54'),
(19, 21, 1, '2016-03-25 09:20:54'),
(20, 22, 1, '2016-03-25 09:20:54'),
(21, 23, 1, '2016-03-25 09:20:54'),
(22, 24, 1, '2016-03-25 09:20:54'),
(23, 25, 1, '2016-03-25 09:20:54'),
(24, 26, 1, '2016-03-25 09:20:54'),
(25, 27, 1, '2016-03-25 09:20:54'),
(26, 28, 1, '2016-03-25 09:20:54'),
(27, 29, 1, '2016-03-25 09:20:54'),
(28, 30, 1, '2016-03-25 09:20:54'),
(29, 31, 1, '2016-03-25 09:20:54'),
(30, 32, 1, '2016-03-25 09:20:54'),
(31, 33, 1, '2016-03-25 09:20:54'),
(5, 34, 1, '2016-03-25 09:20:54'),
(7, 34, 1, '2016-03-25 09:20:54'),
(17, 34, 1, '2016-03-25 09:20:54'),
(21, 34, 1, '2016-03-25 09:20:54'),
(26, 34, 1, '2016-03-25 09:20:54'),
(27, 34, 1, '2016-03-25 09:20:54'),
(41, 34, 1, '2016-03-25 09:20:54'),
(45, 34, 1, '2016-03-25 09:20:54'),
(47, 34, 1, '2016-03-25 09:20:54'),
(1, 35, 1, '2016-03-25 09:20:54'),
(2, 35, 1, '2016-03-25 09:20:54'),
(3, 35, 1, '2016-03-25 09:20:54'),
(29, 35, 1, '2016-03-25 09:20:54'),
(36, 35, 1, '2016-03-25 09:20:54'),
(38, 35, 1, '2016-03-25 09:20:54'),
(39, 35, 1, '2016-03-25 09:20:54'),
(44, 35, 1, '2016-03-25 09:20:54'),
(32, 36, 1, '2016-03-25 09:20:54'),
(33, 37, 1, '2016-03-25 09:20:54'),
(34, 38, 1, '2016-03-25 09:20:54'),
(35, 39, 1, '2016-03-25 09:20:54'),
(36, 40, 1, '2016-03-25 09:20:54'),
(37, 41, 1, '2016-03-25 09:20:54'),
(38, 42, 1, '2016-03-25 09:20:54'),
(8, 43, 1, '2016-03-25 09:20:54'),
(12, 43, 1, '2016-03-25 09:20:54'),
(15, 43, 1, '2016-03-25 09:20:54'),
(18, 43, 1, '2016-03-25 09:20:54'),
(25, 43, 1, '2016-03-25 09:20:54'),
(28, 43, 1, '2016-03-25 09:20:54'),
(32, 43, 1, '2016-03-25 09:20:54'),
(33, 43, 1, '2016-03-25 09:20:54'),
(48, 43, 1, '2016-03-25 09:20:54'),
(39, 44, 1, '2016-03-25 09:20:54'),
(40, 45, 1, '2016-03-25 09:20:54'),
(41, 46, 1, '2016-03-25 09:20:54'),
(6, 47, 1, '2016-03-25 09:20:54'),
(10, 47, 1, '2016-03-25 09:20:54'),
(13, 47, 1, '2016-03-25 09:20:54'),
(14, 47, 1, '2016-03-25 09:20:54'),
(16, 47, 1, '2016-03-25 09:20:54'),
(20, 47, 1, '2016-03-25 09:20:54'),
(23, 47, 1, '2016-03-25 09:20:54'),
(24, 47, 1, '2016-03-25 09:20:54'),
(30, 47, 1, '2016-03-25 09:20:54'),
(31, 47, 1, '2016-03-25 09:20:54'),
(40, 47, 1, '2016-03-25 09:20:54'),
(46, 47, 1, '2016-03-25 09:20:54'),
(4, 48, 1, '2016-03-25 09:20:54'),
(9, 48, 1, '2016-03-25 09:20:54'),
(11, 48, 1, '2016-03-25 09:20:54'),
(19, 48, 1, '2016-03-25 09:20:54'),
(22, 48, 1, '2016-03-25 09:20:54'),
(34, 48, 1, '2016-03-25 09:20:54'),
(35, 48, 1, '2016-03-25 09:20:54'),
(37, 48, 1, '2016-03-25 09:20:54'),
(42, 48, 1, '2016-03-25 09:20:54'),
(43, 48, 1, '2016-03-25 09:20:54'),
(42, 49, 1, '2016-03-25 09:20:54'),
(43, 50, 1, '2016-03-25 09:20:54'),
(44, 51, 1, '2016-03-25 09:20:54'),
(45, 52, 1, '2016-03-25 09:20:54'),
(46, 53, 1, '2016-03-25 09:20:54'),
(47, 54, 1, '2016-03-25 09:20:54'),
(48, 55, 1, '2016-03-25 09:20:54');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `select_cumul`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `select_cumul` (
`CODE` bigint(20)
,`LIB_CUMUL` varchar(11)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `select_devise`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `select_devise` (
`CODE` int(11)
,`LIB_devise` varchar(10)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `select_enseigne`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `select_enseigne` (
`CODE` bigint(11)
,`LIB_ENSEIGNE` varchar(32)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `select_famille_produit`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `select_famille_produit` (
`CODE` bigint(11)
,`LIB_FAMILLE` varchar(32)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `select_indicateur`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `select_indicateur` (
`CODE` bigint(20)
,`LIB_IND` varchar(20)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `select_onglet`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `select_onglet` (
`CODE` bigint(20)
,`LIB_ONGLET` varchar(10)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `select_temps`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `select_temps` (
`CODE_TEMPS` varchar(81)
,`LIB_TEMPS` varchar(92)
,`ORDRE` decimal(39,0)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `select_user`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `select_user` (
`CODE` int(11)
,`USERNAME` varchar(50)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `select_zone_geo`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `select_zone_geo` (
`CODE` bigint(20)
,`LIBELLE` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `ID` int(11) NOT NULL COMMENT 'Identifiant de l''utilisateur',
  `NOM` varchar(50) NOT NULL COMMENT 'Nom de l''utilisateur',
  `PRENOM` varchar(50) NOT NULL COMMENT 'Prenom  de l''utilisateur',
  `USERNAME` varchar(50) NOT NULL COMMENT 'Login de l''utilisateur',
  `PASSWORD` varchar(10) NOT NULL COMMENT 'Mot de passe de l''utilisateur',
  `MAIL` varchar(100) NOT NULL COMMENT 'Adresse electronique de l''utilisateur',
  `ID_PROFIL` int(11) NOT NULL COMMENT 'Reference au profil de l''utilisateur',
  `DATEMAJ_USER` timestamp NOT NULL COMMENT 'Date de la derniere mise a jour'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Les utilisateurs du portail';

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`ID`, `NOM`, `PRENOM`, `USERNAME`, `PASSWORD`, `MAIL`, `ID_PROFIL`, `DATEMAJ_USER`) VALUES
(1, 'AUDIBERT', 'Javier', 'Javier.AUDIBERT', '4AfgG97', 'Javier.AUDIBERT@darties.com', 1, '2016-03-25 09:20:54'),
(2, 'DROUIN', 'Dominic', 'Dominic.DROUIN', 't2eJ76Z', 'Dominic.DROUIN@darties.com', 2, '2016-03-25 09:20:54'),
(3, 'ROUX', 'Angelique', 'Angelique.ROUX', '7u2Mx4W', 'Angelique.ROUX@darties.com', 3, '2016-03-25 09:20:54'),
(4, 'BOUTOT', 'Angelle', 'Angelle.BOUTOT', '9M2jyH3', 'Angelle.BOUTOT@darties.com', 4, '2016-03-25 09:20:54'),
(5, 'DESCOTEAUX', 'Huguette', 'Huguette.DESCOTEAUX', '33j7UvW', 'Huguette.DESCOTEAUX@darties.com', 5, '2016-03-25 09:20:54'),
(6, 'DUBEAU', 'Pascal', 'Pascal.DUBEAU', '59Cx6eX', 'Pascal.DUBEAU@darties.com', 6, '2016-03-25 09:20:54'),
(7, 'PAIMBOEUF', 'Laurent', 'Laurent.PAIMBOEUF', 'wX2J4a9', 'Laurent.PAIMBOEUF@darties.com', 7, '2016-03-25 09:20:54'),
(8, 'SAUCIER', 'Yves', 'Yves.SAUCIER', 'Un38y7C', 'Yves.SAUCIER@darties.com', 8, '2016-03-25 09:20:54'),
(9, 'GAUTHIER', 'Robert', 'Robert.GAUTHIER', 'F2Se72u', 'Robert.GAUTHIER@darties.com', 9, '2016-03-25 09:20:54'),
(10, 'BERNIER', 'Estelle', 'Estelle.BERNIER', 'CJ62hy9', 'Estelle.BERNIER@darties.com', 10, '2016-03-25 09:20:54'),
(11, 'VIENS', 'Aurore', 'Aurore.VIENS', 'E8X2yd7', 'Aurore.VIENS@darties.Com', 11, '2016-03-25 09:20:54'),
(12, 'GAGNEUX', 'Charles', 'Charles.GAGNEUX', 'Xd64cG9', 'Charles.GAGNEUX@darties.com', 12, '2016-03-25 09:20:54'),
(13, 'MELANSON', 'Gustave', 'Gustave.MELANSON', 'XZy67c6', 'Gustave.MELANSON@darties.com', 13, '2016-03-25 09:20:54'),
(14, 'SAVOIE', 'David', 'David.SAVOIE', 'W63yk8B', 'David.SAVOIE@darties.com', 14, '2016-03-25 09:20:54'),
(15, 'SAINDON', 'Edward', 'Edward.SAINDON', 'hr9F4X9', 'Edward.SAINDON@darties.com', 15, '2016-03-25 09:20:54'),
(16, 'BORDOUX', 'Isabelle', 'Isabelle.BORDOUX', '49Vn6zC', 'Isabelle.BORDOUX@darties.com', 16, '2016-03-25 09:20:54'),
(17, 'LACHARITE', 'Joanna', 'Joanna.LACHARITE', 'y7eN4V9', 'Joanna.LACHARITE@darties.com', 17, '2016-03-25 09:20:54'),
(18, 'BONNEVILLE', 'Damiane', 'Damiane.BONNEVILLE', 'S22tTv2', 'Damiane.BONNEVILLE@darties.com', 18, '2016-03-25 09:20:54'),
(19, 'PROULE', 'Lucas', 'Lucas.PROULE', '3YT56vn', 'Lucas.PROULE@darties.com', 19, '2016-03-25 09:20:54'),
(20, 'CHARPENTIER', 'Jeoffroi', 'Jeoffroi.CHARPENTIER', '8x3Bx3T', 'Jeoffroi.CHARPENTIER@darties.com', 20, '2016-03-25 09:20:54'),
(21, 'SEGIN', 'Stephane ', 'Stephane.SEGIN', '227wTTg', 'Stephane.SEGIN@darties.com', 21, '2016-03-25 09:20:54'),
(22, 'LEJEUNE', 'Romain', 'Romain.LEJEUNE', '4L5Cjh8', 'Romain.LEJEUNE@darties.com', 22, '2016-03-25 09:20:54'),
(23, 'LAFRAMMOISE', 'Paul', 'Paul.LAFRAMMOISE', 'fP67Xb9', 'Paul.LAFRAMMOISE@darties.com', 23, '2016-03-25 09:20:54'),
(24, 'MOREL', 'Claude', 'Claude.MOREL', '9zP6vS2', 'Claude.MOREL@darties.com', 24, '2016-03-25 09:20:54'),
(25, 'GODDU', 'Bertrand', 'Bertrand.GODDU', '28Qi9Wk', 'Bertrand.GODDU@darties.com', 25, '2016-03-25 09:20:54'),
(26, 'LEPICIER', 'Laetitia', 'Laetitia.LEPICIER', 'bqT483T', 'Laetitia.LEPICIER@darties.com', 26, '2016-03-25 09:20:54'),
(27, 'CHANDONNET', 'Marguerite', 'Marguerite.CHANDONNET', '2jN8i2X', 'Marguerite.CHANDONNET@darties.com', 27, '2016-03-25 09:20:54'),
(28, 'LECHAMPS', 'Maurice', 'Maurice.LECHAMPS', 'x4Br95Z', 'Maurice.LECHAMPS@darties.com', 28, '2016-03-25 09:20:54'),
(29, 'DELAPOSE', 'Audrey ', 'Audrey.DELAPOSE', '4sgV93U', 'Audrey.DELAPOSE@darties.com', 29, '2016-03-25 09:20:54'),
(30, 'AUDRAN', 'Emilie', 'Emilie.AUDRAN', '8qeP56Y', 'Emilie.AUDRAN@darties.com', 30, '2016-03-25 09:20:54'),
(31, 'DEDIAUX', 'Benjamin', 'Benjamin.DEDIAUX', '988hRnC', 'Benjamin.DEDIAUX@darties.com', 31, '2016-03-25 09:20:54'),
(32, 'LAURENT', 'Thomas', 'Thomas.LAURENT', '3Me5Z9h', 'Thomas.LAURENT@darties.com', 32, '2016-03-25 09:20:54'),
(33, 'DEY', 'Benoit', 'Benoit.DEY', '8G7Lfi6', 'Benoit.DEY@darties.com', 33, '2016-03-25 09:20:54'),
(34, 'DELAUNAY', 'Angelique', 'Angelique.DELAUNAY', 'g6Gb25T', 'Angelique.DELAUNAY@darties.com', 34, '2016-03-25 09:20:54'),
(35, 'LEGRAND', 'Alexis', 'Alexis.LEGRAND', '7u4d5XP', 'Alexis.LEGRAND@darties.com', 35, '2016-03-25 09:20:54'),
(36, 'VALLE', 'Marc', 'Marc.VALLE', 'c63L9zG', 'Marc.VALLE@darties.com', 36, '2016-03-25 09:20:54'),
(37, 'GIGUERE', 'Gilbert', 'Gilbert.GIGUERE', 'MT8t6w8', 'Gilbert.GIGUERE@darties.com', 37, '2016-03-25 09:20:54'),
(38, 'BEAULIEU', 'Theophile', 'Theophile.BEAULIEU', '9znW65L', 'Theophile.BEAULIEU@darties.com', 38, '2016-03-25 09:20:54'),
(39, 'TANGUAY', 'Lea', 'Lea.TANGUAY', 'x9F6zN9', 'Lea.TANGUAY@darties.com', 39, '2016-03-25 09:20:54'),
(40, 'ZACHARE', 'Patrick', 'Patrick.ZACHARE', '6jAg55V', 'Patrick.ZACHARE@darties.com', 40, '2016-03-25 09:20:54'),
(41, 'FROCHET', 'Elise', 'Elise.FROCHET', '4e69aEB', 'Elise.FROCHET@darties.com', 41, '2016-03-25 09:20:54'),
(42, 'FORTER', 'Louis', 'Louis.FORTER', 'ja82R2Z', 'Louis.FORTER@darties.com', 42, '2016-03-25 09:20:54'),
(43, 'JACKSON', 'William', 'William.JACKSON', 'fV9rY56', 'William.JACKSON@darties.com', 43, '2016-03-25 09:20:54'),
(44, 'ADAMS', 'Georges', 'Georges.ADAMS', 'gPzY863', 'Georges.ADAMS@darties.com', 44, '2016-03-25 09:20:54'),
(45, 'CARTER', 'Harry', 'Harry.CARTER', 'zB5e3D8', 'Harry.CARTER@darties.com', 45, '2016-03-25 09:20:54'),
(46, 'JOHNSON', 'Jimmy', 'Jimmy.JOHNSON', '579BHrp', 'Jimmy.JOHNSON@darties.com', 46, '2016-03-25 09:20:54'),
(47, 'BUCHANAN', 'Martin', 'Martin.BUCHANAN', 'mDPp867', 'Martin.BUCHANAN@darties.com', 47, '2016-03-25 09:20:54'),
(48, 'PIERCE', 'James', 'James.PIERCE', 'P58qg3J', 'James.PIERCE@darties.com', 48, '2016-03-25 09:20:54'),
(49, 'COOLIDGE', 'Emma', 'Emma.COOLIDGE', 'qW436sF', 'Emma.COOLIDGE@darties.com', 49, '2016-03-25 09:20:54'),
(50, 'HAYES', 'Richard', 'Richard.HAYES', '5n8Hs2W', 'Richard.HAYES@darties.com', 50, '2016-03-25 09:20:54'),
(51, 'CLEVELAND', 'Taylor', 'Taylor.CLEVELAND', '662wYNv', 'Taylor.CLEVELAND@darties.com', 51, '2016-03-25 09:20:54'),
(52, 'MADISON', 'Warren', 'Warren.MADISON', 'J95Pdx8', 'Warren.MADISON@darties.com', 52, '2016-03-25 09:20:54'),
(53, 'REAGAN', 'Arthur', 'Arthur.REAGAN', '3Jeh6G7', 'Arthur.REAGAN@darties.com', 53, '2016-03-25 09:20:54'),
(54, 'EVENO', 'Julie', 'Julie.EVENO', '7DusL99', 'Julie.EVENO@darties.com', 54, '2016-03-25 09:20:54'),
(55, 'OLIVER', 'Aurelie', 'Aurelie.OLIVER', 'tkHS596', 'Aurelie.OLIVER@darties.com', 55, '2016-03-25 09:20:54');

-- --------------------------------------------------------

--
-- Structure de la vue `data_0`
--
DROP TABLE IF EXISTS `data_0`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `data_0`  AS  select `select_temps`.`CODE_TEMPS` AS `CODE_TEMPS`,`select_temps`.`LIB_TEMPS` AS `LIB_TEMPS`,`select_temps`.`ORDRE` AS `ORDRE`,`requete_temps_0`.`CODE` AS `CODE`,`data`.`ID_MAGASIN` AS `ID_MAGASIN`,`data`.`ID_FAMILLE_PRODUIT` AS `ID_FAMILLE_PRODUIT`,`data`.`ID_TEMPS` AS `ID_TEMPS`,`data`.`INDICATEUR` AS `INDICATEUR`,`data`.`OBJECTIF` AS `OBJECTIF`,`data`.`REEL` AS `REEL`,`data`.`DATE_MAJ` AS `DATE_MAJ`,`data`.`LIB_FAMILLE_PRODUIT` AS `LIB_FAMILLE_PRODUIT`,`data`.`DATEMAJ_FAMPROD` AS `DATEMAJ_FAMPROD`,`data`.`ID_ENSEIGNE` AS `ID_ENSEIGNE`,`data`.`ACTIF` AS `ACTIF`,`data`.`DATE_OUVERTURE` AS `DATE_OUVERTURE`,`data`.`DATE_FERMETURE` AS `DATE_FERMETURE`,`data`.`DATE_MAJ_MAG` AS `DATE_MAJ_MAG`,`data`.`EMPLACEMENTS` AS `EMPLACEMENTS`,`data`.`NB_CAISSES` AS `NB_CAISSES`,`data`.`VILLE` AS `VILLE`,`data`.`DEP` AS `DEP`,`data`.`FICHIER_IMAGE_CARTE_MAGASIN` AS `FICHIER_IMAGE_CARTE_MAGASIN`,`data`.`ONGLET` AS `ONGLET`,`data`.`DATEMAJ_SECURITE` AS `DATEMAJ_SECURITE`,`data`.`ID_PROFIL` AS `ID_PROFIL`,`data`.`LIB_PROFIL` AS `LIB_PROFIL`,`data`.`TYPE_ZONE` AS `TYPE_ZONE`,`data`.`ID_ZONE` AS `ID_ZONE`,`data`.`USERNAME_BO` AS `USERNAME_BO`,`data`.`PASSWORD_BO` AS `PASSWORD_BO`,`data`.`DATEMAJ_PROFIL` AS `DATEMAJ_PROFIL`,`data`.`ID` AS `ID`,`data`.`NOM` AS `NOM`,`data`.`PRENOM` AS `PRENOM`,`data`.`USERNAME` AS `USERNAME`,`data`.`PASSWORD` AS `PASSWORD`,`data`.`MAIL` AS `MAIL`,`data`.`DATEMAJ_USER` AS `DATEMAJ_USER`,`data`.`LIB_ENSEIGNE` AS `LIB_ENSEIGNE`,`data`.`FICHIER_IMAGE_LOGO_ENSEIGNE` AS `FICHIER_IMAGE_LOGO_ENSEIGNE`,`data`.`DATEMAJ_ENSEIGNE` AS `DATEMAJ_ENSEIGNE`,`data`.`ID_DEPARTEMENT` AS `ID_DEPARTEMENT`,`data`.`CODE_DEPARTEMENT` AS `CODE_DEPARTEMENT`,`data`.`LIB_DEPARTEMENT` AS `LIB_DEPARTEMENT`,`data`.`ID_REGION_ADMIN1` AS `ID_REGION_ADMIN1`,`data`.`ID_REGION_ADMIN2` AS `ID_REGION_ADMIN2`,`data`.`ID_REGION_COM` AS `ID_REGION_COM`,`data`.`DATEMAJ_DEP` AS `DATEMAJ_DEP`,substr(`data`.`ID_TEMPS`,1,4) AS `ANNEE`,substr(`data`.`ID_TEMPS`,5,2) AS `MOIS`,(case `data`.`INDICATEUR` when 'CA' then 1 when 'VENTES' then 2 when 'MARGE' then 3 else 0 end) AS `id_i` from ((`select_temps` join `requete_temps_0` on((`select_temps`.`CODE_TEMPS` = `requete_temps_0`.`CODE`))) join `data` on((`data`.`ID_TEMPS` = convert(`requete_temps_0`.`ID_TEMPS` using utf8)))) ;

-- --------------------------------------------------------

--
-- Structure de la vue `data_1`
--
DROP TABLE IF EXISTS `data_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `data_1`  AS  select `select_temps`.`CODE_TEMPS` AS `CODE_TEMPS`,`select_temps`.`LIB_TEMPS` AS `LIB_TEMPS`,`select_temps`.`ORDRE` AS `ORDRE`,`requete_temps_1`.`CODE` AS `CODE`,`data`.`ID_MAGASIN` AS `ID_MAGASIN`,`data`.`ID_FAMILLE_PRODUIT` AS `ID_FAMILLE_PRODUIT`,`data`.`ID_TEMPS` AS `ID_TEMPS`,`data`.`INDICATEUR` AS `INDICATEUR`,`data`.`OBJECTIF` AS `OBJECTIF`,`data`.`REEL` AS `REEL`,`data`.`DATE_MAJ` AS `DATE_MAJ`,`data`.`LIB_FAMILLE_PRODUIT` AS `LIB_FAMILLE_PRODUIT`,`data`.`DATEMAJ_FAMPROD` AS `DATEMAJ_FAMPROD`,`data`.`ID_ENSEIGNE` AS `ID_ENSEIGNE`,`data`.`ACTIF` AS `ACTIF`,`data`.`DATE_OUVERTURE` AS `DATE_OUVERTURE`,`data`.`DATE_FERMETURE` AS `DATE_FERMETURE`,`data`.`DATE_MAJ_MAG` AS `DATE_MAJ_MAG`,`data`.`EMPLACEMENTS` AS `EMPLACEMENTS`,`data`.`NB_CAISSES` AS `NB_CAISSES`,`data`.`VILLE` AS `VILLE`,`data`.`DEP` AS `DEP`,`data`.`FICHIER_IMAGE_CARTE_MAGASIN` AS `FICHIER_IMAGE_CARTE_MAGASIN`,`data`.`ONGLET` AS `ONGLET`,`data`.`DATEMAJ_SECURITE` AS `DATEMAJ_SECURITE`,`data`.`ID_PROFIL` AS `ID_PROFIL`,`data`.`LIB_PROFIL` AS `LIB_PROFIL`,`data`.`TYPE_ZONE` AS `TYPE_ZONE`,`data`.`ID_ZONE` AS `ID_ZONE`,`data`.`USERNAME_BO` AS `USERNAME_BO`,`data`.`PASSWORD_BO` AS `PASSWORD_BO`,`data`.`DATEMAJ_PROFIL` AS `DATEMAJ_PROFIL`,`data`.`ID` AS `ID`,`data`.`NOM` AS `NOM`,`data`.`PRENOM` AS `PRENOM`,`data`.`USERNAME` AS `USERNAME`,`data`.`PASSWORD` AS `PASSWORD`,`data`.`MAIL` AS `MAIL`,`data`.`DATEMAJ_USER` AS `DATEMAJ_USER`,`data`.`LIB_ENSEIGNE` AS `LIB_ENSEIGNE`,`data`.`FICHIER_IMAGE_LOGO_ENSEIGNE` AS `FICHIER_IMAGE_LOGO_ENSEIGNE`,`data`.`DATEMAJ_ENSEIGNE` AS `DATEMAJ_ENSEIGNE`,`data`.`ID_DEPARTEMENT` AS `ID_DEPARTEMENT`,`data`.`CODE_DEPARTEMENT` AS `CODE_DEPARTEMENT`,`data`.`LIB_DEPARTEMENT` AS `LIB_DEPARTEMENT`,`data`.`ID_REGION_ADMIN1` AS `ID_REGION_ADMIN1`,`data`.`ID_REGION_ADMIN2` AS `ID_REGION_ADMIN2`,`data`.`ID_REGION_COM` AS `ID_REGION_COM`,`data`.`DATEMAJ_DEP` AS `DATEMAJ_DEP`,substr(`data`.`ID_TEMPS`,1,4) AS `ANNEE`,substr(`data`.`ID_TEMPS`,5,2) AS `MOIS`,(case `data`.`INDICATEUR` when 'CA' then 1 when 'VENTES' then 2 when 'MARGE' then 3 else 0 end) AS `id_i` from ((`select_temps` join `requete_temps_1` on((`select_temps`.`CODE_TEMPS` = `requete_temps_1`.`CODE`))) join `data` on((`data`.`ID_TEMPS` = `requete_temps_1`.`ID_TEMPS`))) ;

-- --------------------------------------------------------

--
-- Structure de la vue `requete_enseigne`
--
DROP TABLE IF EXISTS `requete_enseigne`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `requete_enseigne`  AS  select 0 AS `CODE_ENSEIGNE`,`dim_enseigne`.`ID_ENSEIGNE` AS `ID_ENSEIGNE` from `dim_enseigne` union all select `dim_enseigne`.`ID_ENSEIGNE` AS `CODE_ENSEIGNE`,`dim_enseigne`.`ID_ENSEIGNE` AS `ID_ENSEIGNE` from `dim_enseigne` ;

-- --------------------------------------------------------

--
-- Structure de la vue `requete_famille`
--
DROP TABLE IF EXISTS `requete_famille`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `requete_famille`  AS  select 0 AS `CODE_FAMILLE`,`dim_famille_produit`.`ID_FAMILLE_PRODUIT` AS `ID_FAMILLE_PRODUIT` from `dim_famille_produit` union all select `dim_famille_produit`.`ID_FAMILLE_PRODUIT` AS `CODE_FAMILLE`,`dim_famille_produit`.`ID_FAMILLE_PRODUIT` AS `ID_FAMILLE_PRODUIT` from `dim_famille_produit` order by `CODE_FAMILLE` ;

-- --------------------------------------------------------

--
-- Structure de la vue `requete_geo`
--
DROP TABLE IF EXISTS `requete_geo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `requete_geo`  AS  select 0 AS `CODE`,`dim_magasin`.`ID_MAGASIN` AS `ID_MAGASIN` from `dim_magasin` union select (`dim_geographique_com`.`ID_REGION_COM` * 100) AS `dim_geographique_com.ID_REGION_COM*100`,`dim_magasin`.`ID_MAGASIN` AS `ID_MAGASIN` from ((`dim_geographique_com` join `dim_magasin`) join `dim_departement`) where ((`dim_magasin`.`DEP` = `dim_departement`.`ID_DEPARTEMENT`) and (`dim_geographique_com`.`ID_REGION_COM` = `dim_departement`.`ID_REGION_COM`)) union select ((`dim_departement`.`ID_REGION_COM` * 100) + `dim_magasin`.`ID_MAGASIN`) AS `CODE`,`dim_magasin`.`ID_MAGASIN` AS `ID_MAGASIN` from ((`dim_geographique_com` join `dim_magasin`) join `dim_departement`) where ((`dim_magasin`.`DEP` = `dim_departement`.`ID_DEPARTEMENT`) and (`dim_geographique_com`.`ID_REGION_COM` = `dim_departement`.`ID_REGION_COM`)) union select ((`dim_geographique_admin`.`ID_REGION_ADMIN` + 9) * 100) AS `CODE`,`dim_magasin`.`ID_MAGASIN` AS `ID_MAGASIN` from ((`dim_geographique_admin` join `dim_departement`) join `dim_magasin`) where ((`dim_magasin`.`DEP` = `dim_departement`.`ID_DEPARTEMENT`) and (`dim_geographique_admin`.`ID_REGION_ADMIN` = `dim_departement`.`ID_REGION_ADMIN1`) and (`dim_geographique_admin`.`ID_REGION_ADMIN` < 23)) union select (((`dim_geographique_admin`.`ID_REGION_ADMIN` + 9) * 100) + `dim_magasin`.`ID_MAGASIN`) AS `CODE`,`dim_magasin`.`ID_MAGASIN` AS `ID_MAGASIN` from ((`dim_geographique_admin` join `dim_departement`) join `dim_magasin`) where ((`dim_magasin`.`DEP` = `dim_departement`.`ID_DEPARTEMENT`) and (`dim_geographique_admin`.`ID_REGION_ADMIN` = `dim_departement`.`ID_REGION_ADMIN1`) and (`dim_geographique_admin`.`ID_REGION_ADMIN` < 23)) union select ((`dim_geographique_admin`.`ID_REGION_ADMIN` + 9) * 100) AS `CODE`,`dim_magasin`.`ID_MAGASIN` AS `ID_MAGASIN` from ((`dim_geographique_admin` join `dim_departement`) join `dim_magasin`) where ((`dim_magasin`.`DEP` = `dim_departement`.`ID_DEPARTEMENT`) and (`dim_geographique_admin`.`ID_REGION_ADMIN` = `dim_departement`.`ID_REGION_ADMIN2`) and (`dim_geographique_admin`.`ID_REGION_ADMIN` >= 23)) union select (((`dim_geographique_admin`.`ID_REGION_ADMIN` + 9) * 100) + `dim_magasin`.`ID_MAGASIN`) AS `CODE`,`dim_magasin`.`ID_MAGASIN` AS `ID_MAGASIN` from ((`dim_geographique_admin` join `dim_departement`) join `dim_magasin`) where ((`dim_magasin`.`DEP` = `dim_departement`.`ID_DEPARTEMENT`) and (`dim_geographique_admin`.`ID_REGION_ADMIN` = `dim_departement`.`ID_REGION_ADMIN2`) and (`dim_geographique_admin`.`ID_REGION_ADMIN` >= 23)) order by `CODE` ;

-- --------------------------------------------------------

--
-- Structure de la vue `requete_temps_0`
--
DROP TABLE IF EXISTS `requete_temps_0`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `requete_temps_0`  AS  select concat((year(now()) - 2),'_1_',(year(now()) - 2)) AS `CODE`,concat((year(now()) - 2),'01') AS `ID_TEMPS` union all select concat((year(now()) - 2),'_1_',(year(now()) - 2)) AS `CONCAT(YEAR(NOW())-2,'_1_',YEAR(NOW())-2)`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_1_',(year(now()) - 2)) AS `CONCAT(YEAR(NOW())-2,'_1_',YEAR(NOW())-2)`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_1_',(year(now()) - 2)) AS `CONCAT(YEAR(NOW())-2,'_1_',YEAR(NOW())-2)`,concat((year(now()) - 2),'04') AS `CONCAT(YEAR(NOW())-2,'04')` union all select concat((year(now()) - 2),'_1_',(year(now()) - 2)) AS `CONCAT(YEAR(NOW())-2,'_1_',YEAR(NOW())-2)`,concat((year(now()) - 2),'05') AS `CONCAT(YEAR(NOW())-2,'05')` union all select concat((year(now()) - 2),'_1_',(year(now()) - 2)) AS `CONCAT(YEAR(NOW())-2,'_1_',YEAR(NOW())-2)`,concat((year(now()) - 2),'06') AS `CONCAT(YEAR(NOW())-2,'06')` union all select concat((year(now()) - 2),'_1_',(year(now()) - 2)) AS `CONCAT(YEAR(NOW())-2,'_1_',YEAR(NOW())-2)`,concat((year(now()) - 2),'07') AS `CONCAT(YEAR(NOW())-2,'07')` union all select concat((year(now()) - 2),'_1_',(year(now()) - 2)) AS `CONCAT(YEAR(NOW())-2,'_1_',YEAR(NOW())-2)`,concat((year(now()) - 2),'08') AS `CONCAT(YEAR(NOW())-2,'08')` union all select concat((year(now()) - 2),'_1_',(year(now()) - 2)) AS `CONCAT(YEAR(NOW())-2,'_1_',YEAR(NOW())-2)`,concat((year(now()) - 2),'09') AS `CONCAT(YEAR(NOW())-2,'09')` union all select concat((year(now()) - 2),'_1_',(year(now()) - 2)) AS `CONCAT(YEAR(NOW())-2,'_1_',YEAR(NOW())-2)`,concat((year(now()) - 2),'10') AS `CONCAT(YEAR(NOW())-2,'10')` union all select concat((year(now()) - 2),'_1_',(year(now()) - 2)) AS `CONCAT(YEAR(NOW())-2,'_1_',YEAR(NOW())-2)`,concat((year(now()) - 2),'11') AS `CONCAT(YEAR(NOW())-2,'11')` union all select concat((year(now()) - 2),'_1_',(year(now()) - 2)) AS `CONCAT(YEAR(NOW())-2,'_1_',YEAR(NOW())-2)`,concat((year(now()) - 2),'12') AS `CONCAT(YEAR(NOW())-2,'12')` union all select concat((year(now()) - 2),'_2_1') AS `CONCAT(YEAR(NOW())-2,'_2_1')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_2_1') AS `CONCAT(YEAR(NOW())-2,'_2_1')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_2_1') AS `CONCAT(YEAR(NOW())-2,'_2_1')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_2_1') AS `CONCAT(YEAR(NOW())-2,'_2_1')`,concat((year(now()) - 2),'04') AS `CONCAT(YEAR(NOW())-2,'04')` union all select concat((year(now()) - 2),'_2_1') AS `CONCAT(YEAR(NOW())-2,'_2_1')`,concat((year(now()) - 2),'05') AS `CONCAT(YEAR(NOW())-2,'05')` union all select concat((year(now()) - 2),'_2_1') AS `CONCAT(YEAR(NOW())-2,'_2_1')`,concat((year(now()) - 2),'06') AS `CONCAT(YEAR(NOW())-2,'06')` union all select concat((year(now()) - 2),'_2_2') AS `CONCAT(YEAR(NOW())-2,'_2_2')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_2_2') AS `CONCAT(YEAR(NOW())-2,'_2_2')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_2_2') AS `CONCAT(YEAR(NOW())-2,'_2_2')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_2_2') AS `CONCAT(YEAR(NOW())-2,'_2_2')`,concat((year(now()) - 2),'04') AS `CONCAT(YEAR(NOW())-2,'04')` union all select concat((year(now()) - 2),'_2_2') AS `CONCAT(YEAR(NOW())-2,'_2_2')`,concat((year(now()) - 2),'05') AS `CONCAT(YEAR(NOW())-2,'05')` union all select concat((year(now()) - 2),'_2_2') AS `CONCAT(YEAR(NOW())-2,'_2_2')`,concat((year(now()) - 2),'06') AS `CONCAT(YEAR(NOW())-2,'06')` union all select concat((year(now()) - 2),'_2_2') AS `CONCAT(YEAR(NOW())-2,'_2_2')`,concat((year(now()) - 2),'07') AS `CONCAT(YEAR(NOW())-2,'07')` union all select concat((year(now()) - 2),'_2_2') AS `CONCAT(YEAR(NOW())-2,'_2_2')`,concat((year(now()) - 2),'08') AS `CONCAT(YEAR(NOW())-2,'08')` union all select concat((year(now()) - 2),'_2_2') AS `CONCAT(YEAR(NOW())-2,'_2_2')`,concat((year(now()) - 2),'09') AS `CONCAT(YEAR(NOW())-2,'09')` union all select concat((year(now()) - 2),'_2_2') AS `CONCAT(YEAR(NOW())-2,'_2_2')`,concat((year(now()) - 2),'10') AS `CONCAT(YEAR(NOW())-2,'10')` union all select concat((year(now()) - 2),'_2_2') AS `CONCAT(YEAR(NOW())-2,'_2_2')`,concat((year(now()) - 2),'11') AS `CONCAT(YEAR(NOW())-2,'11')` union all select concat((year(now()) - 2),'_2_2') AS `CONCAT(YEAR(NOW())-2,'_2_2')`,concat((year(now()) - 2),'12') AS `CONCAT(YEAR(NOW())-2,'12')` union all select concat((year(now()) - 2),'_3_1') AS `CONCAT(YEAR(NOW())-2,'_3_1')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_3_1') AS `CONCAT(YEAR(NOW())-2,'_3_1')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_3_1') AS `CONCAT(YEAR(NOW())-2,'_3_1')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_3_2') AS `CONCAT(YEAR(NOW())-2,'_3_2')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_3_2') AS `CONCAT(YEAR(NOW())-2,'_3_2')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_3_2') AS `CONCAT(YEAR(NOW())-2,'_3_2')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_3_2') AS `CONCAT(YEAR(NOW())-2,'_3_2')`,concat((year(now()) - 2),'04') AS `CONCAT(YEAR(NOW())-2,'04')` union all select concat((year(now()) - 2),'_3_2') AS `CONCAT(YEAR(NOW())-2,'_3_2')`,concat((year(now()) - 2),'05') AS `CONCAT(YEAR(NOW())-2,'05')` union all select concat((year(now()) - 2),'_3_2') AS `CONCAT(YEAR(NOW())-2,'_3_2')`,concat((year(now()) - 2),'06') AS `CONCAT(YEAR(NOW())-2,'06')` union all select concat((year(now()) - 2),'_3_3') AS `CONCAT(YEAR(NOW())-2,'_3_3')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_3_3') AS `CONCAT(YEAR(NOW())-2,'_3_3')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_3_3') AS `CONCAT(YEAR(NOW())-2,'_3_3')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_3_3') AS `CONCAT(YEAR(NOW())-2,'_3_3')`,concat((year(now()) - 2),'04') AS `CONCAT(YEAR(NOW())-2,'04')` union all select concat((year(now()) - 2),'_3_3') AS `CONCAT(YEAR(NOW())-2,'_3_3')`,concat((year(now()) - 2),'05') AS `CONCAT(YEAR(NOW())-2,'05')` union all select concat((year(now()) - 2),'_3_3') AS `CONCAT(YEAR(NOW())-2,'_3_3')`,concat((year(now()) - 2),'06') AS `CONCAT(YEAR(NOW())-2,'06')` union all select concat((year(now()) - 2),'_3_3') AS `CONCAT(YEAR(NOW())-2,'_3_3')`,concat((year(now()) - 2),'07') AS `CONCAT(YEAR(NOW())-2,'07')` union all select concat((year(now()) - 2),'_3_3') AS `CONCAT(YEAR(NOW())-2,'_3_3')`,concat((year(now()) - 2),'08') AS `CONCAT(YEAR(NOW())-2,'08')` union all select concat((year(now()) - 2),'_3_3') AS `CONCAT(YEAR(NOW())-2,'_3_3')`,concat((year(now()) - 2),'09') AS `CONCAT(YEAR(NOW())-2,'09')` union all select concat((year(now()) - 2),'_3_4') AS `CONCAT(YEAR(NOW())-2,'_3_4')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_3_4') AS `CONCAT(YEAR(NOW())-2,'_3_4')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_3_4') AS `CONCAT(YEAR(NOW())-2,'_3_4')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_3_4') AS `CONCAT(YEAR(NOW())-2,'_3_4')`,concat((year(now()) - 2),'04') AS `CONCAT(YEAR(NOW())-2,'04')` union all select concat((year(now()) - 2),'_3_4') AS `CONCAT(YEAR(NOW())-2,'_3_4')`,concat((year(now()) - 2),'05') AS `CONCAT(YEAR(NOW())-2,'05')` union all select concat((year(now()) - 2),'_3_4') AS `CONCAT(YEAR(NOW())-2,'_3_4')`,concat((year(now()) - 2),'06') AS `CONCAT(YEAR(NOW())-2,'06')` union all select concat((year(now()) - 2),'_3_4') AS `CONCAT(YEAR(NOW())-2,'_3_4')`,concat((year(now()) - 2),'07') AS `CONCAT(YEAR(NOW())-2,'07')` union all select concat((year(now()) - 2),'_3_4') AS `CONCAT(YEAR(NOW())-2,'_3_4')`,concat((year(now()) - 2),'08') AS `CONCAT(YEAR(NOW())-2,'08')` union all select concat((year(now()) - 2),'_3_4') AS `CONCAT(YEAR(NOW())-2,'_3_4')`,concat((year(now()) - 2),'09') AS `CONCAT(YEAR(NOW())-2,'09')` union all select concat((year(now()) - 2),'_3_4') AS `CONCAT(YEAR(NOW())-2,'_3_4')`,concat((year(now()) - 2),'10') AS `CONCAT(YEAR(NOW())-2,'10')` union all select concat((year(now()) - 2),'_3_4') AS `CONCAT(YEAR(NOW())-2,'_3_4')`,concat((year(now()) - 2),'11') AS `CONCAT(YEAR(NOW())-2,'11')` union all select concat((year(now()) - 2),'_3_4') AS `CONCAT(YEAR(NOW())-2,'_3_4')`,concat((year(now()) - 2),'12') AS `CONCAT(YEAR(NOW())-2,'12')` union all select concat((year(now()) - 2),'_4_1') AS `CONCAT(YEAR(NOW())-2,'_4_1')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_4_10') AS `CONCAT(YEAR(NOW())-2,'_4_10')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_4_10') AS `CONCAT(YEAR(NOW())-2,'_4_10')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_4_10') AS `CONCAT(YEAR(NOW())-2,'_4_10')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_4_10') AS `CONCAT(YEAR(NOW())-2,'_4_10')`,concat((year(now()) - 2),'04') AS `CONCAT(YEAR(NOW())-2,'04')` union all select concat((year(now()) - 2),'_4_10') AS `CONCAT(YEAR(NOW())-2,'_4_10')`,concat((year(now()) - 2),'05') AS `CONCAT(YEAR(NOW())-2,'05')` union all select concat((year(now()) - 2),'_4_10') AS `CONCAT(YEAR(NOW())-2,'_4_10')`,concat((year(now()) - 2),'06') AS `CONCAT(YEAR(NOW())-2,'06')` union all select concat((year(now()) - 2),'_4_10') AS `CONCAT(YEAR(NOW())-2,'_4_10')`,concat((year(now()) - 2),'07') AS `CONCAT(YEAR(NOW())-2,'07')` union all select concat((year(now()) - 2),'_4_10') AS `CONCAT(YEAR(NOW())-2,'_4_10')`,concat((year(now()) - 2),'08') AS `CONCAT(YEAR(NOW())-2,'08')` union all select concat((year(now()) - 2),'_4_10') AS `CONCAT(YEAR(NOW())-2,'_4_10')`,concat((year(now()) - 2),'09') AS `CONCAT(YEAR(NOW())-2,'09')` union all select concat((year(now()) - 2),'_4_10') AS `CONCAT(YEAR(NOW())-2,'_4_10')`,concat((year(now()) - 2),'10') AS `CONCAT(YEAR(NOW())-2,'10')` union all select concat((year(now()) - 2),'_4_11') AS `CONCAT(YEAR(NOW())-2,'_4_11')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_4_11') AS `CONCAT(YEAR(NOW())-2,'_4_11')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_4_11') AS `CONCAT(YEAR(NOW())-2,'_4_11')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_4_11') AS `CONCAT(YEAR(NOW())-2,'_4_11')`,concat((year(now()) - 2),'04') AS `CONCAT(YEAR(NOW())-2,'04')` union all select concat((year(now()) - 2),'_4_11') AS `CONCAT(YEAR(NOW())-2,'_4_11')`,concat((year(now()) - 2),'05') AS `CONCAT(YEAR(NOW())-2,'05')` union all select concat((year(now()) - 2),'_4_11') AS `CONCAT(YEAR(NOW())-2,'_4_11')`,concat((year(now()) - 2),'06') AS `CONCAT(YEAR(NOW())-2,'06')` union all select concat((year(now()) - 2),'_4_11') AS `CONCAT(YEAR(NOW())-2,'_4_11')`,concat((year(now()) - 2),'07') AS `CONCAT(YEAR(NOW())-2,'07')` union all select concat((year(now()) - 2),'_4_11') AS `CONCAT(YEAR(NOW())-2,'_4_11')`,concat((year(now()) - 2),'08') AS `CONCAT(YEAR(NOW())-2,'08')` union all select concat((year(now()) - 2),'_4_11') AS `CONCAT(YEAR(NOW())-2,'_4_11')`,concat((year(now()) - 2),'09') AS `CONCAT(YEAR(NOW())-2,'09')` union all select concat((year(now()) - 2),'_4_11') AS `CONCAT(YEAR(NOW())-2,'_4_11')`,concat((year(now()) - 2),'10') AS `CONCAT(YEAR(NOW())-2,'10')` union all select concat((year(now()) - 2),'_4_11') AS `CONCAT(YEAR(NOW())-2,'_4_11')`,concat((year(now()) - 2),'11') AS `CONCAT(YEAR(NOW())-2,'11')` union all select concat((year(now()) - 2),'_4_12') AS `CONCAT(YEAR(NOW())-2,'_4_12')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_4_12') AS `CONCAT(YEAR(NOW())-2,'_4_12')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_4_12') AS `CONCAT(YEAR(NOW())-2,'_4_12')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_4_12') AS `CONCAT(YEAR(NOW())-2,'_4_12')`,concat((year(now()) - 2),'04') AS `CONCAT(YEAR(NOW())-2,'04')` union all select concat((year(now()) - 2),'_4_12') AS `CONCAT(YEAR(NOW())-2,'_4_12')`,concat((year(now()) - 2),'05') AS `CONCAT(YEAR(NOW())-2,'05')` union all select concat((year(now()) - 2),'_4_12') AS `CONCAT(YEAR(NOW())-2,'_4_12')`,concat((year(now()) - 2),'06') AS `CONCAT(YEAR(NOW())-2,'06')` union all select concat((year(now()) - 2),'_4_12') AS `CONCAT(YEAR(NOW())-2,'_4_12')`,concat((year(now()) - 2),'07') AS `CONCAT(YEAR(NOW())-2,'07')` union all select concat((year(now()) - 2),'_4_12') AS `CONCAT(YEAR(NOW())-2,'_4_12')`,concat((year(now()) - 2),'08') AS `CONCAT(YEAR(NOW())-2,'08')` union all select concat((year(now()) - 2),'_4_12') AS `CONCAT(YEAR(NOW())-2,'_4_12')`,concat((year(now()) - 2),'09') AS `CONCAT(YEAR(NOW())-2,'09')` union all select concat((year(now()) - 2),'_4_12') AS `CONCAT(YEAR(NOW())-2,'_4_12')`,concat((year(now()) - 2),'10') AS `CONCAT(YEAR(NOW())-2,'10')` union all select concat((year(now()) - 2),'_4_12') AS `CONCAT(YEAR(NOW())-2,'_4_12')`,concat((year(now()) - 2),'11') AS `CONCAT(YEAR(NOW())-2,'11')` union all select concat((year(now()) - 2),'_4_12') AS `CONCAT(YEAR(NOW())-2,'_4_12')`,concat((year(now()) - 2),'12') AS `CONCAT(YEAR(NOW())-2,'12')` union all select concat((year(now()) - 2),'_4_2') AS `CONCAT(YEAR(NOW())-2,'_4_2')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_4_2') AS `CONCAT(YEAR(NOW())-2,'_4_2')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_4_3') AS `CONCAT(YEAR(NOW())-2,'_4_3')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_4_3') AS `CONCAT(YEAR(NOW())-2,'_4_3')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_4_3') AS `CONCAT(YEAR(NOW())-2,'_4_3')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_4_4') AS `CONCAT(YEAR(NOW())-2,'_4_4')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_4_4') AS `CONCAT(YEAR(NOW())-2,'_4_4')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_4_4') AS `CONCAT(YEAR(NOW())-2,'_4_4')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_4_4') AS `CONCAT(YEAR(NOW())-2,'_4_4')`,concat((year(now()) - 2),'04') AS `CONCAT(YEAR(NOW())-2,'04')` union all select concat((year(now()) - 2),'_4_5') AS `CONCAT(YEAR(NOW())-2,'_4_5')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_4_5') AS `CONCAT(YEAR(NOW())-2,'_4_5')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_4_5') AS `CONCAT(YEAR(NOW())-2,'_4_5')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_4_5') AS `CONCAT(YEAR(NOW())-2,'_4_5')`,concat((year(now()) - 2),'04') AS `CONCAT(YEAR(NOW())-2,'04')` union all select concat((year(now()) - 2),'_4_5') AS `CONCAT(YEAR(NOW())-2,'_4_5')`,concat((year(now()) - 2),'05') AS `CONCAT(YEAR(NOW())-2,'05')` union all select concat((year(now()) - 2),'_4_6') AS `CONCAT(YEAR(NOW())-2,'_4_6')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_4_6') AS `CONCAT(YEAR(NOW())-2,'_4_6')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_4_6') AS `CONCAT(YEAR(NOW())-2,'_4_6')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_4_6') AS `CONCAT(YEAR(NOW())-2,'_4_6')`,concat((year(now()) - 2),'04') AS `CONCAT(YEAR(NOW())-2,'04')` union all select concat((year(now()) - 2),'_4_6') AS `CONCAT(YEAR(NOW())-2,'_4_6')`,concat((year(now()) - 2),'05') AS `CONCAT(YEAR(NOW())-2,'05')` union all select concat((year(now()) - 2),'_4_6') AS `CONCAT(YEAR(NOW())-2,'_4_6')`,concat((year(now()) - 2),'06') AS `CONCAT(YEAR(NOW())-2,'06')` union all select concat((year(now()) - 2),'_4_7') AS `CONCAT(YEAR(NOW())-2,'_4_7')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_4_7') AS `CONCAT(YEAR(NOW())-2,'_4_7')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_4_7') AS `CONCAT(YEAR(NOW())-2,'_4_7')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_4_7') AS `CONCAT(YEAR(NOW())-2,'_4_7')`,concat((year(now()) - 2),'04') AS `CONCAT(YEAR(NOW())-2,'04')` union all select concat((year(now()) - 2),'_4_7') AS `CONCAT(YEAR(NOW())-2,'_4_7')`,concat((year(now()) - 2),'05') AS `CONCAT(YEAR(NOW())-2,'05')` union all select concat((year(now()) - 2),'_4_7') AS `CONCAT(YEAR(NOW())-2,'_4_7')`,concat((year(now()) - 2),'06') AS `CONCAT(YEAR(NOW())-2,'06')` union all select concat((year(now()) - 2),'_4_7') AS `CONCAT(YEAR(NOW())-2,'_4_7')`,concat((year(now()) - 2),'07') AS `CONCAT(YEAR(NOW())-2,'07')` union all select concat((year(now()) - 2),'_4_8') AS `CONCAT(YEAR(NOW())-2,'_4_8')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_4_8') AS `CONCAT(YEAR(NOW())-2,'_4_8')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_4_8') AS `CONCAT(YEAR(NOW())-2,'_4_8')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_4_8') AS `CONCAT(YEAR(NOW())-2,'_4_8')`,concat((year(now()) - 2),'04') AS `CONCAT(YEAR(NOW())-2,'04')` union all select concat((year(now()) - 2),'_4_8') AS `CONCAT(YEAR(NOW())-2,'_4_8')`,concat((year(now()) - 2),'05') AS `CONCAT(YEAR(NOW())-2,'05')` union all select concat((year(now()) - 2),'_4_8') AS `CONCAT(YEAR(NOW())-2,'_4_8')`,concat((year(now()) - 2),'06') AS `CONCAT(YEAR(NOW())-2,'06')` union all select concat((year(now()) - 2),'_4_8') AS `CONCAT(YEAR(NOW())-2,'_4_8')`,concat((year(now()) - 2),'07') AS `CONCAT(YEAR(NOW())-2,'07')` union all select concat((year(now()) - 2),'_4_8') AS `CONCAT(YEAR(NOW())-2,'_4_8')`,concat((year(now()) - 2),'08') AS `CONCAT(YEAR(NOW())-2,'08')` union all select concat((year(now()) - 2),'_4_9') AS `CONCAT(YEAR(NOW())-2,'_4_9')`,concat((year(now()) - 2),'01') AS `CONCAT(YEAR(NOW())-2,'01')` union all select concat((year(now()) - 2),'_4_9') AS `CONCAT(YEAR(NOW())-2,'_4_9')`,concat((year(now()) - 2),'02') AS `CONCAT(YEAR(NOW())-2,'02')` union all select concat((year(now()) - 2),'_4_9') AS `CONCAT(YEAR(NOW())-2,'_4_9')`,concat((year(now()) - 2),'03') AS `CONCAT(YEAR(NOW())-2,'03')` union all select concat((year(now()) - 2),'_4_9') AS `CONCAT(YEAR(NOW())-2,'_4_9')`,concat((year(now()) - 2),'04') AS `CONCAT(YEAR(NOW())-2,'04')` union all select concat((year(now()) - 2),'_4_9') AS `CONCAT(YEAR(NOW())-2,'_4_9')`,concat((year(now()) - 2),'05') AS `CONCAT(YEAR(NOW())-2,'05')` union all select concat((year(now()) - 2),'_4_9') AS `CONCAT(YEAR(NOW())-2,'_4_9')`,concat((year(now()) - 2),'06') AS `CONCAT(YEAR(NOW())-2,'06')` union all select concat((year(now()) - 2),'_4_9') AS `CONCAT(YEAR(NOW())-2,'_4_9')`,concat((year(now()) - 2),'07') AS `CONCAT(YEAR(NOW())-2,'07')` union all select concat((year(now()) - 2),'_4_9') AS `CONCAT(YEAR(NOW())-2,'_4_9')`,concat((year(now()) - 2),'08') AS `CONCAT(YEAR(NOW())-2,'08')` union all select concat((year(now()) - 2),'_4_9') AS `CONCAT(YEAR(NOW())-2,'_4_9')`,concat((year(now()) - 2),'09') AS `CONCAT(YEAR(NOW())-2,'09')` union all select concat((year(now()) - 1),'_1_',(year(now()) - 1)) AS `CONCAT(YEAR(NOW())-1,'_1_',YEAR(NOW())-1)`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_1_',(year(now()) - 1)) AS `CONCAT(YEAR(NOW())-1,'_1_',YEAR(NOW())-1)`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_1_',(year(now()) - 1)) AS `CONCAT(YEAR(NOW())-1,'_1_',YEAR(NOW())-1)`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_1_',(year(now()) - 1)) AS `CONCAT(YEAR(NOW())-1,'_1_',YEAR(NOW())-1)`,concat((year(now()) - 1),'04') AS `CONCAT(YEAR(NOW())-1,'04')` union all select concat((year(now()) - 1),'_1_',(year(now()) - 1)) AS `CONCAT(YEAR(NOW())-1,'_1_',YEAR(NOW())-1)`,concat((year(now()) - 1),'05') AS `CONCAT(YEAR(NOW())-1,'05')` union all select concat((year(now()) - 1),'_1_',(year(now()) - 1)) AS `CONCAT(YEAR(NOW())-1,'_1_',YEAR(NOW())-1)`,concat((year(now()) - 1),'06') AS `CONCAT(YEAR(NOW())-1,'06')` union all select concat((year(now()) - 1),'_1_',(year(now()) - 1)) AS `CONCAT(YEAR(NOW())-1,'_1_',YEAR(NOW())-1)`,concat((year(now()) - 1),'07') AS `CONCAT(YEAR(NOW())-1,'07')` union all select concat((year(now()) - 1),'_1_',(year(now()) - 1)) AS `CONCAT(YEAR(NOW())-1,'_1_',YEAR(NOW())-1)`,concat((year(now()) - 1),'08') AS `CONCAT(YEAR(NOW())-1,'08')` union all select concat((year(now()) - 1),'_1_',(year(now()) - 1)) AS `CONCAT(YEAR(NOW())-1,'_1_',YEAR(NOW())-1)`,concat((year(now()) - 1),'09') AS `CONCAT(YEAR(NOW())-1,'09')` union all select concat((year(now()) - 1),'_1_',(year(now()) - 1)) AS `CONCAT(YEAR(NOW())-1,'_1_',YEAR(NOW())-1)`,concat((year(now()) - 1),'10') AS `CONCAT(YEAR(NOW())-1,'10')` union all select concat((year(now()) - 1),'_1_',(year(now()) - 1)) AS `CONCAT(YEAR(NOW())-1,'_1_',YEAR(NOW())-1)`,concat((year(now()) - 1),'11') AS `CONCAT(YEAR(NOW())-1,'11')` union all select concat((year(now()) - 1),'_1_',(year(now()) - 1)) AS `CONCAT(YEAR(NOW())-1,'_1_',YEAR(NOW())-1)`,concat((year(now()) - 1),'12') AS `CONCAT(YEAR(NOW())-1,'12')` union all select concat((year(now()) - 1),'_2_1') AS `CONCAT(YEAR(NOW())-1,'_2_1')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_2_1') AS `CONCAT(YEAR(NOW())-1,'_2_1')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_2_1') AS `CONCAT(YEAR(NOW())-1,'_2_1')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_2_1') AS `CONCAT(YEAR(NOW())-1,'_2_1')`,concat((year(now()) - 1),'04') AS `CONCAT(YEAR(NOW())-1,'04')` union all select concat((year(now()) - 1),'_2_1') AS `CONCAT(YEAR(NOW())-1,'_2_1')`,concat((year(now()) - 1),'05') AS `CONCAT(YEAR(NOW())-1,'05')` union all select concat((year(now()) - 1),'_2_1') AS `CONCAT(YEAR(NOW())-1,'_2_1')`,concat((year(now()) - 1),'06') AS `CONCAT(YEAR(NOW())-1,'06')` union all select concat((year(now()) - 1),'_2_2') AS `CONCAT(YEAR(NOW())-1,'_2_2')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_2_2') AS `CONCAT(YEAR(NOW())-1,'_2_2')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_2_2') AS `CONCAT(YEAR(NOW())-1,'_2_2')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_2_2') AS `CONCAT(YEAR(NOW())-1,'_2_2')`,concat((year(now()) - 1),'04') AS `CONCAT(YEAR(NOW())-1,'04')` union all select concat((year(now()) - 1),'_2_2') AS `CONCAT(YEAR(NOW())-1,'_2_2')`,concat((year(now()) - 1),'05') AS `CONCAT(YEAR(NOW())-1,'05')` union all select concat((year(now()) - 1),'_2_2') AS `CONCAT(YEAR(NOW())-1,'_2_2')`,concat((year(now()) - 1),'06') AS `CONCAT(YEAR(NOW())-1,'06')` union all select concat((year(now()) - 1),'_2_2') AS `CONCAT(YEAR(NOW())-1,'_2_2')`,concat((year(now()) - 1),'07') AS `CONCAT(YEAR(NOW())-1,'07')` union all select concat((year(now()) - 1),'_2_2') AS `CONCAT(YEAR(NOW())-1,'_2_2')`,concat((year(now()) - 1),'08') AS `CONCAT(YEAR(NOW())-1,'08')` union all select concat((year(now()) - 1),'_2_2') AS `CONCAT(YEAR(NOW())-1,'_2_2')`,concat((year(now()) - 1),'09') AS `CONCAT(YEAR(NOW())-1,'09')` union all select concat((year(now()) - 1),'_2_2') AS `CONCAT(YEAR(NOW())-1,'_2_2')`,concat((year(now()) - 1),'10') AS `CONCAT(YEAR(NOW())-1,'10')` union all select concat((year(now()) - 1),'_2_2') AS `CONCAT(YEAR(NOW())-1,'_2_2')`,concat((year(now()) - 1),'11') AS `CONCAT(YEAR(NOW())-1,'11')` union all select concat((year(now()) - 1),'_2_2') AS `CONCAT(YEAR(NOW())-1,'_2_2')`,concat((year(now()) - 1),'12') AS `CONCAT(YEAR(NOW())-1,'12')` union all select concat((year(now()) - 1),'_3_1') AS `CONCAT(YEAR(NOW())-1,'_3_1')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_3_1') AS `CONCAT(YEAR(NOW())-1,'_3_1')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_3_1') AS `CONCAT(YEAR(NOW())-1,'_3_1')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_3_2') AS `CONCAT(YEAR(NOW())-1,'_3_2')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_3_2') AS `CONCAT(YEAR(NOW())-1,'_3_2')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_3_2') AS `CONCAT(YEAR(NOW())-1,'_3_2')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_3_2') AS `CONCAT(YEAR(NOW())-1,'_3_2')`,concat((year(now()) - 1),'04') AS `CONCAT(YEAR(NOW())-1,'04')` union all select concat((year(now()) - 1),'_3_2') AS `CONCAT(YEAR(NOW())-1,'_3_2')`,concat((year(now()) - 1),'05') AS `CONCAT(YEAR(NOW())-1,'05')` union all select concat((year(now()) - 1),'_3_2') AS `CONCAT(YEAR(NOW())-1,'_3_2')`,concat((year(now()) - 1),'06') AS `CONCAT(YEAR(NOW())-1,'06')` union all select concat((year(now()) - 1),'_3_3') AS `CONCAT(YEAR(NOW())-1,'_3_3')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_3_3') AS `CONCAT(YEAR(NOW())-1,'_3_3')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_3_3') AS `CONCAT(YEAR(NOW())-1,'_3_3')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_3_3') AS `CONCAT(YEAR(NOW())-1,'_3_3')`,concat((year(now()) - 1),'04') AS `CONCAT(YEAR(NOW())-1,'04')` union all select concat((year(now()) - 1),'_3_3') AS `CONCAT(YEAR(NOW())-1,'_3_3')`,concat((year(now()) - 1),'05') AS `CONCAT(YEAR(NOW())-1,'05')` union all select concat((year(now()) - 1),'_3_3') AS `CONCAT(YEAR(NOW())-1,'_3_3')`,concat((year(now()) - 1),'06') AS `CONCAT(YEAR(NOW())-1,'06')` union all select concat((year(now()) - 1),'_3_3') AS `CONCAT(YEAR(NOW())-1,'_3_3')`,concat((year(now()) - 1),'07') AS `CONCAT(YEAR(NOW())-1,'07')` union all select concat((year(now()) - 1),'_3_3') AS `CONCAT(YEAR(NOW())-1,'_3_3')`,concat((year(now()) - 1),'08') AS `CONCAT(YEAR(NOW())-1,'08')` union all select concat((year(now()) - 1),'_3_3') AS `CONCAT(YEAR(NOW())-1,'_3_3')`,concat((year(now()) - 1),'09') AS `CONCAT(YEAR(NOW())-1,'09')` union all select concat((year(now()) - 1),'_3_4') AS `CONCAT(YEAR(NOW())-1,'_3_4')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_3_4') AS `CONCAT(YEAR(NOW())-1,'_3_4')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_3_4') AS `CONCAT(YEAR(NOW())-1,'_3_4')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_3_4') AS `CONCAT(YEAR(NOW())-1,'_3_4')`,concat((year(now()) - 1),'04') AS `CONCAT(YEAR(NOW())-1,'04')` union all select concat((year(now()) - 1),'_3_4') AS `CONCAT(YEAR(NOW())-1,'_3_4')`,concat((year(now()) - 1),'05') AS `CONCAT(YEAR(NOW())-1,'05')` union all select concat((year(now()) - 1),'_3_4') AS `CONCAT(YEAR(NOW())-1,'_3_4')`,concat((year(now()) - 1),'06') AS `CONCAT(YEAR(NOW())-1,'06')` union all select concat((year(now()) - 1),'_3_4') AS `CONCAT(YEAR(NOW())-1,'_3_4')`,concat((year(now()) - 1),'07') AS `CONCAT(YEAR(NOW())-1,'07')` union all select concat((year(now()) - 1),'_3_4') AS `CONCAT(YEAR(NOW())-1,'_3_4')`,concat((year(now()) - 1),'08') AS `CONCAT(YEAR(NOW())-1,'08')` union all select concat((year(now()) - 1),'_3_4') AS `CONCAT(YEAR(NOW())-1,'_3_4')`,concat((year(now()) - 1),'09') AS `CONCAT(YEAR(NOW())-1,'09')` union all select concat((year(now()) - 1),'_3_4') AS `CONCAT(YEAR(NOW())-1,'_3_4')`,concat((year(now()) - 1),'10') AS `CONCAT(YEAR(NOW())-1,'10')` union all select concat((year(now()) - 1),'_3_4') AS `CONCAT(YEAR(NOW())-1,'_3_4')`,concat((year(now()) - 1),'11') AS `CONCAT(YEAR(NOW())-1,'11')` union all select concat((year(now()) - 1),'_3_4') AS `CONCAT(YEAR(NOW())-1,'_3_4')`,concat((year(now()) - 1),'12') AS `CONCAT(YEAR(NOW())-1,'12')` union all select concat((year(now()) - 1),'_4_1') AS `CONCAT(YEAR(NOW())-1,'_4_1')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_4_10') AS `CONCAT(YEAR(NOW())-1,'_4_10')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_4_10') AS `CONCAT(YEAR(NOW())-1,'_4_10')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_4_10') AS `CONCAT(YEAR(NOW())-1,'_4_10')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_4_10') AS `CONCAT(YEAR(NOW())-1,'_4_10')`,concat((year(now()) - 1),'04') AS `CONCAT(YEAR(NOW())-1,'04')` union all select concat((year(now()) - 1),'_4_10') AS `CONCAT(YEAR(NOW())-1,'_4_10')`,concat((year(now()) - 1),'05') AS `CONCAT(YEAR(NOW())-1,'05')` union all select concat((year(now()) - 1),'_4_10') AS `CONCAT(YEAR(NOW())-1,'_4_10')`,concat((year(now()) - 1),'06') AS `CONCAT(YEAR(NOW())-1,'06')` union all select concat((year(now()) - 1),'_4_10') AS `CONCAT(YEAR(NOW())-1,'_4_10')`,concat((year(now()) - 1),'07') AS `CONCAT(YEAR(NOW())-1,'07')` union all select concat((year(now()) - 1),'_4_10') AS `CONCAT(YEAR(NOW())-1,'_4_10')`,concat((year(now()) - 1),'08') AS `CONCAT(YEAR(NOW())-1,'08')` union all select concat((year(now()) - 1),'_4_10') AS `CONCAT(YEAR(NOW())-1,'_4_10')`,concat((year(now()) - 1),'09') AS `CONCAT(YEAR(NOW())-1,'09')` union all select concat((year(now()) - 1),'_4_10') AS `CONCAT(YEAR(NOW())-1,'_4_10')`,concat((year(now()) - 1),'10') AS `CONCAT(YEAR(NOW())-1,'10')` union all select concat((year(now()) - 1),'_4_11') AS `CONCAT(YEAR(NOW())-1,'_4_11')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_4_11') AS `CONCAT(YEAR(NOW())-1,'_4_11')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_4_11') AS `CONCAT(YEAR(NOW())-1,'_4_11')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_4_11') AS `CONCAT(YEAR(NOW())-1,'_4_11')`,concat((year(now()) - 1),'04') AS `CONCAT(YEAR(NOW())-1,'04')` union all select concat((year(now()) - 1),'_4_11') AS `CONCAT(YEAR(NOW())-1,'_4_11')`,concat((year(now()) - 1),'05') AS `CONCAT(YEAR(NOW())-1,'05')` union all select concat((year(now()) - 1),'_4_11') AS `CONCAT(YEAR(NOW())-1,'_4_11')`,concat((year(now()) - 1),'06') AS `CONCAT(YEAR(NOW())-1,'06')` union all select concat((year(now()) - 1),'_4_11') AS `CONCAT(YEAR(NOW())-1,'_4_11')`,concat((year(now()) - 1),'07') AS `CONCAT(YEAR(NOW())-1,'07')` union all select concat((year(now()) - 1),'_4_11') AS `CONCAT(YEAR(NOW())-1,'_4_11')`,concat((year(now()) - 1),'08') AS `CONCAT(YEAR(NOW())-1,'08')` union all select concat((year(now()) - 1),'_4_11') AS `CONCAT(YEAR(NOW())-1,'_4_11')`,concat((year(now()) - 1),'09') AS `CONCAT(YEAR(NOW())-1,'09')` union all select concat((year(now()) - 1),'_4_11') AS `CONCAT(YEAR(NOW())-1,'_4_11')`,concat((year(now()) - 1),'10') AS `CONCAT(YEAR(NOW())-1,'10')` union all select concat((year(now()) - 1),'_4_11') AS `CONCAT(YEAR(NOW())-1,'_4_11')`,concat((year(now()) - 1),'11') AS `CONCAT(YEAR(NOW())-1,'11')` union all select concat((year(now()) - 1),'_4_12') AS `CONCAT(YEAR(NOW())-1,'_4_12')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_4_12') AS `CONCAT(YEAR(NOW())-1,'_4_12')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_4_12') AS `CONCAT(YEAR(NOW())-1,'_4_12')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_4_12') AS `CONCAT(YEAR(NOW())-1,'_4_12')`,concat((year(now()) - 1),'04') AS `CONCAT(YEAR(NOW())-1,'04')` union all select concat((year(now()) - 1),'_4_12') AS `CONCAT(YEAR(NOW())-1,'_4_12')`,concat((year(now()) - 1),'05') AS `CONCAT(YEAR(NOW())-1,'05')` union all select concat((year(now()) - 1),'_4_12') AS `CONCAT(YEAR(NOW())-1,'_4_12')`,concat((year(now()) - 1),'06') AS `CONCAT(YEAR(NOW())-1,'06')` union all select concat((year(now()) - 1),'_4_12') AS `CONCAT(YEAR(NOW())-1,'_4_12')`,concat((year(now()) - 1),'07') AS `CONCAT(YEAR(NOW())-1,'07')` union all select concat((year(now()) - 1),'_4_12') AS `CONCAT(YEAR(NOW())-1,'_4_12')`,concat((year(now()) - 1),'08') AS `CONCAT(YEAR(NOW())-1,'08')` union all select concat((year(now()) - 1),'_4_12') AS `CONCAT(YEAR(NOW())-1,'_4_12')`,concat((year(now()) - 1),'09') AS `CONCAT(YEAR(NOW())-1,'09')` union all select concat((year(now()) - 1),'_4_12') AS `CONCAT(YEAR(NOW())-1,'_4_12')`,concat((year(now()) - 1),'10') AS `CONCAT(YEAR(NOW())-1,'10')` union all select concat((year(now()) - 1),'_4_12') AS `CONCAT(YEAR(NOW())-1,'_4_12')`,concat((year(now()) - 1),'11') AS `CONCAT(YEAR(NOW())-1,'11')` union all select concat((year(now()) - 1),'_4_12') AS `CONCAT(YEAR(NOW())-1,'_4_12')`,concat((year(now()) - 1),'12') AS `CONCAT(YEAR(NOW())-1,'12')` union all select concat((year(now()) - 1),'_4_2') AS `CONCAT(YEAR(NOW())-1,'_4_2')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_4_2') AS `CONCAT(YEAR(NOW())-1,'_4_2')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_4_3') AS `CONCAT(YEAR(NOW())-1,'_4_3')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_4_3') AS `CONCAT(YEAR(NOW())-1,'_4_3')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_4_3') AS `CONCAT(YEAR(NOW())-1,'_4_3')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_4_4') AS `CONCAT(YEAR(NOW())-1,'_4_4')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_4_4') AS `CONCAT(YEAR(NOW())-1,'_4_4')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_4_4') AS `CONCAT(YEAR(NOW())-1,'_4_4')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_4_4') AS `CONCAT(YEAR(NOW())-1,'_4_4')`,concat((year(now()) - 1),'04') AS `CONCAT(YEAR(NOW())-1,'04')` union all select concat((year(now()) - 1),'_4_5') AS `CONCAT(YEAR(NOW())-1,'_4_5')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_4_5') AS `CONCAT(YEAR(NOW())-1,'_4_5')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_4_5') AS `CONCAT(YEAR(NOW())-1,'_4_5')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_4_5') AS `CONCAT(YEAR(NOW())-1,'_4_5')`,concat((year(now()) - 1),'04') AS `CONCAT(YEAR(NOW())-1,'04')` union all select concat((year(now()) - 1),'_4_5') AS `CONCAT(YEAR(NOW())-1,'_4_5')`,concat((year(now()) - 1),'05') AS `CONCAT(YEAR(NOW())-1,'05')` union all select concat((year(now()) - 1),'_4_6') AS `CONCAT(YEAR(NOW())-1,'_4_6')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_4_6') AS `CONCAT(YEAR(NOW())-1,'_4_6')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_4_6') AS `CONCAT(YEAR(NOW())-1,'_4_6')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_4_6') AS `CONCAT(YEAR(NOW())-1,'_4_6')`,concat((year(now()) - 1),'04') AS `CONCAT(YEAR(NOW())-1,'04')` union all select concat((year(now()) - 1),'_4_6') AS `CONCAT(YEAR(NOW())-1,'_4_6')`,concat((year(now()) - 1),'05') AS `CONCAT(YEAR(NOW())-1,'05')` union all select concat((year(now()) - 1),'_4_6') AS `CONCAT(YEAR(NOW())-1,'_4_6')`,concat((year(now()) - 1),'06') AS `CONCAT(YEAR(NOW())-1,'06')` union all select concat((year(now()) - 1),'_4_7') AS `CONCAT(YEAR(NOW())-1,'_4_7')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_4_7') AS `CONCAT(YEAR(NOW())-1,'_4_7')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_4_7') AS `CONCAT(YEAR(NOW())-1,'_4_7')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_4_7') AS `CONCAT(YEAR(NOW())-1,'_4_7')`,concat((year(now()) - 1),'04') AS `CONCAT(YEAR(NOW())-1,'04')` union all select concat((year(now()) - 1),'_4_7') AS `CONCAT(YEAR(NOW())-1,'_4_7')`,concat((year(now()) - 1),'05') AS `CONCAT(YEAR(NOW())-1,'05')` union all select concat((year(now()) - 1),'_4_7') AS `CONCAT(YEAR(NOW())-1,'_4_7')`,concat((year(now()) - 1),'06') AS `CONCAT(YEAR(NOW())-1,'06')` union all select concat((year(now()) - 1),'_4_7') AS `CONCAT(YEAR(NOW())-1,'_4_7')`,concat((year(now()) - 1),'07') AS `CONCAT(YEAR(NOW())-1,'07')` union all select concat((year(now()) - 1),'_4_8') AS `CONCAT(YEAR(NOW())-1,'_4_8')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_4_8') AS `CONCAT(YEAR(NOW())-1,'_4_8')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_4_8') AS `CONCAT(YEAR(NOW())-1,'_4_8')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_4_8') AS `CONCAT(YEAR(NOW())-1,'_4_8')`,concat((year(now()) - 1),'04') AS `CONCAT(YEAR(NOW())-1,'04')` union all select concat((year(now()) - 1),'_4_8') AS `CONCAT(YEAR(NOW())-1,'_4_8')`,concat((year(now()) - 1),'05') AS `CONCAT(YEAR(NOW())-1,'05')` union all select concat((year(now()) - 1),'_4_8') AS `CONCAT(YEAR(NOW())-1,'_4_8')`,concat((year(now()) - 1),'06') AS `CONCAT(YEAR(NOW())-1,'06')` union all select concat((year(now()) - 1),'_4_8') AS `CONCAT(YEAR(NOW())-1,'_4_8')`,concat((year(now()) - 1),'07') AS `CONCAT(YEAR(NOW())-1,'07')` union all select concat((year(now()) - 1),'_4_8') AS `CONCAT(YEAR(NOW())-1,'_4_8')`,concat((year(now()) - 1),'08') AS `CONCAT(YEAR(NOW())-1,'08')` union all select concat((year(now()) - 1),'_4_9') AS `CONCAT(YEAR(NOW())-1,'_4_9')`,concat((year(now()) - 1),'01') AS `CONCAT(YEAR(NOW())-1,'01')` union all select concat((year(now()) - 1),'_4_9') AS `CONCAT(YEAR(NOW())-1,'_4_9')`,concat((year(now()) - 1),'02') AS `CONCAT(YEAR(NOW())-1,'02')` union all select concat((year(now()) - 1),'_4_9') AS `CONCAT(YEAR(NOW())-1,'_4_9')`,concat((year(now()) - 1),'03') AS `CONCAT(YEAR(NOW())-1,'03')` union all select concat((year(now()) - 1),'_4_9') AS `CONCAT(YEAR(NOW())-1,'_4_9')`,concat((year(now()) - 1),'04') AS `CONCAT(YEAR(NOW())-1,'04')` union all select concat((year(now()) - 1),'_4_9') AS `CONCAT(YEAR(NOW())-1,'_4_9')`,concat((year(now()) - 1),'05') AS `CONCAT(YEAR(NOW())-1,'05')` union all select concat((year(now()) - 1),'_4_9') AS `CONCAT(YEAR(NOW())-1,'_4_9')`,concat((year(now()) - 1),'06') AS `CONCAT(YEAR(NOW())-1,'06')` union all select concat((year(now()) - 1),'_4_9') AS `CONCAT(YEAR(NOW())-1,'_4_9')`,concat((year(now()) - 1),'07') AS `CONCAT(YEAR(NOW())-1,'07')` union all select concat((year(now()) - 1),'_4_9') AS `CONCAT(YEAR(NOW())-1,'_4_9')`,concat((year(now()) - 1),'08') AS `CONCAT(YEAR(NOW())-1,'08')` union all select concat((year(now()) - 1),'_4_9') AS `CONCAT(YEAR(NOW())-1,'_4_9')`,concat((year(now()) - 1),'09') AS `CONCAT(YEAR(NOW())-1,'09')` union all select concat(year(now()),'_1_',year(now())) AS `CONCAT(YEAR(NOW()),'_1_',YEAR(NOW()))`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_1_',year(now())) AS `CONCAT(YEAR(NOW()),'_1_',YEAR(NOW()))`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_1_',year(now())) AS `CONCAT(YEAR(NOW()),'_1_',YEAR(NOW()))`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_1_',year(now())) AS `CONCAT(YEAR(NOW()),'_1_',YEAR(NOW()))`,concat(year(now()),'04') AS `CONCAT(YEAR(NOW()),'04')` union all select concat(year(now()),'_1_',year(now())) AS `CONCAT(YEAR(NOW()),'_1_',YEAR(NOW()))`,concat(year(now()),'05') AS `CONCAT(YEAR(NOW()),'05')` union all select concat(year(now()),'_1_',year(now())) AS `CONCAT(YEAR(NOW()),'_1_',YEAR(NOW()))`,concat(year(now()),'06') AS `CONCAT(YEAR(NOW()),'06')` union all select concat(year(now()),'_1_',year(now())) AS `CONCAT(YEAR(NOW()),'_1_',YEAR(NOW()))`,concat(year(now()),'07') AS `CONCAT(YEAR(NOW()),'07')` union all select concat(year(now()),'_1_',year(now())) AS `CONCAT(YEAR(NOW()),'_1_',YEAR(NOW()))`,concat(year(now()),'08') AS `CONCAT(YEAR(NOW()),'08')` union all select concat(year(now()),'_1_',year(now())) AS `CONCAT(YEAR(NOW()),'_1_',YEAR(NOW()))`,concat(year(now()),'09') AS `CONCAT(YEAR(NOW()),'09')` union all select concat(year(now()),'_1_',year(now())) AS `CONCAT(YEAR(NOW()),'_1_',YEAR(NOW()))`,concat(year(now()),'10') AS `CONCAT(YEAR(NOW()),'10')` union all select concat(year(now()),'_1_',year(now())) AS `CONCAT(YEAR(NOW()),'_1_',YEAR(NOW()))`,concat(year(now()),'11') AS `CONCAT(YEAR(NOW()),'11')` union all select concat(year(now()),'_1_',year(now())) AS `CONCAT(YEAR(NOW()),'_1_',YEAR(NOW()))`,concat(year(now()),'12') AS `CONCAT(YEAR(NOW()),'12')` union all select concat(year(now()),'_2_1') AS `CONCAT(YEAR(NOW()),'_2_1')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_2_1') AS `CONCAT(YEAR(NOW()),'_2_1')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_2_1') AS `CONCAT(YEAR(NOW()),'_2_1')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_2_1') AS `CONCAT(YEAR(NOW()),'_2_1')`,concat(year(now()),'04') AS `CONCAT(YEAR(NOW()),'04')` union all select concat(year(now()),'_2_1') AS `CONCAT(YEAR(NOW()),'_2_1')`,concat(year(now()),'05') AS `CONCAT(YEAR(NOW()),'05')` union all select concat(year(now()),'_2_1') AS `CONCAT(YEAR(NOW()),'_2_1')`,concat(year(now()),'06') AS `CONCAT(YEAR(NOW()),'06')` union all select concat(year(now()),'_2_2') AS `CONCAT(YEAR(NOW()),'_2_2')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_2_2') AS `CONCAT(YEAR(NOW()),'_2_2')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_2_2') AS `CONCAT(YEAR(NOW()),'_2_2')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_2_2') AS `CONCAT(YEAR(NOW()),'_2_2')`,concat(year(now()),'04') AS `CONCAT(YEAR(NOW()),'04')` union all select concat(year(now()),'_2_2') AS `CONCAT(YEAR(NOW()),'_2_2')`,concat(year(now()),'05') AS `CONCAT(YEAR(NOW()),'05')` union all select concat(year(now()),'_2_2') AS `CONCAT(YEAR(NOW()),'_2_2')`,concat(year(now()),'06') AS `CONCAT(YEAR(NOW()),'06')` union all select concat(year(now()),'_2_2') AS `CONCAT(YEAR(NOW()),'_2_2')`,concat(year(now()),'07') AS `CONCAT(YEAR(NOW()),'07')` union all select concat(year(now()),'_2_2') AS `CONCAT(YEAR(NOW()),'_2_2')`,concat(year(now()),'08') AS `CONCAT(YEAR(NOW()),'08')` union all select concat(year(now()),'_2_2') AS `CONCAT(YEAR(NOW()),'_2_2')`,concat(year(now()),'09') AS `CONCAT(YEAR(NOW()),'09')` union all select concat(year(now()),'_2_2') AS `CONCAT(YEAR(NOW()),'_2_2')`,concat(year(now()),'10') AS `CONCAT(YEAR(NOW()),'10')` union all select concat(year(now()),'_2_2') AS `CONCAT(YEAR(NOW()),'_2_2')`,concat(year(now()),'11') AS `CONCAT(YEAR(NOW()),'11')` union all select concat(year(now()),'_2_2') AS `CONCAT(YEAR(NOW()),'_2_2')`,concat(year(now()),'12') AS `CONCAT(YEAR(NOW()),'12')` union all select concat(year(now()),'_3_1') AS `CONCAT(YEAR(NOW()),'_3_1')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_3_1') AS `CONCAT(YEAR(NOW()),'_3_1')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_3_1') AS `CONCAT(YEAR(NOW()),'_3_1')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_3_2') AS `CONCAT(YEAR(NOW()),'_3_2')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_3_2') AS `CONCAT(YEAR(NOW()),'_3_2')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_3_2') AS `CONCAT(YEAR(NOW()),'_3_2')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_3_2') AS `CONCAT(YEAR(NOW()),'_3_2')`,concat(year(now()),'04') AS `CONCAT(YEAR(NOW()),'04')` union all select concat(year(now()),'_3_2') AS `CONCAT(YEAR(NOW()),'_3_2')`,concat(year(now()),'05') AS `CONCAT(YEAR(NOW()),'05')` union all select concat(year(now()),'_3_2') AS `CONCAT(YEAR(NOW()),'_3_2')`,concat(year(now()),'06') AS `CONCAT(YEAR(NOW()),'06')` union all select concat(year(now()),'_3_3') AS `CONCAT(YEAR(NOW()),'_3_3')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_3_3') AS `CONCAT(YEAR(NOW()),'_3_3')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_3_3') AS `CONCAT(YEAR(NOW()),'_3_3')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_3_3') AS `CONCAT(YEAR(NOW()),'_3_3')`,concat(year(now()),'04') AS `CONCAT(YEAR(NOW()),'04')` union all select concat(year(now()),'_3_3') AS `CONCAT(YEAR(NOW()),'_3_3')`,concat(year(now()),'05') AS `CONCAT(YEAR(NOW()),'05')` union all select concat(year(now()),'_3_3') AS `CONCAT(YEAR(NOW()),'_3_3')`,concat(year(now()),'06') AS `CONCAT(YEAR(NOW()),'06')` union all select concat(year(now()),'_3_3') AS `CONCAT(YEAR(NOW()),'_3_3')`,concat(year(now()),'07') AS `CONCAT(YEAR(NOW()),'07')` union all select concat(year(now()),'_3_3') AS `CONCAT(YEAR(NOW()),'_3_3')`,concat(year(now()),'08') AS `CONCAT(YEAR(NOW()),'08')` union all select concat(year(now()),'_3_3') AS `CONCAT(YEAR(NOW()),'_3_3')`,concat(year(now()),'09') AS `CONCAT(YEAR(NOW()),'09')` union all select concat(year(now()),'_3_4') AS `CONCAT(YEAR(NOW()),'_3_4')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_3_4') AS `CONCAT(YEAR(NOW()),'_3_4')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_3_4') AS `CONCAT(YEAR(NOW()),'_3_4')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_3_4') AS `CONCAT(YEAR(NOW()),'_3_4')`,concat(year(now()),'04') AS `CONCAT(YEAR(NOW()),'04')` union all select concat(year(now()),'_3_4') AS `CONCAT(YEAR(NOW()),'_3_4')`,concat(year(now()),'05') AS `CONCAT(YEAR(NOW()),'05')` union all select concat(year(now()),'_3_4') AS `CONCAT(YEAR(NOW()),'_3_4')`,concat(year(now()),'06') AS `CONCAT(YEAR(NOW()),'06')` union all select concat(year(now()),'_3_4') AS `CONCAT(YEAR(NOW()),'_3_4')`,concat(year(now()),'07') AS `CONCAT(YEAR(NOW()),'07')` union all select concat(year(now()),'_3_4') AS `CONCAT(YEAR(NOW()),'_3_4')`,concat(year(now()),'08') AS `CONCAT(YEAR(NOW()),'08')` union all select concat(year(now()),'_3_4') AS `CONCAT(YEAR(NOW()),'_3_4')`,concat(year(now()),'09') AS `CONCAT(YEAR(NOW()),'09')` union all select concat(year(now()),'_3_4') AS `CONCAT(YEAR(NOW()),'_3_4')`,concat(year(now()),'10') AS `CONCAT(YEAR(NOW()),'10')` union all select concat(year(now()),'_3_4') AS `CONCAT(YEAR(NOW()),'_3_4')`,concat(year(now()),'11') AS `CONCAT(YEAR(NOW()),'11')` union all select concat(year(now()),'_3_4') AS `CONCAT(YEAR(NOW()),'_3_4')`,concat(year(now()),'12') AS `CONCAT(YEAR(NOW()),'12')` union all select concat(year(now()),'_4_1') AS `CONCAT(YEAR(NOW()),'_4_1')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_4_10') AS `CONCAT(YEAR(NOW()),'_4_10')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_4_10') AS `CONCAT(YEAR(NOW()),'_4_10')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_4_10') AS `CONCAT(YEAR(NOW()),'_4_10')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_4_10') AS `CONCAT(YEAR(NOW()),'_4_10')`,concat(year(now()),'04') AS `CONCAT(YEAR(NOW()),'04')` union all select concat(year(now()),'_4_10') AS `CONCAT(YEAR(NOW()),'_4_10')`,concat(year(now()),'05') AS `CONCAT(YEAR(NOW()),'05')` union all select concat(year(now()),'_4_10') AS `CONCAT(YEAR(NOW()),'_4_10')`,concat(year(now()),'06') AS `CONCAT(YEAR(NOW()),'06')` union all select concat(year(now()),'_4_10') AS `CONCAT(YEAR(NOW()),'_4_10')`,concat(year(now()),'07') AS `CONCAT(YEAR(NOW()),'07')` union all select concat(year(now()),'_4_10') AS `CONCAT(YEAR(NOW()),'_4_10')`,concat(year(now()),'08') AS `CONCAT(YEAR(NOW()),'08')` union all select concat(year(now()),'_4_10') AS `CONCAT(YEAR(NOW()),'_4_10')`,concat(year(now()),'09') AS `CONCAT(YEAR(NOW()),'09')` union all select concat(year(now()),'_4_10') AS `CONCAT(YEAR(NOW()),'_4_10')`,concat(year(now()),'10') AS `CONCAT(YEAR(NOW()),'10')` union all select concat(year(now()),'_4_11') AS `CONCAT(YEAR(NOW()),'_4_11')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_4_11') AS `CONCAT(YEAR(NOW()),'_4_11')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_4_11') AS `CONCAT(YEAR(NOW()),'_4_11')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_4_11') AS `CONCAT(YEAR(NOW()),'_4_11')`,concat(year(now()),'04') AS `CONCAT(YEAR(NOW()),'04')` union all select concat(year(now()),'_4_11') AS `CONCAT(YEAR(NOW()),'_4_11')`,concat(year(now()),'05') AS `CONCAT(YEAR(NOW()),'05')` union all select concat(year(now()),'_4_11') AS `CONCAT(YEAR(NOW()),'_4_11')`,concat(year(now()),'06') AS `CONCAT(YEAR(NOW()),'06')` union all select concat(year(now()),'_4_11') AS `CONCAT(YEAR(NOW()),'_4_11')`,concat(year(now()),'07') AS `CONCAT(YEAR(NOW()),'07')` union all select concat(year(now()),'_4_11') AS `CONCAT(YEAR(NOW()),'_4_11')`,concat(year(now()),'08') AS `CONCAT(YEAR(NOW()),'08')` union all select concat(year(now()),'_4_11') AS `CONCAT(YEAR(NOW()),'_4_11')`,concat(year(now()),'09') AS `CONCAT(YEAR(NOW()),'09')` union all select concat(year(now()),'_4_11') AS `CONCAT(YEAR(NOW()),'_4_11')`,concat(year(now()),'10') AS `CONCAT(YEAR(NOW()),'10')` union all select concat(year(now()),'_4_11') AS `CONCAT(YEAR(NOW()),'_4_11')`,concat(year(now()),'11') AS `CONCAT(YEAR(NOW()),'11')` union all select concat(year(now()),'_4_12') AS `CONCAT(YEAR(NOW()),'_4_12')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_4_12') AS `CONCAT(YEAR(NOW()),'_4_12')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_4_12') AS `CONCAT(YEAR(NOW()),'_4_12')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_4_12') AS `CONCAT(YEAR(NOW()),'_4_12')`,concat(year(now()),'04') AS `CONCAT(YEAR(NOW()),'04')` union all select concat(year(now()),'_4_12') AS `CONCAT(YEAR(NOW()),'_4_12')`,concat(year(now()),'05') AS `CONCAT(YEAR(NOW()),'05')` union all select concat(year(now()),'_4_12') AS `CONCAT(YEAR(NOW()),'_4_12')`,concat(year(now()),'06') AS `CONCAT(YEAR(NOW()),'06')` union all select concat(year(now()),'_4_12') AS `CONCAT(YEAR(NOW()),'_4_12')`,concat(year(now()),'07') AS `CONCAT(YEAR(NOW()),'07')` union all select concat(year(now()),'_4_12') AS `CONCAT(YEAR(NOW()),'_4_12')`,concat(year(now()),'08') AS `CONCAT(YEAR(NOW()),'08')` union all select concat(year(now()),'_4_12') AS `CONCAT(YEAR(NOW()),'_4_12')`,concat(year(now()),'09') AS `CONCAT(YEAR(NOW()),'09')` union all select concat(year(now()),'_4_12') AS `CONCAT(YEAR(NOW()),'_4_12')`,concat(year(now()),'10') AS `CONCAT(YEAR(NOW()),'10')` union all select concat(year(now()),'_4_12') AS `CONCAT(YEAR(NOW()),'_4_12')`,concat(year(now()),'11') AS `CONCAT(YEAR(NOW()),'11')` union all select concat(year(now()),'_4_12') AS `CONCAT(YEAR(NOW()),'_4_12')`,concat(year(now()),'12') AS `CONCAT(YEAR(NOW()),'12')` union all select concat(year(now()),'_4_2') AS `CONCAT(YEAR(NOW()),'_4_2')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_4_2') AS `CONCAT(YEAR(NOW()),'_4_2')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_4_3') AS `CONCAT(YEAR(NOW()),'_4_3')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_4_3') AS `CONCAT(YEAR(NOW()),'_4_3')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_4_3') AS `CONCAT(YEAR(NOW()),'_4_3')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_4_4') AS `CONCAT(YEAR(NOW()),'_4_4')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_4_4') AS `CONCAT(YEAR(NOW()),'_4_4')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_4_4') AS `CONCAT(YEAR(NOW()),'_4_4')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_4_4') AS `CONCAT(YEAR(NOW()),'_4_4')`,concat(year(now()),'04') AS `CONCAT(YEAR(NOW()),'04')` union all select concat(year(now()),'_4_5') AS `CONCAT(YEAR(NOW()),'_4_5')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_4_5') AS `CONCAT(YEAR(NOW()),'_4_5')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_4_5') AS `CONCAT(YEAR(NOW()),'_4_5')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_4_5') AS `CONCAT(YEAR(NOW()),'_4_5')`,concat(year(now()),'04') AS `CONCAT(YEAR(NOW()),'04')` union all select concat(year(now()),'_4_5') AS `CONCAT(YEAR(NOW()),'_4_5')`,concat(year(now()),'05') AS `CONCAT(YEAR(NOW()),'05')` union all select concat(year(now()),'_4_6') AS `CONCAT(YEAR(NOW()),'_4_6')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_4_6') AS `CONCAT(YEAR(NOW()),'_4_6')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_4_6') AS `CONCAT(YEAR(NOW()),'_4_6')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_4_6') AS `CONCAT(YEAR(NOW()),'_4_6')`,concat(year(now()),'04') AS `CONCAT(YEAR(NOW()),'04')` union all select concat(year(now()),'_4_6') AS `CONCAT(YEAR(NOW()),'_4_6')`,concat(year(now()),'05') AS `CONCAT(YEAR(NOW()),'05')` union all select concat(year(now()),'_4_6') AS `CONCAT(YEAR(NOW()),'_4_6')`,concat(year(now()),'06') AS `CONCAT(YEAR(NOW()),'06')` union all select concat(year(now()),'_4_7') AS `CONCAT(YEAR(NOW()),'_4_7')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_4_7') AS `CONCAT(YEAR(NOW()),'_4_7')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_4_7') AS `CONCAT(YEAR(NOW()),'_4_7')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_4_7') AS `CONCAT(YEAR(NOW()),'_4_7')`,concat(year(now()),'04') AS `CONCAT(YEAR(NOW()),'04')` union all select concat(year(now()),'_4_7') AS `CONCAT(YEAR(NOW()),'_4_7')`,concat(year(now()),'05') AS `CONCAT(YEAR(NOW()),'05')` union all select concat(year(now()),'_4_7') AS `CONCAT(YEAR(NOW()),'_4_7')`,concat(year(now()),'06') AS `CONCAT(YEAR(NOW()),'06')` union all select concat(year(now()),'_4_7') AS `CONCAT(YEAR(NOW()),'_4_7')`,concat(year(now()),'07') AS `CONCAT(YEAR(NOW()),'07')` union all select concat(year(now()),'_4_8') AS `CONCAT(YEAR(NOW()),'_4_8')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_4_8') AS `CONCAT(YEAR(NOW()),'_4_8')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_4_8') AS `CONCAT(YEAR(NOW()),'_4_8')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_4_8') AS `CONCAT(YEAR(NOW()),'_4_8')`,concat(year(now()),'04') AS `CONCAT(YEAR(NOW()),'04')` union all select concat(year(now()),'_4_8') AS `CONCAT(YEAR(NOW()),'_4_8')`,concat(year(now()),'05') AS `CONCAT(YEAR(NOW()),'05')` union all select concat(year(now()),'_4_8') AS `CONCAT(YEAR(NOW()),'_4_8')`,concat(year(now()),'06') AS `CONCAT(YEAR(NOW()),'06')` union all select concat(year(now()),'_4_8') AS `CONCAT(YEAR(NOW()),'_4_8')`,concat(year(now()),'07') AS `CONCAT(YEAR(NOW()),'07')` union all select concat(year(now()),'_4_8') AS `CONCAT(YEAR(NOW()),'_4_8')`,concat(year(now()),'08') AS `CONCAT(YEAR(NOW()),'08')` union all select concat(year(now()),'_4_9') AS `CONCAT(YEAR(NOW()),'_4_9')`,concat(year(now()),'01') AS `CONCAT(YEAR(NOW()),'01')` union all select concat(year(now()),'_4_9') AS `CONCAT(YEAR(NOW()),'_4_9')`,concat(year(now()),'02') AS `CONCAT(YEAR(NOW()),'02')` union all select concat(year(now()),'_4_9') AS `CONCAT(YEAR(NOW()),'_4_9')`,concat(year(now()),'03') AS `CONCAT(YEAR(NOW()),'03')` union all select concat(year(now()),'_4_9') AS `CONCAT(YEAR(NOW()),'_4_9')`,concat(year(now()),'04') AS `CONCAT(YEAR(NOW()),'04')` union all select concat(year(now()),'_4_9') AS `CONCAT(YEAR(NOW()),'_4_9')`,concat(year(now()),'05') AS `CONCAT(YEAR(NOW()),'05')` union all select concat(year(now()),'_4_9') AS `CONCAT(YEAR(NOW()),'_4_9')`,concat(year(now()),'06') AS `CONCAT(YEAR(NOW()),'06')` union all select concat(year(now()),'_4_9') AS `CONCAT(YEAR(NOW()),'_4_9')`,concat(year(now()),'07') AS `CONCAT(YEAR(NOW()),'07')` union all select concat(year(now()),'_4_9') AS `CONCAT(YEAR(NOW()),'_4_9')`,concat(year(now()),'08') AS `CONCAT(YEAR(NOW()),'08')` union all select concat(year(now()),'_4_9') AS `CONCAT(YEAR(NOW()),'_4_9')`,concat(year(now()),'09') AS `CONCAT(YEAR(NOW()),'09')` ;

-- --------------------------------------------------------

--
-- Structure de la vue `requete_temps_1`
--
DROP TABLE IF EXISTS `requete_temps_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `requete_temps_1`  AS  select concat(cast(year(now()) as char charset cp850),'_1_',cast(year(now()) as char charset cp850)) AS `CODE`,`dim_temps`.`ID_TEMPS` AS `ID_TEMPS` from `dim_temps` where (`dim_temps`.`ANNEE` = year(now())) union all select concat(`dim_temps`.`ANNEE`,'_4_',`dim_temps`.`MOIS`) AS `concat(ANNEE,'_4_',MOIS)`,`dim_temps`.`ID_TEMPS` AS `ID_TEMPS` from `dim_temps` where (`dim_temps`.`ANNEE` = year(now())) union all select distinct (`t1`.`ANNEE` or '_3_' or `t1`.`TRIMESTRE`) AS `ANNEE||'_3_'||TRIMESTRE`,`t1`.`ID_TEMPS` AS `ID_TEMPS` from `dim_temps` `t1` where ((`t1`.`ANNEE` = year(now())) and `t1`.`MOIS` in (select distinct `dim_temps`.`MOIS` from `dim_temps` where ((`dim_temps`.`ANNEE` = `t1`.`ANNEE`) and (`dim_temps`.`TRIMESTRE` = `t1`.`TRIMESTRE`)))) union all select distinct (`t1`.`ANNEE` or '_2_' or `t1`.`SEMESTRE`) AS `ANNEE||'_2_'||SEMESTRE`,`t1`.`ID_TEMPS` AS `ID_TEMPS` from `dim_temps` `t1` where ((`t1`.`ANNEE` = year(now())) and `t1`.`MOIS` in (select distinct `dim_temps`.`MOIS` from `dim_temps` where ((`dim_temps`.`ANNEE` = `t1`.`ANNEE`) and (`dim_temps`.`SEMESTRE` = `t1`.`SEMESTRE`)))) union all select concat(cast((year(now()) - 1) as char charset cp850),'_1_',cast((year(now()) - 1) as char charset cp850)) AS `CODE`,`dim_temps`.`ID_TEMPS` AS `ID_TEMPS` from `dim_temps` where (`dim_temps`.`ANNEE` = (year(now()) - 1)) union all select concat(`dim_temps`.`ANNEE`,'_4_',`dim_temps`.`MOIS`) AS `concat(ANNEE,'_4_',MOIS)`,`dim_temps`.`ID_TEMPS` AS `ID_TEMPS` from `dim_temps` where (`dim_temps`.`ANNEE` = (year(now()) - 1)) union all select distinct (`t1`.`ANNEE` or '_3_' or `t1`.`TRIMESTRE`) AS `ANNEE||'_3_'||TRIMESTRE`,`t1`.`ID_TEMPS` AS `ID_TEMPS` from `dim_temps` `t1` where ((`t1`.`ANNEE` = (year(now()) - 1)) and `t1`.`MOIS` in (select distinct `dim_temps`.`MOIS` from `dim_temps` where ((`dim_temps`.`ANNEE` = `t1`.`ANNEE`) and (`dim_temps`.`TRIMESTRE` = `t1`.`TRIMESTRE`)))) union all select distinct (`t1`.`ANNEE` or '_2_' or `t1`.`SEMESTRE`) AS `ANNEE||'_2_'||SEMESTRE`,`t1`.`ID_TEMPS` AS `ID_TEMPS` from `dim_temps` `t1` where ((`t1`.`ANNEE` = (year(now()) - 1)) and `t1`.`MOIS` in (select distinct `dim_temps`.`MOIS` from `dim_temps` where ((`dim_temps`.`ANNEE` = `t1`.`ANNEE`) and (`dim_temps`.`SEMESTRE` = `t1`.`SEMESTRE`)))) union all select concat(cast((year(now()) - 2) as char charset cp850),'_1_',cast((year(now()) - 2) as char charset cp850)) AS `CODE`,`dim_temps`.`ID_TEMPS` AS `ID_TEMPS` from `dim_temps` where (`dim_temps`.`ANNEE` = (year(now()) - 2)) union all select concat(`dim_temps`.`ANNEE`,'_4_',`dim_temps`.`MOIS`) AS `concat(ANNEE,'_4_',MOIS)`,`dim_temps`.`ID_TEMPS` AS `ID_TEMPS` from `dim_temps` where (`dim_temps`.`ANNEE` = (year(now()) - 2)) union all select distinct (`t1`.`ANNEE` or '_3_' or `t1`.`TRIMESTRE`) AS `ANNEE||'_3_'||TRIMESTRE`,`t1`.`ID_TEMPS` AS `ID_TEMPS` from `dim_temps` `t1` where ((`t1`.`ANNEE` = (year(now()) - 2)) and `t1`.`MOIS` in (select distinct `dim_temps`.`MOIS` from `dim_temps` where ((`dim_temps`.`ANNEE` = `t1`.`ANNEE`) and (`dim_temps`.`TRIMESTRE` = `t1`.`TRIMESTRE`)))) union all select distinct (`t1`.`ANNEE` or '_2_' or `t1`.`SEMESTRE`) AS `ANNEE||'_2_'||SEMESTRE`,`t1`.`ID_TEMPS` AS `ID_TEMPS` from `dim_temps` `t1` where ((`t1`.`ANNEE` = (year(now()) - 2)) and `t1`.`MOIS` in (select distinct `dim_temps`.`MOIS` from `dim_temps` where ((`dim_temps`.`ANNEE` = `t1`.`ANNEE`) and (`dim_temps`.`SEMESTRE` = `t1`.`SEMESTRE`)))) ;

-- --------------------------------------------------------

--
-- Structure de la vue `select_cumul`
--
DROP TABLE IF EXISTS `select_cumul`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `select_cumul`  AS  select 0 AS `CODE`,'Cumul├®' AS `LIB_CUMUL` union all select 1 AS `1`,'Non cumul├®' AS `Non cumul├®` order by `CODE` ;

-- --------------------------------------------------------

--
-- Structure de la vue `select_devise`
--
DROP TABLE IF EXISTS `select_devise`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `select_devise`  AS  select `devise`.`ID_DEVISE` AS `CODE`,`devise`.`LIB_DEVISE` AS `LIB_devise` from `devise` order by `devise`.`ID_DEVISE` ;

-- --------------------------------------------------------

--
-- Structure de la vue `select_enseigne`
--
DROP TABLE IF EXISTS `select_enseigne`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `select_enseigne`  AS  select 0 AS `CODE`,'Toutes les enseignes' AS `LIB_ENSEIGNE` union all select `dim_enseigne`.`ID_ENSEIGNE` AS `ID_ENSEIGNE`,`dim_enseigne`.`LIB_ENSEIGNE` AS `LIB_ENSEIGNE` from `dim_enseigne` order by `CODE` ;

-- --------------------------------------------------------

--
-- Structure de la vue `select_famille_produit`
--
DROP TABLE IF EXISTS `select_famille_produit`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `select_famille_produit`  AS  select 0 AS `CODE`,'Toutes les familles' AS `LIB_FAMILLE` union all select `dim_famille_produit`.`ID_FAMILLE_PRODUIT` AS `ID_FAMILLE_PRODUIT`,`dim_famille_produit`.`LIB_FAMILLE_PRODUIT` AS `LIB_FAMILLE_PRODUIT` from `dim_famille_produit` ;

-- --------------------------------------------------------

--
-- Structure de la vue `select_indicateur`
--
DROP TABLE IF EXISTS `select_indicateur`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `select_indicateur`  AS  select 0 AS `CODE`,'Tous les indicateurs' AS `LIB_IND` union all select 1 AS `1`,'Chiffres d\'affaires' AS `Chiffres d'affaires` union all select 2 AS `2`,'Nombres de ventes' AS `Nombres de ventes` union all select 3 AS `3`,'Taux de marges' AS `Taux de marges` order by `CODE` ;

-- --------------------------------------------------------

--
-- Structure de la vue `select_onglet`
--
DROP TABLE IF EXISTS `select_onglet`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `select_onglet`  AS  select 1 AS `CODE`,'Acceuil' AS `LIB_ONGLET` union all select 2 AS `2`,'Historique' AS `Historique` union all select 3 AS `3`,'Palmar├¿s' AS `Palmar├¿s` union all select 4 AS `4`,'D├®tail' AS `D├®tail` order by `CODE` ;

-- --------------------------------------------------------

--
-- Structure de la vue `select_temps`
--
DROP TABLE IF EXISTS `select_temps`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `select_temps`  AS  select concat(cast(year(now()) as char charset cp850),'_1_',cast(year(now()) as char charset cp850)) AS `CODE_TEMPS`,cast(year(now()) as char charset cp850) AS `LIB_TEMPS`,19 AS `ORDRE` union all select concat(`dim_temps`.`ANNEE`,'_4_',`dim_temps`.`MOIS`) AS `CONCAT(ANNEE,'_4_',MOIS)`,concat(' ',`dim_temps`.`LIB_MOIS`,' (',`dim_temps`.`ANNEE`,')') AS `CONCAT(' ',LIB_MOIS,' (',ANNEE,')')`,`dim_temps`.`MOIS` AS `MOIS` from `dim_temps` where ((`dim_temps`.`ANNEE` = year(now())) and concat(cast(year(now()) as char charset cp850),convert(lpad(`dim_temps`.`MOIS`,2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null))) union all select distinct concat(`dim_temps`.`ANNEE`,'_3_',`dim_temps`.`TRIMESTRE`) AS `CONCAT(ANNEE,'_3_',TRIMESTRE)`,concat(' Trimestre ',`dim_temps`.`TRIMESTRE`,' (',`dim_temps`.`ANNEE`,')') AS `CONCAT(' Trimestre ',TRIMESTRE,' (',ANNEE,')')`,(12 + `dim_temps`.`TRIMESTRE`) AS `12+TRIMESTRE` from `dim_temps` where ((`dim_temps`.`ANNEE` = year(now())) and (concat(cast(year(now()) as char charset cp850),convert(lpad((((`dim_temps`.`TRIMESTRE` - 1) * 3) + 1),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast(year(now()) as char charset cp850),convert(lpad((((`dim_temps`.`TRIMESTRE` - 1) * 3) + 2),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast(year(now()) as char charset cp850),convert(lpad((((`dim_temps`.`TRIMESTRE` - 1) * 3) + 3),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)))) union all select distinct concat(`dim_temps`.`ANNEE`,'_2_',`dim_temps`.`SEMESTRE`) AS `CONCAT(ANNEE,'_2_',SEMESTRE)`,concat(' Semestre ',`dim_temps`.`SEMESTRE`,' (',`dim_temps`.`ANNEE`,')') AS `CONCAT(' Semestre ',SEMESTRE,' (',ANNEE,')')`,(16 + `dim_temps`.`SEMESTRE`) AS `16+SEMESTRE` from `dim_temps` where ((`dim_temps`.`ANNEE` = year(now())) and (concat(cast(year(now()) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 1),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast(year(now()) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 2),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast(year(now()) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 3),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast(year(now()) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 4),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast(year(now()) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 5),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast(year(now()) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 6),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)))) union all select concat(cast((year(now()) - 1) as char charset cp850),'_1_',cast((year(now()) - 1) as char charset cp850)) AS `CODE_TEMPS`,cast((year(now()) - 1) as char charset cp850) AS `LIB_TEMPS`,39 AS `ORDRE` union all select concat(`dim_temps`.`ANNEE`,'_4_',`dim_temps`.`MOIS`) AS `CONCAT(ANNEE,'_4_',MOIS)`,concat(' ',`dim_temps`.`LIB_MOIS`,' (',`dim_temps`.`ANNEE`,')') AS `CONCAT(' ',LIB_MOIS,' (',ANNEE,')')`,(20 + `dim_temps`.`MOIS`) AS `20+MOIS` from `dim_temps` where ((`dim_temps`.`ANNEE` = (year(now()) - 1)) and concat(cast((year(now()) - 1) as char charset cp850),convert(lpad(`dim_temps`.`MOIS`,2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null))) union all select distinct concat(`dim_temps`.`ANNEE`,'_3_',`dim_temps`.`TRIMESTRE`) AS `CONCAT(ANNEE,'_3_',TRIMESTRE)`,concat(' Trimestre ',`dim_temps`.`TRIMESTRE`,' (',`dim_temps`.`ANNEE`,')') AS `CONCAT(' Trimestre ',TRIMESTRE,' (',ANNEE,')')`,(32 + `dim_temps`.`TRIMESTRE`) AS `32+TRIMESTRE` from `dim_temps` where ((`dim_temps`.`ANNEE` = (year(now()) - 1)) and (concat(cast((year(now()) - 1) as char charset cp850),convert(lpad((((`dim_temps`.`TRIMESTRE` - 1) * 3) + 1),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast((year(now()) - 1) as char charset cp850),convert(lpad((((`dim_temps`.`TRIMESTRE` - 1) * 3) + 2),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast((year(now()) - 1) as char charset cp850),convert(lpad((((`dim_temps`.`TRIMESTRE` - 1) * 3) + 3),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)))) union all select distinct concat(`dim_temps`.`ANNEE`,'_2_',`dim_temps`.`SEMESTRE`) AS `CONCAT(ANNEE,'_2_',SEMESTRE)`,concat(' Semestre ',`dim_temps`.`SEMESTRE`,' (',`dim_temps`.`ANNEE`,')') AS `CONCAT(' Semestre ',SEMESTRE,' (',ANNEE,')')`,(36 + `dim_temps`.`SEMESTRE`) AS `36+SEMESTRE` from `dim_temps` where ((`dim_temps`.`ANNEE` = (year(now()) - 1)) and (concat(cast((year(now()) - 1) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 1),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast((year(now()) - 1) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 2),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast((year(now()) - 1) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 3),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast((year(now()) - 1) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 4),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast((year(now()) - 1) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 5),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast((year(now()) - 1) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 6),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)))) union all select concat(cast((year(now()) - 2) as char charset cp850),'_1_',cast((year(now()) - 2) as char charset cp850)) AS `CODE_TEMPS`,cast((year(now()) - 2) as char charset cp850) AS `LIB_TEMPS`,59 AS `ORDRE` union all select concat(`dim_temps`.`ANNEE`,'_4_',`dim_temps`.`MOIS`) AS `CONCAT(ANNEE,'_4_',MOIS)`,concat(' ',`dim_temps`.`LIB_MOIS`,' (',`dim_temps`.`ANNEE`,')') AS `CONCAT(' ',LIB_MOIS,' (',ANNEE,')')`,(40 + `dim_temps`.`MOIS`) AS `40+MOIS` from `dim_temps` where ((`dim_temps`.`ANNEE` = (year(now()) - 2)) and concat(cast((year(now()) - 2) as char charset cp850),convert(lpad(`dim_temps`.`MOIS`,2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null))) union all select distinct concat(`dim_temps`.`ANNEE`,'_3_',`dim_temps`.`TRIMESTRE`) AS `CONCAT(ANNEE,'_3_',TRIMESTRE)`,concat(' Trimestre ',`dim_temps`.`TRIMESTRE`,' (',`dim_temps`.`ANNEE`,')') AS `CONCAT(' Trimestre ',TRIMESTRE,' (',ANNEE,')')`,(52 + `dim_temps`.`TRIMESTRE`) AS `52+TRIMESTRE` from `dim_temps` where ((`dim_temps`.`ANNEE` = (year(now()) - 2)) and (concat(cast((year(now()) - 2) as char charset cp850),convert(lpad((((`dim_temps`.`TRIMESTRE` - 1) * 3) + 1),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast((year(now()) - 2) as char charset cp850),convert(lpad((((`dim_temps`.`TRIMESTRE` - 1) * 3) + 2),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast((year(now()) - 2) as char charset cp850),convert(lpad((((`dim_temps`.`TRIMESTRE` - 1) * 3) + 3),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)))) union all select distinct concat(`dim_temps`.`ANNEE`,'_2_',`dim_temps`.`SEMESTRE`) AS `CONCAT(ANNEE,'_2_',SEMESTRE)`,concat(' Semestre ',`dim_temps`.`SEMESTRE`,' (',`dim_temps`.`ANNEE`,')') AS `CONCAT(' Semestre ',SEMESTRE,' (',ANNEE,')')`,(56 + `dim_temps`.`SEMESTRE`) AS `56+SEMESTRE` from `dim_temps` where ((`dim_temps`.`ANNEE` = (year(now()) - 2)) and (concat(cast((year(now()) - 2) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 1),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast((year(now()) - 2) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 2),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast((year(now()) - 2) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 3),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast((year(now()) - 2) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 4),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast((year(now()) - 2) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 5),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)) or concat(cast((year(now()) - 2) as char charset cp850),convert(lpad((((`dim_temps`.`SEMESTRE` - 1) * 6) + 6),2,0) using cp850)) in (select distinct `faits_ventes_star`.`ID_TEMPS` from `faits_ventes_star` where (`faits_ventes_star`.`CA_REEL` is not null)))) order by `ORDRE` ;

-- --------------------------------------------------------

--
-- Structure de la vue `select_user`
--
DROP TABLE IF EXISTS `select_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `select_user`  AS  select `utilisateur`.`ID` AS `CODE`,`utilisateur`.`USERNAME` AS `USERNAME` from `utilisateur` order by `utilisateur`.`ID` ;

-- --------------------------------------------------------

--
-- Structure de la vue `select_zone_geo`
--
DROP TABLE IF EXISTS `select_zone_geo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`darties1`@`localhost` SQL SECURITY DEFINER VIEW `select_zone_geo`  AS  select 0 AS `CODE`,'Toute la france' AS `LIBELLE` union all select (`dim_geographique_com`.`ID_REGION_COM` * 100) AS `CODE`,`dim_geographique_com`.`LIB_REGION_COM` AS `LIBELLE` from `dim_geographique_com` union all select ((`dim_departement`.`ID_REGION_COM` * 100) + `dim_magasin`.`ID_MAGASIN`) AS `CODE`,`dim_magasin`.`VILLE` AS `LIBELLE` from ((`dim_geographique_com` join `dim_magasin`) join `dim_departement`) where ((`dim_magasin`.`DEP` = `dim_departement`.`ID_DEPARTEMENT`) and (`dim_geographique_com`.`ID_REGION_COM` = `dim_departement`.`ID_REGION_COM`)) union all select ((`dim_geographique_admin`.`ID_REGION_ADMIN` + 9) * 100) AS `CODE`,`dim_geographique_admin`.`LIB_REGION_ADMIN` AS `LIBELLE` from `dim_geographique_admin` where (`dim_geographique_admin`.`ID_REGION_ADMIN` < 23) union all select (((`dim_geographique_admin`.`ID_REGION_ADMIN` + 9) * 100) + `dim_magasin`.`ID_MAGASIN`) AS `CODE`,`dim_magasin`.`VILLE` AS `LIBELLE` from ((`dim_geographique_admin` join `dim_departement`) join `dim_magasin`) where ((`dim_magasin`.`DEP` = `dim_departement`.`ID_DEPARTEMENT`) and (`dim_geographique_admin`.`ID_REGION_ADMIN` = `dim_departement`.`ID_REGION_ADMIN1`) and (`dim_geographique_admin`.`ID_REGION_ADMIN` < 23)) union all select ((`dim_geographique_admin`.`ID_REGION_ADMIN` + 9) * 100) AS `CODE`,`dim_geographique_admin`.`LIB_REGION_ADMIN` AS `LIBELLE` from `dim_geographique_admin` where (`dim_geographique_admin`.`ID_REGION_ADMIN` >= 23) union all select (((`dim_geographique_admin`.`ID_REGION_ADMIN` + 9) * 100) + `dim_magasin`.`ID_MAGASIN`) AS `CODE`,`dim_magasin`.`VILLE` AS `LIBELLE` from ((`dim_geographique_admin` join `dim_departement`) join `dim_magasin`) where ((`dim_magasin`.`DEP` = `dim_departement`.`ID_DEPARTEMENT`) and (`dim_geographique_admin`.`ID_REGION_ADMIN` = `dim_departement`.`ID_REGION_ADMIN2`) and (`dim_geographique_admin`.`ID_REGION_ADMIN` >= 23)) order by `CODE` ;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`ID_DEVISE`,`MOIS`,`ANNEE`),
  ADD KEY `fk_cours_devise1` (`ID_DEVISE`);

--
-- Index pour la table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`ID_MAGASIN`,`ID_FAMILLE_PRODUIT`,`ID_TEMPS`,`INDICATEUR`,`ID_PROFIL`);

--
-- Index pour la table `devise`
--
ALTER TABLE `devise`
  ADD PRIMARY KEY (`ID_DEVISE`),
  ADD UNIQUE KEY `ISOCODE_UNIQUE` (`ISOCODE`);

--
-- Index pour la table `dim_departement`
--
ALTER TABLE `dim_departement`
  ADD PRIMARY KEY (`ID_DEPARTEMENT`),
  ADD UNIQUE KEY `CODE_DEPARTEMENT_UNIQUE` (`CODE_DEPARTEMENT`),
  ADD KEY `fk_dim_departement_dim_geographique_com1` (`ID_REGION_COM`),
  ADD KEY `fk_dim_departement_dim_geographique_admin1` (`ID_REGION_ADMIN1`),
  ADD KEY `fk_dim_departement_dim_geographique_admin2` (`ID_REGION_ADMIN2`),
  ADD KEY `fk_dim_departement_france_departements1` (`CODE_DEPARTEMENT`);

--
-- Index pour la table `dim_enseigne`
--
ALTER TABLE `dim_enseigne`
  ADD PRIMARY KEY (`ID_ENSEIGNE`);

--
-- Index pour la table `dim_famille_produit`
--
ALTER TABLE `dim_famille_produit`
  ADD PRIMARY KEY (`ID_FAMILLE_PRODUIT`);

--
-- Index pour la table `dim_geographique_admin`
--
ALTER TABLE `dim_geographique_admin`
  ADD PRIMARY KEY (`ID_REGION_ADMIN`);

--
-- Index pour la table `dim_geographique_com`
--
ALTER TABLE `dim_geographique_com`
  ADD PRIMARY KEY (`ID_REGION_COM`);

--
-- Index pour la table `dim_magasin`
--
ALTER TABLE `dim_magasin`
  ADD PRIMARY KEY (`ID_MAGASIN`),
  ADD KEY `fk_dim_magasin_dim_enseigne1` (`ID_ENSEIGNE`),
  ADD KEY `fk_dim_magasin_dim_departement1` (`DEP`);

--
-- Index pour la table `dim_magasin_star`
--
ALTER TABLE `dim_magasin_star`
  ADD PRIMARY KEY (`ID_MAGASIN`);

--
-- Index pour la table `dim_temps`
--
ALTER TABLE `dim_temps`
  ADD PRIMARY KEY (`ID_TEMPS`);

--
-- Index pour la table `dwr_faits_ventes`
--
ALTER TABLE `dwr_faits_ventes`
  ADD PRIMARY KEY (`ID_MAGASIN`,`ID_FAMILLE_PRODUIT`,`ID_TEMPS`,`INDICATEUR`);

--
-- Index pour la table `faits_ventes`
--
ALTER TABLE `faits_ventes`
  ADD PRIMARY KEY (`ID_MAGASIN`,`ID_FAMILLE_PRODUIT`,`ID_TEMPS`),
  ADD KEY `FK_FP` (`ID_FAMILLE_PRODUIT`),
  ADD KEY `FK_FT` (`ID_TEMPS`);

--
-- Index pour la table `faits_ventes_star`
--
ALTER TABLE `faits_ventes_star`
  ADD PRIMARY KEY (`ID_MAGASIN`,`ID_FAMILLE_PRODUIT`,`ID_TEMPS`),
  ADD KEY `FK_faits_ventes_SR_DIM_FAMILLE` (`ID_FAMILLE_PRODUIT`),
  ADD KEY `FK_faits_ventes_star_DIM_TEMPS` (`ID_TEMPS`);

--
-- Index pour la table `france_departements`
--
ALTER TABLE `france_departements`
  ADD PRIMARY KEY (`CODE_DEPT`);

--
-- Index pour la table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`ID_PROFIL`);

--
-- Index pour la table `securite`
--
ALTER TABLE `securite`
  ADD PRIMARY KEY (`ID_MAGASIN`,`ID_PROFIL`,`ONGLET`),
  ADD KEY `fk_securite_profil1` (`ID_PROFIL`),
  ADD KEY `fk_securite_dim_magasin1` (`ID_MAGASIN`);

--
-- Index pour la table `securite_star`
--
ALTER TABLE `securite_star`
  ADD PRIMARY KEY (`ID_PROFIL`,`ID_MAGASIN`,`ONGLET`),
  ADD KEY `fk_securite_star_dim_magasin1` (`ID_MAGASIN`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `USERNAME_UNIQUE` (`USERNAME`),
  ADD UNIQUE KEY `ID_PROFIL_UNIQUE` (`ID_PROFIL`),
  ADD UNIQUE KEY `MAIL_UNIQUE` (`MAIL`),
  ADD KEY `FK_PROFIL` (`ID_PROFIL`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `devise`
--
ALTER TABLE `devise`
  MODIFY `ID_DEVISE` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant devise', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `dim_departement`
--
ALTER TABLE `dim_departement`
  MODIFY `ID_DEPARTEMENT` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant du departement', AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `dim_enseigne`
--
ALTER TABLE `dim_enseigne`
  MODIFY `ID_ENSEIGNE` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant de l''enseigne', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `dim_famille_produit`
--
ALTER TABLE `dim_famille_produit`
  MODIFY `ID_FAMILLE_PRODUIT` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant de la famille des produits', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `dim_geographique_admin`
--
ALTER TABLE `dim_geographique_admin`
  MODIFY `ID_REGION_ADMIN` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant de la region administrative', AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `dim_geographique_com`
--
ALTER TABLE `dim_geographique_com`
  MODIFY `ID_REGION_COM` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant de la region commerciale', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `dim_magasin`
--
ALTER TABLE `dim_magasin`
  MODIFY `ID_MAGASIN` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant du magasin', AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT pour la table `profil`
--
ALTER TABLE `profil`
  MODIFY `ID_PROFIL` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant du profil', AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifiant de l''utilisateur', AUTO_INCREMENT=56;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `fk_cours_devise1` FOREIGN KEY (`ID_DEVISE`) REFERENCES `devise` (`ID_DEVISE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `dim_departement`
--
ALTER TABLE `dim_departement`
  ADD CONSTRAINT `fk_dim_departement_dim_geographique_admin1` FOREIGN KEY (`ID_REGION_ADMIN1`) REFERENCES `dim_geographique_admin` (`ID_REGION_ADMIN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dim_departement_dim_geographique_admin2` FOREIGN KEY (`ID_REGION_ADMIN2`) REFERENCES `dim_geographique_admin` (`ID_REGION_ADMIN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dim_departement_dim_geographique_com1` FOREIGN KEY (`ID_REGION_COM`) REFERENCES `dim_geographique_com` (`ID_REGION_COM`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dim_departement_france_departements1` FOREIGN KEY (`CODE_DEPARTEMENT`) REFERENCES `france_departements` (`CODE_DEPT`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `dim_magasin`
--
ALTER TABLE `dim_magasin`
  ADD CONSTRAINT `fk_dim_magasin_dim_departement1` FOREIGN KEY (`DEP`) REFERENCES `dim_departement` (`ID_DEPARTEMENT`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dim_magasin_dim_enseigne1` FOREIGN KEY (`ID_ENSEIGNE`) REFERENCES `dim_enseigne` (`ID_ENSEIGNE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `faits_ventes`
--
ALTER TABLE `faits_ventes`
  ADD CONSTRAINT `faits_ventes_ibfk_1` FOREIGN KEY (`ID_FAMILLE_PRODUIT`) REFERENCES `dim_famille_produit` (`ID_FAMILLE_PRODUIT`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `faits_ventes_ibfk_2` FOREIGN KEY (`ID_MAGASIN`) REFERENCES `dim_magasin` (`ID_MAGASIN`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `faits_ventes_ibfk_3` FOREIGN KEY (`ID_TEMPS`) REFERENCES `dim_temps` (`ID_TEMPS`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `faits_ventes_star`
--
ALTER TABLE `faits_ventes_star`
  ADD CONSTRAINT `FK_faits_ventes_SR_DIM_FAMILLE` FOREIGN KEY (`ID_FAMILLE_PRODUIT`) REFERENCES `dim_famille_produit` (`ID_FAMILLE_PRODUIT`),
  ADD CONSTRAINT `FK_faits_ventes_star_DIM_TEMPS` FOREIGN KEY (`ID_TEMPS`) REFERENCES `dim_temps` (`ID_TEMPS`);

--
-- Contraintes pour la table `securite`
--
ALTER TABLE `securite`
  ADD CONSTRAINT `fk_securite_dim_magasin1` FOREIGN KEY (`ID_MAGASIN`) REFERENCES `dim_magasin` (`ID_MAGASIN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_securite_profil1` FOREIGN KEY (`ID_PROFIL`) REFERENCES `profil` (`ID_PROFIL`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `securite_star`
--
ALTER TABLE `securite_star`
  ADD CONSTRAINT `securite_star_PROFIL_FK` FOREIGN KEY (`ID_PROFIL`) REFERENCES `profil` (`ID_PROFIL`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `UTILISATEUR_ibfk_1` FOREIGN KEY (`ID_PROFIL`) REFERENCES `profil` (`ID_PROFIL`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
