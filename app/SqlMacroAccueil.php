<?php
namespace App;

class SqlMacroAccueil extends Model{

	public static function call($params = array(),$obj)
	{

		$params['I_DEVISE'] = 0;
		$app = App::getInstance();


    $geo = $params['I_REGION'];
    $enseigne = $params['I_ENSEIGNE'];
    $temps = $params['I_TEMPS'];
		$user = $_COOKIE['USER_ID'];


		$sql = "DROP TABLE IF EXISTS transi".$user;
		$obj->exec($sql);
		$sql = "DROP TABLE IF EXISTS Accueil_CA".$user;
		$obj->exec($sql);
		$sql = "DROP TABLE IF EXISTS Accueil_VE".$user;
		$obj->exec($sql);
		$sql = "DROP TABLE IF EXISTS Accueil_MA".$user;
		$obj->exec($sql);
		$sql = "DROP TABLE IF EXISTS transi_accueil".$user;
		$obj->exec($sql);
		$sql = "DROP TABLE IF EXISTS Accueil".$user;
		$obj->exec($sql);



    // Filtrage selon la valeur des invites
    $sql = "CREATE TEMPORARY TABLE transi".$user." as
      SELECT * from data_0
      WHERE id_enseigne in(select id_enseigne from requete_enseigne where code_enseigne='".$enseigne."')
      AND id_temps in(select id_temps from requete_temps_0 where code='".$temps."')
      AND id_magasin in(select id_magasin from requete_geo where code ='".$geo."')";

    $obj->exec($sql);

		// Tableau dédié aux valeurs de chiffre d'affaire
		$sql = "CREATE TEMPORARY TABLE Accueil_CA".$user." AS
		      SELECT t3.LIB_FAMILLE_PRODUIT,(SUM(OBJECTIF)) AS CA_Objectif,(SUM(REEL)) AS CA_Reel
		      FROM DIM_MAGASIN_STAR t1, transi".$user." t2, DIM_FAMILLE_PRODUIT t3
		      WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN AND t2.ID_FAMILLE_PRODUIT = t3.ID_FAMILLE_PRODUIT AND INDICATEUR='CA')
		      GROUP BY t3.LIB_FAMILLE_PRODUIT";

		$obj->exec($sql);

	  // Tableau dédié aux ventes
		$sql = "CREATE TEMPORARY TABLE Accueil_VE".$user." AS
		SELECT t3.LIB_FAMILLE_PRODUIT,(SUM(OBJECTIF))AS Ventes_Objectif,
						 (SUM(REEL)) AS Ventes_Reel
					FROM DIM_MAGASIN_STAR t1, transi".$user." t2, DIM_FAMILLE_PRODUIT t3
			 WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN AND t2.ID_FAMILLE_PRODUIT = t3.ID_FAMILLE_PRODUIT AND INDICATEUR='VENTES')
			 GROUP BY t3.LIB_FAMILLE_PRODUIT";

		$obj->exec($sql);

		// Tableau dédié aux valeurs de marge
		$sql = "CREATE TEMPORARY TABLE Accueil_MA".$user." AS
    	SELECT t3.LIB_FAMILLE_PRODUIT,(SUM(OBJECTIF)) AS Marge_Objectif,(SUM(REEL)) AS Marge_Reel
      FROM DIM_MAGASIN_STAR t1, transi".$user." t2, DIM_FAMILLE_PRODUIT t3
      WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN AND t2.ID_FAMILLE_PRODUIT = t3.ID_FAMILLE_PRODUIT AND INDICATEUR='MARGE')
      GROUP BY t3.LIB_FAMILLE_PRODUIT";

		$obj->exec($sql);

		// Rassemblement des 3 tableaux précédents 1
		$sql = "Create TEMPORARY table transi_accueil".$user." as
		Select t1.lib_famille_produit, t1.CA_Reel, t1.CA_Objectif,  t2.Ventes_Reel, t2.Ventes_Objectif, t3.Marge_Reel,t3.Marge_Objectif
		from Accueil_CA".$user." t1, Accueil_VE".$user." t2, Accueil_MA".$user." t3
		where t1.Lib_famille_produit=t2.Lib_famille_produit and t1.Lib_famille_produit=t3.lib_famille_produit";

		$obj->exec($sql);

		// Rassemblement des 3 tableaux précédents 2
		$sql = "Create TEMPORARY table transi_accueil2".$user." as
		Select t1.lib_famille_produit, t1.CA_Reel, t1.CA_Objectif,  t2.Ventes_Reel, t2.Ventes_Objectif, t3.Marge_Reel,t3.Marge_Objectif
		from Accueil_CA".$user." t1, Accueil_VE".$user." t2, Accueil_MA".$user." t3
		where t1.Lib_famille_produit=t2.Lib_famille_produit and t1.Lib_famille_produit=t3.lib_famille_produit";

		$obj->exec($sql);
		// Ajout d'une ligne de total
		$sql = "CREATE TABLE Accueil".$user." as
		select * from transi_accueil".$user."
		Union all
		select 'Total' as Total,
								 sum(CA_Reel) as CA_Reel,
								 sum(CA_Objectif) as CA_Objectif,
								 sum(Ventes_Reel) as Ventes_Reel,
								 sum(Ventes_Objectif) as Ventes_Objectif,
								 sum(Marge_Reel) as Marge_Reel,
								 sum(Marge_Objectif) as Marge_Objectif
		from transi_accueil2".$user."";

		$obj->exec($sql);

		$data = ORM::for_table('Accueil'.$user)->find_array();
		$table = $app->view()->render("/macro/accueil/table.html", array('data' => $data));

		return $table;


	}
}
