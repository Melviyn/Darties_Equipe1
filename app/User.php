<?php

namespace App;

class Profil extends Model
{
	public static $_table = 'profil';
	public static $_id_column = 'ID_PROFIL';

	public static function update_profil ($id,$lib_profil){

		$user = Profil::find_one($id);
		$user->set('lib_profil',$lib_profil);
		$user->save();

	}
	public static function profil_dispo(){

			$profil = ORM::for_table('profil')->raw_query("SELECT lib_profil FROM profil WHERE id_profil NOT IN (SELECT id_profil FROM utilisateur)")->find_array();
			return $profil;
	}
}

class User extends Model
{
	public static $_table = 'utilisateur';
	public static $_id_column = 'ID';
	public static $instance;

	public function profil() {
		static $profil = null;

		if (is_null($profil)) {
			$profil = Profil::where('ID_PROFIL', $this->ID_PROFIL)->find_one();
		}

		return $profil;
    }

	public function isAdmin() {
		return $this->profil()->LIB_PROFIL == 'Administrateur';
	}

	public function isDirecteurRegional() {
		return $this->profil()->TYPE_ZONE == 1;
	}


	public function isDirecteurMagasin() {
		return $this->profil()->TYPE_ZONE == 2;
	}


	public function isDirecteurCommercial() {
		return $this->profil()->TYPE_ZONE == 3;
	}

	public function posteLibelle() {
		return $this->profil()->LIB_PROFIL;
	}


	public static function isLogged() {
		return isset(static::$instance->ID);
	}


	public static function login($email, $mdp) {

		$user = User::where('LOWER(MAIL)', strtolower(trim($email)))
			->where('PASSWORD', $mdp)
			->find_one();

		if (is_object($user)) {
			$app = App::getInstance();

			$app->setCookie('USER_ID', $user->ID, '1 days');
			$app->setCookie('USER_MDP', md5($user->PASSWORD), '1 days');

			static::$instance=$user;
			return $user;
		}

		return false;
		// estelle.bernier@darties.com
		// CJ62hy9
		//SELECT * FROM UTILISATEUR U LEFT JOIN PROFIL P ON U.ID_PROFIL = P.ID_PROFIL WHERE LOWER(U.MAIL) = 'estelle.bernier@darties.com' AND U.PASSWORD = 'CJ62hy9';
	}


	public static function logout() {
		$app = App::getInstance();

		$app->setCookie('USER_ID', '', '-1 days');
		$app->setCookie('USER_MDP', '', '-1 days');
	}


	public static function loadFromCookie() {
		$app = App::getInstance();

		$app->getCookie('USER_ID');
		$app->getCookie('USER_MDP');

		$user = User::where('ID', $app->getCookie('USER_ID'))
			//->where('MD5(PASSWORD)', $app->getCookie('USER_MDP'))
			->find_one();

		if ($user != false) {
			if (md5($user->PASSWORD) == $app->getCookie('USER_MDP')) {
				static::$instance=$user;
				return $user;
			}
		}

		return false;
	}

	public static function table_admin () {

		$user = ORM::for_table('utilisateur')->select_many('mail','password','lib_profil','id','nom','prenom','datemaj_user')
		->join('profil',array('profil.id_profil', '=', 'utilisateur.id_profil'))
		->order_by_asc('id')
		->find_array();
		return $user;

	}

	public static function table_user () {
		$app = App::getInstance();
		$user = ORM::for_table('utilisateur')->select_many('mail','password','lib_profil','id','nom','prenom','datemaj_user')
		->join('profil',array('profil.id_profil', '=', 'utilisateur.id_profil'))
		->where('id_profil', $app->getCookie('USER_ID'))
		->order_by_asc('id')
		->find_array();
		 return $user;

	}

	public static function update_user ($id,$mdp){

		$user = User::find_one($id);
		$user->set('password',$mdp);
		$user->save();

	}

}
