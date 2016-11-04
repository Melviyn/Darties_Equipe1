<?php
namespace App;

class SqlMacroHistorique extends Model{

	public static function call($params = array(),$obj)
	{

		$params['I_DEVISE'] = 0;
		$app = App::getInstance();


    $geo = $params['I_REGION'];
    $enseigne = $params['I_ENSEIGNE'];
    $temps = $params['I_TEMPS'];
    $indic = $params['I_INDICATEUR'];
    $famprod = $params['I_FAMPROD'];
		$user = $_COOKIE['USER_ID'];

		$sql = "DROP TABLE IF EXISTS histo_transi".$user;
		$obj->exec($sql);
    $sql = "DROP TABLE IF EXISTS histo_transi1".$user;
		$obj->exec($sql);
    $sql = "DROP TABLE IF EXISTS histo_transi_cumul".$user;
		$obj->exec($sql);
    $sql = "DROP TABLE IF EXISTS histo_transi2".$user;
		$obj->exec($sql);
    $sql = "DROP TABLE IF EXISTS histo_transi3".$user;
		$obj->exec($sql);
    $sql = "DROP TABLE IF EXISTS histo_transi4".$user;
		$obj->exec($sql);
    $sql = "DROP TABLE IF EXISTS histo_transi_prec".$user;
		$obj->exec($sql);
    $sql = "DROP TABLE IF EXISTS histo_transi_cumul_prec".$user;
		$obj->exec($sql);
    $sql = "DROP TABLE IF EXISTS HISTORIQUE1".$user;
		$obj->exec($sql);
    $sql = "DROP TABLE IF EXISTS HISTORIQUE2".$user;
		$obj->exec($sql);
    $sql = "DROP TABLE IF EXISTS historique_final".$user;
		$obj->exec($sql);

    //Valeurs sans cumul
    $sql = "CREATE TEMPORARY TABLE histo_transi".$user." as
    	SELECT * from data_0
    	where id_i='".$indic."'
    	AND id_famille_produit in(select id_famille_produit from REQUETE_FAMILLE where CODE_famille = '".$famprod."')
    	AND id_enseigne in(select id_enseigne from requete_enseigne where code_enseigne= '".$enseigne."')
    	AND id_temps in(select id_temps from requete_temps_0 where code= '".$temps."')
    	AND id_magasin in(select id_magasin from requete_geo where code = '".$geo."')";

    $obj->exec($sql);


    $sql = "CREATE TEMPORARY TABLE histo_transi1".$user." AS
    SELECT t2.LIB_FAMILLE_PRODUIT,
             sum(OBJECTIF)AS SUM_of_VENTES_OBJECTIF,
             sum(REEL)AS SUM_of_VENTES_REEL,
             (sum(REEL) - sum(OBJECTIF)) / sum(OBJECTIF) AS Ecart_ventes
       FROM DIM_MAGASIN_STAR t1, histo_transi".$user." t2
       WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN)
       GROUP BY t2.LIB_FAMILLE_PRODUIT";

    $obj->exec($sql);

    // Valeur avec cumul

    $sql = "CREATE TEMPORARY TABLE histo_transi_cumul".$user." as
    	SELECT * from data_1
      where id_i='".$indic."'
    	AND id_famille_produit in(select id_famille_produit from REQUETE_FAMILLE where CODE_famille = '".$famprod."')
    	AND id_enseigne in(select id_enseigne from requete_enseigne where code_enseigne= '".$enseigne."')
    	AND id_temps in(select id_temps from requete_temps_1 where code= '".$temps."')
    	AND id_magasin in(select id_magasin from requete_geo where code = '".$geo."')";

    $obj->exec($sql);

    $sql = "CREATE TEMPORARY TABLE histo_transi2".$user." AS
    SELECT t2.LIB_FAMILLE_PRODUIT,
             sum(OBJECTIF)AS SUM_of_VENTES_OBJECTIF_cumul,
             sum(REEL)AS SUM_of_VENTES_REEL_cumul,
             (sum(REEL) - sum(OBJECTIF)) / sum(OBJECTIF) AS Ecart_ventes_cumul
       FROM DIM_MAGASIN_STAR t1, histo_transi_cumul".$user." t2
       WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN)
       GROUP BY t2.LIB_FAMILLE_PRODUIT";

    $obj->exec($sql);
    // Valeurs non cumul�es de l'ann�e pr�c�dente
    $tempsprec = $temps;
    if(strlen($tempsprec < 10)){
      $annee = ((int)substr($tempsprec,0,4))-1;
      $mois = substr($tempsprec,4);
      $tempsprec = $annee.$mois;
    }else {
      $annee = ((int)substr($tempsprec,0,4))-1;
      $mois = substr($tempsprec,4,3);
      $tempsprec = $annee.$mois.$annee;
    }

    $sql = "CREATE TEMPORARY TABLE histo_transi_prec".$user." as
    	SELECT * from data_0
    	where id_i=".$indic."
    	AND id_famille_produit in(select id_famille_produit from REQUETE_FAMILLE where CODE_famille ='".$famprod."')
    	AND id_enseigne in(select id_enseigne from requete_enseigne where code_enseigne='".$enseigne."')
    	AND id_temps in(select id_temps from requete_temps_0 where code='".$tempsprec."')
    	AND id_magasin in(select id_magasin from requete_geo where code ='".$geo."')";

    $obj->exec($sql);


    $sql = "CREATE TEMPORARY TABLE histo_transi3".$user." AS
    SELECT t2.LIB_FAMILLE_PRODUIT,
             sum(OBJECTIF)AS SUM_of_VENTES_OBJECTIF_prec,
             sum(REEL)AS SUM_of_VENTES_REEL_prec,
             (sum(REEL) - sum(OBJECTIF)) / sum(OBJECTIF)AS Ecart_ventes_prec
       FROM DIM_MAGASIN_STAR t1, histo_transi_prec".$user." t2
       WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN )
       GROUP BY t2.LIB_FAMILLE_PRODUIT";

    $obj->exec($sql);

    // Valeur cumul�es de l'ann�e pr�c�dentes
    $sql = "CREATE TEMPORARY TABLE histo_transi_cumul_prec".$user." as
    	SELECT * from data_1
    	where id_i=".$indic."
    	AND id_famille_produit in(select id_famille_produit from REQUETE_FAMILLE where CODE_famille ='".$famprod."')
    	AND id_enseigne in(select id_enseigne from requete_enseigne where code_enseigne='".$enseigne."')
    	AND id_temps in(select id_temps from requete_temps_1 where code='".$tempsprec."')
    	AND id_magasin in(select id_magasin from requete_geo where code ='".$geo."')";

    $obj->exec($sql);

    $sql = "CREATE TEMPORARY TABLE histo_transi4".$user." AS
    SELECT t2.LIB_FAMILLE_PRODUIT,
             sum(OBJECTIF)AS SUM_of_VENTES_OBJECTIF_cum2,
             sum(REEL)AS SUM_of_VENTES_REEL_cum2,
             (sum(REEL) - sum(OBJECTIF)) / sum(OBJECTIF)AS Ecart_ventes_cum2
       FROM DIM_MAGASIN_STAR t1, histo_transi_cumul_prec".$user." t2
       WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN )
       GROUP BY t2.LIB_FAMILLE_PRODUIT";

    $obj->exec($sql);

    // Consitution du tableau final
    $sql = "CREATE TEMPORARY TABLE HISTORIQUE1".$user." AS
  		SELECT t5.LIB_FAMILLE_PRODUIT,
  			t3.SUM_of_VENTES_OBJECTIF_prec,
  			t3.SUM_of_VENTES_REEL_prec,
  			t3.Ecart_ventes_prec,
  			t4.SUM_of_VENTES_OBJECTIF_cum2,
  			t4.SUM_of_VENTES_REEL_cum2,
  			t4.Ecart_ventes_cum2,
  			t1.SUM_of_VENTES_OBJECTIF,
  			t1.SUM_of_VENTES_REEL,
  			t1.Ecart_ventes,
  			t2.SUM_of_VENTES_OBJECTIF_cumul,
  			t2.SUM_of_VENTES_REEL_cumul,
  			t2.Ecart_ventes_cumul
  		FROM histo_transi1".$user." t1, histo_transi2".$user." t2, histo_transi3".$user." t3, histo_transi4".$user." t4, DIM_FAMILLE_PRODUIT t5
  		WHERE (t1.LIB_FAMILLE_PRODUIT=t2.LIB_FAMILLE_PRODUIT AND t2.LIB_FAMILLE_PRODUIT = t3.LIB_FAMILLE_PRODUIT AND t3.LIB_FAMILLE_PRODUIT=t4.LIB_FAMILLE_PRODUIT AND t4.LIB_FAMILLE_PRODUIT=t5.LIB_FAMILLE_PRODUIT)
  		ORDER BY t5.LIB_FAMILLE_PRODUIT";

    $obj->exec($sql);

    $sql = "CREATE TEMPORARY TABLE HISTORIQUE2".$user." AS
  		SELECT t5.LIB_FAMILLE_PRODUIT,
  			t3.SUM_of_VENTES_OBJECTIF_prec,
  			t3.SUM_of_VENTES_REEL_prec,
  			t3.Ecart_ventes_prec,
  			t4.SUM_of_VENTES_OBJECTIF_cum2,
  			t4.SUM_of_VENTES_REEL_cum2,
  			t4.Ecart_ventes_cum2,
  			t1.SUM_of_VENTES_OBJECTIF,
  			t1.SUM_of_VENTES_REEL,
  			t1.Ecart_ventes,
  			t2.SUM_of_VENTES_OBJECTIF_cumul,
  			t2.SUM_of_VENTES_REEL_cumul,
  			t2.Ecart_ventes_cumul
  		FROM histo_transi1".$user." t1, histo_transi2".$user." t2, histo_transi3".$user." t3, histo_transi4".$user." t4, DIM_FAMILLE_PRODUIT t5
  		WHERE (t1.LIB_FAMILLE_PRODUIT=t2.LIB_FAMILLE_PRODUIT AND t2.LIB_FAMILLE_PRODUIT = t3.LIB_FAMILLE_PRODUIT AND t3.LIB_FAMILLE_PRODUIT=t4.LIB_FAMILLE_PRODUIT AND t4.LIB_FAMILLE_PRODUIT=t5.LIB_FAMILLE_PRODUIT)
  		ORDER BY t5.LIB_FAMILLE_PRODUIT";

    $obj->exec($sql);

    // Ajout d'une ligne de total et restitution du tableau
    $sql = "CREATE TABLE historique_final".$user." as select * from historique1".$user."
    Union all
    select 'Total' as Totaux,
    						 sum(SUM_of_VENTES_OBJECTIF_prec) as SUM_of_VENTES_OBJECTIF_prec,
    						 sum(SUM_of_VENTES_REEL_prec) as SUM_of_VENTES_REEL_prec,
    						 ((sum(SUM_of_VENTES_REEL_prec)-sum(SUM_of_VENTES_OBJECTIF_prec))/sum(SUM_of_VENTES_OBJECTIF_prec)) as Ecart_ventes_prec,
    						 sum(SUM_of_VENTES_OBJECTIF_cum2) as SUM_of_VENTES_OBJECTIF_cum2,
    						 sum(SUM_of_VENTES_REEL_cum2) as SUM_of_VENTES_REEL_cum2,
    						 ((sum(SUM_of_VENTES_REEL_cum2)-sum(SUM_of_VENTES_OBJECTIF_cum2))/sum(SUM_of_VENTES_OBJECTIF_cum2)) as Ecart_ventes_cum2,
    						 sum(SUM_of_VENTES_OBJECTIF) as SUM_of_VENTES_OBJECTIF,
    						 sum(SUM_of_VENTES_REEL) as SUM_of_VENTES_REEL,
    						 ((sum(SUM_of_VENTES_REEL)-sum(SUM_of_VENTES_OBJECTIF))/sum(SUM_of_VENTES_OBJECTIF)) as Ecart_ventes,
    						 sum(SUM_of_VENTES_OBJECTIF_cumul) as SUM_of_VENTES_OBJECTIF_cumul,
    						 sum(SUM_of_VENTES_REEL_cumul) as SUM_of_VENTES_REEL_cumul,
    						 ((sum(SUM_of_VENTES_REEL_cumul)-sum(SUM_of_VENTES_OBJECTIF_cumul))/sum(SUM_of_VENTES_OBJECTIF_cumul)) as Ecart_ventes_cumul
    from HISTORIQUE2".$user;

    $obj->exec($sql);
    //recupération des labels

		//indicateur
		$indicateurArray = ORM::for_table('select_Indicateur')->where('code',$indic)->find_array();
		$indicateur = $indicateurArray[0]['LIB_IND'];

		//Famille produit
		$famArray = ORM::for_table('select_famille_produit')->where('code',$famprod)->find_array();
		$famille = $famArray[0]['LIB_FAMILLE'];

		//période actuelle
		$anneeActu = ((int)substr($temps,0,4));
		$anneePrec = ((int)substr($temps,0,4))-1;

		//zone geo
		$geoArray = ORM::for_table('select_zone_geo')->where('code',$geo)->find_array();
		$geographie = $geoArray[0]['LIBELLE'];

		$label = array(
			"geo" => $geographie,
			"indic" => $indicateur,
			"famille"=> $famille,
			"anneePrec" => $anneePrec,
			"anneeActu =>" =>$anneeActu,
		);
		$data = ORM::for_table('historique_final'.$user)->find_array();
		$table = $app->view()->render("/macro/historique/table.html", array('data' => $data,'libelle' => $label));

		return $table;


	}
}
