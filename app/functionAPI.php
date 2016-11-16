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
