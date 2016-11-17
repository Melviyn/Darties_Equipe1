<?php

namespace App;

define('_', dirname(__DIR__));
require _.'\vendor\autoload.php';
require _.'\app\_config.php';
require _.'\vendor\slim\slim\Slim\Slim.php';

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

$app->get('/getFaitsVentes', function(){
  $app = \Slim\Slim::getInstance();
  try {
      //requête sql pour récupérer info faits ventes
      if($profil) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($profil);
      } else {
          throw new PDOException('No records found.');
      }

  } catch(PDOException $e) {
      $app->response()->setStatus(404);
      echo '{"error":{"text":'. $e->getMessage() .'}}';
  }
});

$app->get('/getDimMag', function(){
  $app = \Slim\Slim::getInstance();
  try {
      //requête sql pour récupérer info faits ventes
      if($profil) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($profil);
      } else {
          throw new PDOException('No records found.');
      }

  } catch(PDOException $e) {
      $app->response()->setStatus(404);
      echo '{"error":{"text":'. $e->getMessage() .'}}';
  }
});


$app->run();
