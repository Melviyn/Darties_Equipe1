<?php

namespace App;

define('_', dirname(__DIR__));
require _.'/vendor/autoload.php';
require _.'/app/_config.php';

require _.'/vendor/autoload.php';

date_default_timezone_set('Europe/Paris');
$app = new App($slimConf);
ORM::configure($idiormConf);
SASMacro::configure($SASMacroConf);

// Enregistre une nouvelle fonction Twig pour appeller facilement les methodes statiques d'une classe
$twig = $app->view()->getEnvironment();
$twigFunction = new \Twig_SimpleFunction('static',  function ($class, $method) {
    return call_user_func(array(__NAMESPACE__ .'\\'.$class, $method));
});
$twig->addFunction($twigFunction);

$urlPath = array_filter(explode('/', rtrim(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH), '/')));
foreach($urlPath as $value) {
	if ($value != 'index.php') {
		$app->urlPath .= '/'.$value;
	}
	else {
		break;
	}
}

$app->user = User::loadFromCookie();


// Route
$app->get('/', function() use ($app) {

	$date_maj = ORM::for_table('faits_ventes')->max('date_maj');
	if (User::isLogged()) {
      $admin = User::table_admin();
      $user = User::table_user();
      $profil_dispo = Profil::profil_dispo();
		  $app->render('/layout.html', array('date_maj' => $date_maj,'data' => $admin,'data1' => $user,'data2'=>$profil_dispo));

	}
	else {
		$app->redirect($app->urlPath.'/index.php/login');
	}
});

$app->get('/login', function() use ($app) {
	$app->render('/login.html');
});

$app->post('/login', function() use ($app) {
	$user = User::login($app->request->post('email'), $app->request->post('mdp'));
	if (is_object($user)) {
		$app->redirect($app->urlPath.'/');
	}
	else {
		$app->redirect($app->urlPath.'/index.php/login');
	}
});


$app->get('/logout', function() use ($app) {
	User::logout();
	$app->redirect($app->urlPath.'/index.php/login');
});

$app->get('/test', function() use ($app) {
	var_dump(SASMacroHistorique::call(
		array ( 'I_ENSEIGNE' => 0, 'I_INDICATEUR' => 0, 'I_CUMUL' => 0, 'I_FAMPROD' => 0, 'I_TEMPS' => '2015_1_2015', 'I_REGION' => 508)
	));
});

$app->get('/', function() use ($app) {
  $admin = User::table_admin();
  $app->render('/admin.html', array('data' => $admin));
});


$app->get('/', function() use ($app) {
	$app->render('/layout.html');
});

$app->post('/', function() use ($app) {
  if ( $app->request->post('sel2') != null &&  $app->request->post('pwd') != null){
    User::update_user($app->request->post('id'), $app->request->post('pwd'));
    Profil::update_profil($app->request->post('id'),$app->request->post('sel2'));
    $app->redirect($app->urlPath.'/');
  }
  else if($app->request->post('sel2') != null) {
    Profil::update_profil($app->request->post('id'),$app->request->post('sel2'));
    $app->redirect($app->urlPath.'/');
  }
  else if($app->request->post('pwd') != null){
      User::update_user($app->request->post('id'), $app->request->post('pwd'));
      $app->redirect($app->urlPath.'/');
  }
});

$app->group('/ajax', function() use ($app) {
	$app->response->headers->set('Cache-Control', 'no-cache, no-store, must-revalidate');
	$app->response->headers->set('Pragma', 'no-cache');
	$app->response->headers->set('Expires', '0');

	$app->group('/tab', function() use ($app) {
		$app->post('/accueil', function() use ($app) {
      $db = ORM::get_db();
      echo json_encode(SqlMacroAccueil::call($app->request->post(),$db));
		});

		$app->post('/historique', function() use ($app) {
      $db = ORM::get_db();
      echo json_encode(SqlMacroHistorique::call($app->request->post(),$db));
		});

		$app->post('/palmares', function() use ($app) {
			echo SASMacroPalmares::call($app->request->post());
		});

		$app->post('/details', function() use ($app) {
			echo SASMacroDetails::call($app->request->post());
		});

	});
});

// Run app
$app->run();
