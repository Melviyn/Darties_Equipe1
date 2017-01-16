<?php
namespace App;

class functionAPI extends Model{

  public static function getUser($token){
    return ORM::for_table('utilisateur')->select_many('utilisateur.id_profil','nom','prenom','password','mail','apikey','lib_profil','message')
		->join('profil',array('profil.id_profil', '=', 'utilisateur.id_profil'))
    ->where('apikey', $token)
		->find_array();
  }

  public static function getNotif($id){
    $faitsVentes = ORM::for_table('profil')->select_many('lib_profil','id_zone','date_maj','id_profil')
    ->join('faits_ventes',array('faits_ventes.id_magasin', '=', 'profil.id_zone'))
    ->where(array(
                'type_zone' => 2,
                'id_profil' => $id
            ))
    ->find_array();

    $jour = intval(date("d")); $mois = intval(date("m"));  $annee = intval(date("Y"));
    //$jour = 18; $mois = 6;  $annee = 2017;
    $date_update= [] ;
    $date_not_update = [];
    $taille = count($faitsVentes);

    for($i=0; $i < $taille; $i++ ){

    $date_et_heure = $faitsVentes[$i]['date_maj'];
    $date = substr($date_et_heure,0,10);
    $split = explode("-",$date);

     $jourUp = intval($split[2]);$moisUp = intval($split[1]);$anneeUp = intval($split[0]);

    // du 1 jusqu'au 10 du mois
    if($jour >= 1 && $jour <= 10){
      if($moisUp == $mois && $anneeUp == $annee){
        if($jour >= 7 && $jour <= 10 && $jourUp > 10 ){
          array_push($faitsVentes[$i],"Vous n'avez pas saisi les donnees sur la periode de temps concernee : 01-".date("m")."-".date("Y")." au 10-".date("m")."-".date("Y"));
          functionAPI::EnvoieMessage(intval($faitsVentes[$i]['id_profil']),$faitsVentes[$i]['0']);
        //message de rappel 3 jour avant la fin
      } else {
        //données a jour
      }

      }
      else if($anneeUp == $annee && $moisUp < $mois){
        array_push($faitsVentes[$i],"Vous n'avez pas saisi les donnees sur la periode de temps concernee : 01-".date("m")."-".date("Y")." au 10-".date("m")."-".date("Y"));
        functionAPI::EnvoieMessage(intval($faitsVentes[$i]['id_profil']),$faitsVentes[$i]['0']);
      }
    }

      // du 11 jusqu'au 20 du mois
    else if($jour > 10 && $jour <= 20){
      if($moisUp == $mois && $anneeUp == $annee){
        if($jour >= 17 && $jour <= 20 && $jourUp <= 10 ){
          array_push($faitsVentes[$i],"Vous n'avez pas saisi les donnees sur la periode de temps concernee : 10-".date("m")."-".date("Y")." au 20-".date("m")."-".date("Y"));
          functionAPI::EnvoieMessage(intval($faitsVentes[$i]['id_profil']),$faitsVentes[$i]['0']);

        } else {
          //données a jour
        }

      }
      else if($anneeUp == $annee && $moisUp < $mois){
        array_push($faitsVentes[$i],"Vous n'avez pas saisi les donnees sur la periode de temps concernee : 10-".date("m")."-".date("Y")." au 20-".date("m")."-".date("Y"));
        functionAPI::EnvoieMessage(intval($faitsVentes[$i]['id_profil']),$faitsVentes[$i]['0']);
      }
    }

    // du 21 jusqu'au 31 du mois
    else if($jour > 20 && $jour <= 31){
      if($moisUp == $mois && $anneeUp == $annee){
        if($jour >= 28 && $jour <= 31 && $jourUp <= 20){
          array_push($faitsVentes[$i],"Vous n'avez pas saisi les donnees sur la periode de temps concernee : 20-".date("m")."-".date("Y")." au 31-".date("m")."-".date("Y"));
          functionAPI::EnvoieMessage(intval($faitsVentes[$i]['id_profil']),$faitsVentes[$i]['0']);
        } else {
          //données a jour
        }

      }
      else if($anneeUp == $annee && $moisUp < $mois){
        array_push($faitsVentes[$i],"Vous n'avez pas saisi les donnees sur la periode de temps concernee : 20-".date("m")."-".date("Y")." au 31-".date("m")."-".date("Y"));
        functionAPI::EnvoieMessage(intval($faitsVentes[$i]['id_profil']),$faitsVentes[$i]['0']);
      }
    }

    }
    return "sucess";
  }

  public static function gestion_utilisateur($libelle){

    $gestion = ORM::for_table('select_zone_geo')->select_many('code')
    ->where('libelle',$libelle)
    ->find_array();

    $nombre = $gestion[0]['code'] + 100;

    $gestion_util = ORM::for_table('select_zone_geo')->raw_query("SELECT libelle FROM select_zone_geo WHERE code > :nb1 AND code < :nb2",
    array('nb1' => $gestion[0]['code'],'nb2' => $nombre))->find_array();

    $tabDirecteur = array();
    foreach ($gestion_util as $ligne) {

      $tabDirecteur[] = "Directeur ".$ligne['libelle'];
    }

    $id_profil = ORM::for_table('profil')->select('id_profil')->where_in('lib_profil', $tabDirecteur)->find_array();

    $tab_idProf = array();

    foreach ($id_profil as $ligne) {
      $tab_idProf[] = $ligne['id_profil'];
    }

    $test = ORM::for_table('utilisateur')->select_many('lib_profil')
		->join('profil',array('profil.id_profil', '=', 'utilisateur.id_profil'))
    ->where_in('utilisateur.id_profil', $tab_idProf)
    ->where_not_equal('message',"")
		->find_array();

    return $test;

  }

  public static function EnvoieMessage($id,$texte){
    $token = User::find_one($id);
    $token->set('message',$texte);
    $token->save();

  }

  public static function deleteMessage($id){
    $token = User::find_one($id);
    $token->set('message','');
    $token->save();
    return "sucess";
  }

  public static function login($email,$password){
     $login = ORM::for_table('utilisateur')->select_many('apikey')
             ->where(array(
                 'mail' => $email,
                 'password' => $password
             ))
             ->find_array();
     if(!empty($login)){
       return $login;
     } else{
       return null;
     }
   }
   public static function updatePassword($newPass,$token){
     $update = ORM::for_table('utilisateur')
             ->where('apikey',$token)
             ->find_one();
     if(!empty($update)){
       $update->set('password',$newPass);
       $update->save();
       return '{"response":{"text": "mise à jour ok"}}';
     }
   }
   public static function getProfil($token){
     $idProf = ORM::for_table('utilisateur')->select_many('id_Profil')
             ->where('apikey',$token)
             ->find_array();
     $profil = ORM::for_table('profil')->select_many('id_profil','lib_profil','type_zone','id_zone')->where('id_profil',$idProf[0]['id_Profil'])->find_array();
     return $profil;
   }
   public static function getTemps($token){
     if(functionAPI::verifyToken($token)){
       return ORM::for_table('select_temps')->find_array();
     }else {
       return null;
     }
   }
   public static function getEnseigne($token){
     if(functionAPI::verifyToken($token)){
       return ORM::for_table('select_enseigne')->find_array();
     }else {
       return null;
     }
   }
     public static function getIndicateur($token){
       if(functionAPI::verifyToken($token)){
         return ORM::for_table('select_indicateur')->find_array();
       }else {
         return null;
       }
     }
   public static function getDimFam($token){
     if(functionAPI::verifyToken($token)){
       return ORM::for_table('dim_famille_produit')->find_array();
     }else {
       return null;
     }
   }
   public static function getFaitsVentes($token){
     if(functionAPI::verifyToken($token)){
       return ORM::for_table('faits_ventes_star')->find_array();
     }else {
       return null;
     }
   }
   public static function getGeo($token){
     if(functionAPI::verifyToken($token)){
       return ORM::for_table('select_zone_geo')->find_array();
     }else {
       return null;
     }
   }
   public static function setFaitsVentes($obj,$token,$id_mag,$id_prod,$id_temps,$vObj,$vReel,$cObj,$cReel,$mObj,$mReel){
     if(functionAPI::verifyToken($token)){
       $exist = ORM::for_table('faits_ventes_star')->where(array(
     'id_magasin' => $id_mag,
     'id_famille_produit' => $id_prod,
     'id_temps' => $id_temps))->find_array();
     //var_dump( $exist[0]['VENTES_OBJECTIF']);
     if($exist != null){
       //Update
       $newVObj = doubleval($exist[0]['VENTES_OBJECTIF'])+ doubleval($vObj);
       $newVReel = doubleval($exist[0]['VENTES_REEL']) + doubleval($vReel);
       $newCObj = doubleval($exist[0]['CA_OBJECTIF']) + doubleval($cObj);
       $newCReel = doubleval($exist[0]['CA_REEL']) + doubleval($cReel);
       $newMObj = doubleval($exist[0]['MARGE_OBJECTIF']) + doubleval($mObj);
       $newMReel = doubleval($exist[0]['MARGE_REEL']) + doubleval($mReel);
       $obj->exec("UPDATE faits_ventes_star SET VENTES_OBJECTIF= ".$newVObj.", VENTES_REEL= ".$newVReel.",
       CA_OBJECTIF= ".$newCObj.", CA_REEL= ".$newCReel.", MARGE_OBJECTIF= ".$newMObj.", MARGE_REEL=".$newMReel." WHERE ID_MAGASIN=".$id_mag." AND ID_FAMILLE_PRODUIT=".$id_prod." AND ID_TEMPS=".$id_temps."");
     } else {
       $insert = ORM::for_table('faits_ventes_star')->create();
       $insert->id_magasin = $id_mag;
       $insert->id_famille_produit = $id_prod;
       $insert->id_temps = $id_temps;
       $insert->ventes_objectif = $vObj;
       $insert->ventes_reel = $vReel;
       $insert->ca_objectif = $cObj;
       $insert->ca_reel = $cReel;
       $insert->marge_objectif = $mObj;
       $insert->marge_reel = $mReel;
       $date = date("Y-m-d H:i:s");
       $insert->date_maj = $date;
       $insert->save();
       echo "string";
     }
       return "ok";
     }else {
       return null;
     }
   }
     public static function getDimMag($token){
       if(functionAPI::verifyToken($token)){
         return ORM::for_table('dim_magasin_star')->find_array();
       }else {
         return null;
       }
     }
     public static function getTabAccueil($obj,$token,$temps,$geo,$enseigne){
       if(functionAPI::verifyToken($token)){
             // Filtrage selon la valeur des invites
             $sql = "CREATE TEMPORARY TABLE transi".$token." as
               SELECT * from data_0
               WHERE id_enseigne in(select id_enseigne from requete_enseigne where code_enseigne='".$enseigne."')
               AND id_temps in(select id_temps from requete_temps_0 where code='".$temps."')
               AND id_magasin in(select id_magasin from requete_geo where code ='".$geo."')";
             $obj->exec($sql);
         		// Tableau dédié aux valeurs de chiffre d'affaire
         		$sql = "CREATE TEMPORARY TABLE Accueil_CA".$token." AS
         		      SELECT t3.LIB_FAMILLE_PRODUIT,(SUM(OBJECTIF)) AS CA_Objectif,(SUM(REEL)) AS CA_Reel
         		      FROM dim_magasin_star t1, transi".$token." t2, dim_famille_produit t3
         		      WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN AND t2.ID_FAMILLE_PRODUIT = t3.ID_FAMILLE_PRODUIT AND INDICATEUR='CA')
         		      GROUP BY t3.LIB_FAMILLE_PRODUIT";
         		$obj->exec($sql);
         	  // Tableau dédié aux ventes
         		$sql = "CREATE TEMPORARY TABLE Accueil_VE".$token." AS
         		SELECT t3.LIB_FAMILLE_PRODUIT,(SUM(OBJECTIF))AS Ventes_Objectif,
         						 (SUM(REEL)) AS Ventes_Reel
         					FROM dim_magasin_star t1, transi".$token." t2, dim_famille_produit t3
         			 WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN AND t2.ID_FAMILLE_PRODUIT = t3.ID_FAMILLE_PRODUIT AND INDICATEUR='VENTES')
         			 GROUP BY t3.LIB_FAMILLE_PRODUIT";
         		$obj->exec($sql);
         		// Tableau dédié aux valeurs de marge
         		$sql = "CREATE TEMPORARY TABLE Accueil_MA".$token." AS
             	SELECT t3.LIB_FAMILLE_PRODUIT,(SUM(OBJECTIF)) AS Marge_Objectif,(SUM(REEL)) AS Marge_Reel
               FROM dim_magasin_star t1, transi".$token." t2, dim_famille_produit t3
               WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN AND t2.ID_FAMILLE_PRODUIT = t3.ID_FAMILLE_PRODUIT AND INDICATEUR='MARGE')
               GROUP BY t3.LIB_FAMILLE_PRODUIT";
         		$obj->exec($sql);
         		// Rassemblement des 3 tableaux précédents 1
         		$sql = "Create TEMPORARY table transi_accueil".$token." as
         		Select t1.lib_famille_produit, t1.CA_Reel, t1.CA_Objectif,  t2.Ventes_Reel, t2.Ventes_Objectif, t3.Marge_Reel,t3.Marge_Objectif
         		from Accueil_CA".$token." t1, Accueil_VE".$token." t2, Accueil_MA".$token." t3
         		where t1.Lib_famille_produit=t2.Lib_famille_produit and t1.Lib_famille_produit=t3.lib_famille_produit";
         		$obj->exec($sql);
         		// Rassemblement des 3 tableaux précédents 2
         		$sql = "Create TEMPORARY table transi_accueil2".$token." as
         		Select t1.lib_famille_produit, t1.CA_Reel, t1.CA_Objectif,  t2.Ventes_Reel, t2.Ventes_Objectif, t3.Marge_Reel,t3.Marge_Objectif
         		from Accueil_CA".$token." t1, Accueil_VE".$token." t2, Accueil_MA".$token." t3
         		where t1.Lib_famille_produit=t2.Lib_famille_produit and t1.Lib_famille_produit=t3.lib_famille_produit";
         		$obj->exec($sql);
         		// Ajout d'une ligne de total
         		$sql = "CREATE TEMPORARY TABLE Accueil".$token." as
         		select * from transi_accueil".$token."
         		Union all
         		select 'Total' as Totaux,
         								 sum(CA_Reel) as CA_Reel,
         								 sum(CA_Objectif) as CA_Objectif,
         								 sum(Ventes_Reel) as Ventes_Reel,
         								 sum(Ventes_Objectif) as Ventes_Objectif,
         								 sum(Marge_Reel) as Marge_Reel,
         								 sum(Marge_Objectif) as Marge_Objectif
         		from transi_accueil2".$token."";
         		$obj->exec($sql);
             $name = 'Accueil'.$token;
             return ORM::for_table($name)->find_array();
       }else {
         return null;
       }
     }
   public static function getTabHisto($obj,$token,$famprod,$indic,$temps,$geo,$enseigne){
       if(functionAPI::verifyToken($token)){
         //Valeurs sans cumul
         $sql = "CREATE TEMPORARY TABLE histo_transi".$token." as
           SELECT * from data_0
           where id_i='".$indic."'
           AND id_famille_produit in(select id_famille_produit from requete_famille where CODE_famille = '".$famprod."')
           AND id_enseigne in(select id_enseigne from requete_enseigne where code_enseigne= '".$enseigne."')
           AND id_temps in(select id_temps from requete_temps_0 where code= '".$temps."')
           AND id_magasin in(select id_magasin from requete_geo where code = '".$geo."')";
         $obj->exec($sql);
         $sql = "CREATE TEMPORARY TABLE histo_transi1".$token." AS
         SELECT t2.LIB_FAMILLE_PRODUIT,
                  sum(OBJECTIF)AS SUM_of_VENTES_OBJECTIF,
                  sum(REEL)AS SUM_of_VENTES_REEL,
                  (sum(REEL) - sum(OBJECTIF)) / sum(OBJECTIF) AS Ecart_ventes
            FROM dim_magasin_star t1, histo_transi".$token." t2
            WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN)
            GROUP BY t2.LIB_FAMILLE_PRODUIT";
         $obj->exec($sql);
         // Valeur avec cumul
         $sql = "CREATE TEMPORARY TABLE histo_transi_cumul".$token." as
           SELECT * from data_1
           where id_i='".$indic."'
           AND id_famille_produit in(select id_famille_produit from requete_famille where CODE_famille = '".$famprod."')
           AND id_enseigne in(select id_enseigne from requete_enseigne where code_enseigne= '".$enseigne."')
           AND id_temps in(select id_temps from requete_temps_1 where code= '".$temps."')
           AND id_magasin in(select id_magasin from requete_geo where code = '".$geo."')";
         $obj->exec($sql);
         $sql = "CREATE TEMPORARY TABLE histo_transi2".$token." AS
         SELECT t2.LIB_FAMILLE_PRODUIT,
                  sum(OBJECTIF)AS SUM_of_VENTES_OBJECTIF_cumul,
                  sum(REEL)AS SUM_of_VENTES_REEL_cumul,
                  (sum(REEL) - sum(OBJECTIF)) / sum(OBJECTIF) AS Ecart_ventes_cumul
            FROM dim_magasin_star t1, histo_transi_cumul".$token." t2
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
         $sql = "CREATE TEMPORARY TABLE histo_transi_prec".$token." as
           SELECT * from data_0
           where id_i=".$indic."
           AND id_famille_produit in(select id_famille_produit from requete_famille where CODE_famille ='".$famprod."')
           AND id_enseigne in(select id_enseigne from requete_enseigne where code_enseigne='".$enseigne."')
           AND id_temps in(select id_temps from requete_temps_0 where code='".$tempsprec."')
           AND id_magasin in(select id_magasin from requete_geo where code ='".$geo."')";
         $obj->exec($sql);
         $sql = "CREATE TEMPORARY TABLE histo_transi3".$token." AS
         SELECT t2.LIB_FAMILLE_PRODUIT,
                  sum(OBJECTIF)AS SUM_of_VENTES_OBJECTIF_prec,
                  sum(REEL)AS SUM_of_VENTES_REEL_prec,
                  (sum(REEL) - sum(OBJECTIF)) / sum(OBJECTIF)AS Ecart_ventes_prec
            FROM dim_magasin_star t1, histo_transi_prec".$token." t2
            WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN )
            GROUP BY t2.LIB_FAMILLE_PRODUIT";
         $obj->exec($sql);
         // Valeur cumul�es de l'ann�e pr�c�dentes
         $sql = "CREATE TEMPORARY TABLE histo_transi_cumul_prec".$token." as
           SELECT * from data_1
           where id_i=".$indic."
           AND id_famille_produit in(select id_famille_produit from requete_famille where CODE_famille ='".$famprod."')
           AND id_enseigne in(select id_enseigne from requete_enseigne where code_enseigne='".$enseigne."')
           AND id_temps in(select id_temps from requete_temps_1 where code='".$tempsprec."')
           AND id_magasin in(select id_magasin from requete_geo where code ='".$geo."')";
         $obj->exec($sql);
         $sql = "CREATE TEMPORARY TABLE histo_transi4".$token." AS
         SELECT t2.LIB_FAMILLE_PRODUIT,
                  sum(OBJECTIF)AS SUM_of_VENTES_OBJECTIF_cum2,
                  sum(REEL)AS SUM_of_VENTES_REEL_cum2,
                  (sum(REEL) - sum(OBJECTIF)) / sum(OBJECTIF)AS Ecart_ventes_cum2
            FROM dim_magasin_star t1, histo_transi_cumul_prec".$token." t2
            WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN )
            GROUP BY t2.LIB_FAMILLE_PRODUIT";
         $obj->exec($sql);
         // Consitution du tableau final
         $sql = "CREATE TEMPORARY TABLE HISTORIQUE1".$token." AS
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
           FROM histo_transi1".$token." t1, histo_transi2".$token." t2, histo_transi3".$token." t3, histo_transi4".$token." t4, DIM_FAMILLE_PRODUIT t5
           WHERE (t1.LIB_FAMILLE_PRODUIT=t2.LIB_FAMILLE_PRODUIT AND t2.LIB_FAMILLE_PRODUIT = t3.LIB_FAMILLE_PRODUIT AND t3.LIB_FAMILLE_PRODUIT=t4.LIB_FAMILLE_PRODUIT AND t4.LIB_FAMILLE_PRODUIT=t5.LIB_FAMILLE_PRODUIT)
           ORDER BY t5.LIB_FAMILLE_PRODUIT";
         $obj->exec($sql);
         $sql = "CREATE TEMPORARY TABLE HISTORIQUE2".$token." AS
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
           FROM histo_transi1".$token." t1, histo_transi2".$token." t2, histo_transi3".$token." t3, histo_transi4".$token." t4, DIM_FAMILLE_PRODUIT t5
           WHERE (t1.LIB_FAMILLE_PRODUIT=t2.LIB_FAMILLE_PRODUIT AND t2.LIB_FAMILLE_PRODUIT = t3.LIB_FAMILLE_PRODUIT AND t3.LIB_FAMILLE_PRODUIT=t4.LIB_FAMILLE_PRODUIT AND t4.LIB_FAMILLE_PRODUIT=t5.LIB_FAMILLE_PRODUIT)
           ORDER BY t5.LIB_FAMILLE_PRODUIT";
         $obj->exec($sql);
         // Ajout d'une ligne de total et restitution du tableau
         $sql = "CREATE TEMPORARY TABLE historique_final".$token." as select * from HISTORIQUE1".$token."
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
         from HISTORIQUE2".$token;
         $obj->exec($sql);
         //recupération des labels
         //indicateur
         $indicateurArray = ORM::for_table('select_indicateur')->where('code',$indic)->find_array();
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
         $data = ORM::for_table('historique_final'.$token)->find_array();
         return $data;
       } else {
         return null;
       }
   }
   public static function verifyToken($token){
     $token= ORM::for_table('utilisateur')->select_many('apikey')
             ->where('apikey',$token)
             ->find_array();
     if(!empty($token)){
       return true;
     } else {
       return false;
     }
   }
   public static function generateKey(){
      $ids =  ORM::for_table('utilisateur')->select_many('id')->find_array();
      for ($i=0; $i < count($ids) ; $i++) {
         $id = $ids[$i]['id'];
         //$token = ORM::for_table('utilisateur')->where('id', $id)->find_one();
         $key = md5(uniqid(rand(), true));
         $token = User::find_one($id);
     		$token->set('apikey',$key);
     		$token->save();
      }
   }
 }
  ?>
