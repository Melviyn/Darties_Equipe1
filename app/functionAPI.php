<?php
namespace App;

class functionAPI extends Model{

  public static function getUser($token){
    return ORM::for_table('utilisateur')->select_many('id_profil','nom','prenom','password','mail','apikey')->where('apikey', $token)->find_array();
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

  public static function getDimTemps($token){
    if(functionAPI::verifyToken($token)){
      return ORM::for_table('dim_temps')->find_array();
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
        		      FROM DIM_MAGASIN_STAR t1, transi".$token." t2, DIM_FAMILLE_PRODUIT t3
        		      WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN AND t2.ID_FAMILLE_PRODUIT = t3.ID_FAMILLE_PRODUIT AND INDICATEUR='CA')
        		      GROUP BY t3.LIB_FAMILLE_PRODUIT";

        		$obj->exec($sql);


        	  // Tableau dédié aux ventes
        		$sql = "CREATE TEMPORARY TABLE Accueil_VE".$token." AS
        		SELECT t3.LIB_FAMILLE_PRODUIT,(SUM(OBJECTIF))AS Ventes_Objectif,
        						 (SUM(REEL)) AS Ventes_Reel
        					FROM DIM_MAGASIN_STAR t1, transi".$token." t2, DIM_FAMILLE_PRODUIT t3
        			 WHERE (t1.ID_MAGASIN = t2.ID_MAGASIN AND t2.ID_FAMILLE_PRODUIT = t3.ID_FAMILLE_PRODUIT AND INDICATEUR='VENTES')
        			 GROUP BY t3.LIB_FAMILLE_PRODUIT";

        		$obj->exec($sql);

        		// Tableau dédié aux valeurs de marge
        		$sql = "CREATE TEMPORARY TABLE Accueil_MA".$token." AS
            	SELECT t3.LIB_FAMILLE_PRODUIT,(SUM(OBJECTIF)) AS Marge_Objectif,(SUM(REEL)) AS Marge_Reel
              FROM DIM_MAGASIN_STAR t1, transi".$token." t2, DIM_FAMILLE_PRODUIT t3
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
