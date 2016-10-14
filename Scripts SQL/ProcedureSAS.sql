-- Tableau d'accueil pour les directeurs de magasin du groupe DARTIES

$db = ORM::get_db();

-- Filtrage selon la valeur des invites
$sql = sprintf("CREATE TEMPORARY TABLE '%s'.transi as
  SELECT * from data_0 AS '%s'.transi
  WHERE id_enseigne in(select id_enseigne from requete_enseigne where code= '%d')
  AND id_temps in(select id_temps from requete_temps_0 where code= '%s')
  AND id_magasin in(select id_magasin from requete_geo where code = '%d')",
    mysql_real_escape_string($random),
    mysql_real_escape_string($i_enseigne),
    mysql_real_escape_string($i_temps),
    mysql_real_escape_string($i_region_dm));

$db->exec($sql);


/* Tableau dédié aux valeurs de chiffre d'affaire */

$sql = sprintf("CREATE TEMPORARY TABLE '%s'.Accueil_CA AS
      SELECT t3.LIB_FAMILLE_PRODUIT,(SUM(OBJECTIF)) LABEL="CA budgeté" AS CA_Objectif,(SUM(REEL))  LABEL="CA réel" AS CA_Reel
      FROM DIM_MAGASIN_STAR t1, '%s'.transi t2, DIM_FAMILLE_PRODUIT t3
      WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN AND t2.ID_FAMILLE_PRODUIT = t3.ID_FAMILLE_PRODUIT AND INDICATEUR="CA")
      GROUP BY t3.LIB_FAMILLE_PRODUIT",
          mysql_real_escape_string($random),
          mysql_real_escape_string($random));

$db->exec($sql);



/* Tableau dédié aux ventes */

$sql = sprintf("CREATE TEMPORARY TABLE '%s'.Accueil_VE AS
      SELECT t3.LIB_FAMILLE_PRODUIT,(SUM(OBJECTIF))  LABEL="Ventes budgetées" AS Ventes_Objectif,(SUM(REEL))  LABEL="Ventes réelles" AS Ventes_Reel
      FROM DIM_MAGASIN_STAR t1, '%s'.transi t2, DIM_FAMILLE_PRODUIT t3
      WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN AND t2.ID_FAMILLE_PRODUIT = t3.ID_FAMILLE_PRODUIT AND INDICATEUR="VENTES")
      GROUP BY t3.LIB_FAMILLE_PRODUIT",
          mysql_real_escape_string($random),
          mysql_real_escape_string($random));

$db->exec($sql);



/* Tableau dédié aux valeurs de marge */

$sql = sprintf("CREATE TEMPORARY TABLE '%s'.Accueil_MA AS
      SELECT t3.LIB_FAMILLE_PRODUIT,(SUM(OBJECTIF))  LABEL="Marge budgetée" AS Marge_Objectif,(SUM(REEL)) LABEL="Marge réelle" AS Marge_Reel
      FROM DIM_MAGASIN_STAR t1, '%s'.transi t2, DIM_FAMILLE_PRODUIT t3
      WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN AND t2.ID_FAMILLE_PRODUIT = t3.ID_FAMILLE_PRODUIT AND INDICATEUR="MARGE")
      GROUP BY t3.LIB_FAMILLE_PRODUIT",
          mysql_real_escape_string($random),
          mysql_real_escape_string($random));

$db->exec($sql);



/* Rassemblement des 3 tableaux précédents */


CREATE TEMPORARY TABLE '%s'.transi_Accueil as
Select t1.lib_famille_produit, t1.CA_Reel, t1.CA_Objectif,  t2.Ventes_Reel, t2.Ventes_Objectif, t3.Marge_Reel,t3.Marge_Objectif
from '%s'.Accueil_CA t1, '%s'.Accueil_VE t2, '%s'.Accueil_MA t3
where t1.Lib_famille_produit=t2.Lib_famille_produit and t1.Lib_famille_produit=t3.lib_famille_produit
;


/* Ajout d'une ligne de total */


CREATE TEMPORARY TABLE '%s'.Accueil as
select * from '%s'.transi_accueil
Union all
select "Total" as Total,
						 /* CA */
						 sum(CA_Reel) as CA_Reel,
						 sum(CA_Objectif) as CA_Objectif,

						 /* Ventes */
						 sum(Ventes_Reel) as Ventes_Reel,
						 sum(Ventes_Objectif) as Ventes_Objectif,

						 /* Marge */
						 sum(Marge_Reel) as Marge_Reel,
						 sum(Marge_Objectif) as Marge_Objectif
from '%s'.transi_accueil
;



/* Récupération des éléments du titre */

/* Zone géographique */

  PROC SQL noprint;
  select trim(libelle) into :REGION
  from select_zone_geo_DM
  where code=&I_REGION_DM.
  ;


  /* Année actuelle */

  PROC sql noprint;
  select substr(compress("&I_TEMPS."),0,4) into :ANNEE_CURR
  from SELECT_TEMPS
  where code="&I_TEMPS."
  ;


  /* Année précédente */

  PROC sql noprint;
  select put(input(substr(compress("&I_TEMPS."),0,4),4.)-1,4.) into :ANNEE_PREC
  from SELECT_TEMPS
  where code="&I_TEMPS."
  ;
