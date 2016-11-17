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
        //$user = ORM::for_table('utilisateur')->where('id', $id)->find_one();
        $key = md5(uniqid(rand(), true));
        $user = User::find_one($id);
    		$user->set('apikey',$key);
    		$user->save();
     }

  }
}
 ?>
