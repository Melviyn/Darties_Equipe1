<?php
namespace App;
define('_', dirname(__DIR__));
require _.'/vendor/autoload.php';
require _.'/app/_config.php';
date_default_timezone_set('Europe/Paris');
$app = new App($slimConf);
ORM::configure($idiormConf);
$app->get('/', function() use($app) {
    $app->response->setStatus(200);
    echo "Bienvenue sur l'API Darties";
});
$app->get('/login/:mail&:pswd',function($mail,$pswd) use($app){
      $user = functionAPI::login($mail,$pswd);
      if(!empty($user)) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($user);
      }else {
        $app->response()->setStatus(404);
        echo '{"error":{"text":"le token semble incorrect"}}';
      }
});
$app->get('/getUser/:id', function ($id) {
    $app = \Slim\Slim::getInstance();
        $user = functionAPI::getUser($id);
        if(!empty($user)) {
            $app->response->setStatus(200);
            $app->response()->headers->set('Content-Type', 'application/json');
            echo json_encode($user);
        }else {
          $app->response()->setStatus(404);
          echo '{"error":{"text":"le token semble incorrect"}}';
        }
});
$app->get('/getNotif/:id',  function ($id) {
  $app = \Slim\Slim::getInstance();
      $user = functionAPI::getNotif($id);
      if(!empty($user)) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($user);
      }else {
        $app->response()->setStatus(404);
        echo '{"error":{"text":"le token semble incorrect"}}';
      }
});

$app->post('/deleteMessage', function() use ($app) {
        functionAPI::deleteMessage($app->request->post('id'));
        $app->response->setStatus(200);
        $app->response()->headers->set('Content-Type', 'application/json');
        echo json_encode("sucess");

});

$app->get('/gestion_utilisateur/:id',  function ($id) {
  $app = \Slim\Slim::getInstance();
      $user = functionAPI::gestion_utilisateur($id);
      if(!empty($user)) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($user);
      }else {
        $app->response()->setStatus(404);
        echo '{"error":{"text":"le token semble incorrect"}}';
      }
});

$app->get('/generateKey', function () {
    $app = \Slim\Slim::getInstance();
        $keys = functionAPI::generateKey();
        if(!empty($keys)) {
            $app->response->setStatus(200);
            $app->response()->headers->set('Content-Type', 'application/json');
            echo json_encode($keys);
        } else {
          $app->response()->setStatus(404);
          echo '{"error":{"text":"le token semble incorrect"}}';
        }
});

$app->get('/gestion_utilisateur/:id', function ($id) {
    $app = \Slim\Slim::getInstance();
        $keys = functionAPI::gestion_utilisateur($id);
        if(!empty($keys)) {
            $app->response->setStatus(200);
            $app->response()->headers->set('Content-Type', 'application/json');
            echo json_encode($keys);
        } else {
          $app->response()->setStatus(404);
          echo '{"error":{"text":"Aucun magasin en retard"}}';
        }
});

$app->post('/updatePassword', function ($id) {
    $app = \Slim\Slim::getInstance();
        functionAPI::updatePassword($app->request->post('newPass'),$app->request->post('token'));
        if(!empty($response)) {
            $app->response->setStatus(200);
            $app->response()->headers->set('Content-Type', 'application/json');
            echo json_encode($response);
        } else {
          $app->response()->setStatus(404);
          echo '{"error":{"text":"le token semble incorrect"}}';
        }
});
$app->get('/getProfil/:token', function ($token) {
    $app = \Slim\Slim::getInstance();
        $profil = functionAPI::getProfil($token);
        if(!empty($profil)) {
            $app->response->setStatus(200);
            $app->response()->headers->set('Content-Type', 'application/json');
            echo json_encode($profil);
        }else {
          $app->response()->setStatus(404);
          echo '{"error":{"text":"le token semble incorrect"}}';
        }
});
$app->get('/getDimTemps/:token', function($token){
  $app = \Slim\Slim::getInstance();
      $dimTemps = functionAPI::getDimTemps($token);
      if(!empty($dimTemps)) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($dimTemps);
      }  else {
        $app->response()->setStatus(404);
        echo '{"error":{"text":"le token semble incorrect"}}';
      }
});
$app->get('/getDimFamilleProduit/:token', function($token){
  $app = \Slim\Slim::getInstance();
      $dimFam = functionAPI::getDimFam($token);
      if(!empty($dimFam)) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($dimFam);
      } else {
        $app->response()->setStatus(404);
        echo '{"error":{"text":"le token semble incorrect"}}';
      }
});
$app->get('/getFaitsVentes/:token', function($token){
  $app = \Slim\Slim::getInstance();
      $faitVentes = functionAPI::getFaitsVentes($token);
      if($faitVentes) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($faitVentes);
      } else {
        $app->response()->setStatus(404);
        echo '{"error":{"text":"le token semble incorrect"}}';
      }
});
$app->get('/getGeo/:token', function($token){
  $app = \Slim\Slim::getInstance();
      $geo = functionAPI::getGeo($token);
      if($geo) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($geo);
      } else {
        $app->response()->setStatus(404);
        echo '{"error":{"text":"le token semble incorrect"}}';
      }
});
$app->get('/getTemps/:token', function($token){
  $app = \Slim\Slim::getInstance();
      $tps = functionAPI::getTemps($token);
      if($tps) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($tps);
      } else {
        $app->response()->setStatus(404);
        echo '{"error":{"text":"le token semble incorrect"}}';
      }
});
$app->get('/getEnseigne/:token', function($token){
  $app = \Slim\Slim::getInstance();
      $ens = functionAPI::getEnseigne($token);
      if($ens) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($ens);
      } else {
        $app->response()->setStatus(404);
        echo '{"error":{"text":"le token semble incorrect"}}';
      }
});
$app->get('/getIndicateur/:token', function($token){
  $app = \Slim\Slim::getInstance();
      $ens = functionAPI::getIndicateur($token);
      if($ens) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($ens);
      } else {
        $app->response()->setStatus(404);
        echo '{"error":{"text":"le token semble incorrect"}}';
      }
});
$app->get('/setFaitsVentes/:token&:id_mag&:id_prod&:id_temps&:venteObj&:VenteReel&:CaObj&:CaReel&:MargeObj&:MargeReel', function($token,$id_mag,$id_prod,$id_temps,$vObj,$vReel,$cObj,$cReel,$mObj,$mReel){
  $app = \Slim\Slim::getInstance();
  $obj = ORM::get_db();
      $faitVentes = functionAPI::setFaitsVentes($obj,$token,$id_mag,$id_prod,$id_temps,$vObj,$vReel,$cObj,$cReel,$mObj,$mReel);
      if($faitVentes) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($faitVentes);
      } else {
        $app->response()->setStatus(404);
        echo '{"error":{"text":"le token semble incorrect"}}';
      }
});
$app->get('/getDimMag/:token', function($token){
  $app = \Slim\Slim::getInstance();
      $dimMag = functionAPI::getDimMag($token);
      if($dimMag) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($dimMag);
      } else {
        $app->response()->setStatus(404);
        echo '{"error":{"text":"le token semble incorrect"}}';
      }
});
$app->get('/tabAccueil/:token&:select_temps&:select_zone_geo&:select_enseigne',
  function($token,$select_temps,$select_geo,$select_ens){
    $app = \Slim\Slim::getInstance();
    $obj = ORM::get_db();
    $tab = functionAPI::getTabAccueil($obj,$token,$select_temps,$select_geo,$select_ens);
    if($tab) {
        $app->response->setStatus(200);
        $app->response()->headers->set('Content-Type', 'application/json');
        echo json_encode($tab);
    } else {
      $app->response()->setStatus(404);
      echo '{"error":{"text":"le token semble incorrect"}}';
    }
  });
  $app->get('/tabHisto/:token&:famprof&:indic&:select_temps&:select_zone_geo&:select_enseigne',
    function($token,$famprod,$indic,$select_temps,$select_geo,$select_ens){
      $app = \Slim\Slim::getInstance();
      $obj = ORM::get_db();
      $tab = functionAPI::getTabHisto($obj,$token,$famprod,$indic,$select_temps,$select_geo,$select_ens);
      if($tab) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($tab);
      } else {
        $app->response()->setStatus(404);
        echo '{"error":{"text":"le token semble incorrect"}}';
      }
    });
$app->run();
