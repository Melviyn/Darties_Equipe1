<?php

namespace App;

define('_', dirname(__DIR__));
require _.'\vendor\autoload.php';
require _.'\app\_config.php';

date_default_timezone_set('Europe/Paris');
$app = new App($slimConf);
ORM::configure($idiormConf);


$app->get('/', function() use($app) {
    $app->response->setStatus(200);
    echo "Bienvenue sur l'API Darties";
});

$app->get('/login/:mail&:pswd',function($mail,$pswd) use($app){
  try {
      $user = functionAPI::login($mail,$pswd);
      if(!empty($user)) {
          $app->response->setStatus(200);
          $app->response()->headers->set('Content-Type', 'application/json');
          echo json_encode($user);
      }

  } catch(Exception $e) {
      $app->response()->setStatus(404);
      echo '{"error":{"text":'. $e->getMessage() .'}}';
  }
});


$app->get('/getUser/:id', function ($id) {

    $app = \Slim\Slim::getInstance();
    try {
        $user = functionAPI::getUser($id);
        if(!empty($user)) {
            $app->response->setStatus(200);
            $app->response()->headers->set('Content-Type', 'application/json');
            echo json_encode($user);
        }

    } catch(PDOException $e) {
        $app->response()->setStatus(404);
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
});


$app->get('/generateKey', function () {

    $app = \Slim\Slim::getInstance();
    try {
        $keys = functionAPI::generateKey();
        if(!empty($keys)) {
            $app->response->setStatus(200);
            $app->response()->headers->set('Content-Type', 'application/json');
            echo json_encode($keys);
        }

    } catch(Exception $e) {
        $app->response()->setStatus(404);
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
});



$app->post('/updatePassword', function ($id) {

    $app = \Slim\Slim::getInstance();
    try {
        functionAPI::updatePassword($app->request->post('newPass'),$app->request->post('token'));
        if(!empty($response)) {
            $app->response->setStatus(200);
            $app->response()->headers->set('Content-Type', 'application/json');
            echo json_encode($response);
        }
    } catch(Exception $e) {
        $app->response()->setStatus(404);
        echo '{"error":{"text":'. $e->getMessage() .'}}';
    }
});


$app->get('/getProfil/:id',function ($id){
    $app = \Slim\Slim::getInstance();
    try {
        //requête sql pour récupérer info profil
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


$app->get('/getDimTemps', function(){
  $app = \Slim\Slim::getInstance();
  try {
      //requête sql pour récupérer info dim_temps
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

$app->get('/getDimFamilleProduit', function(){
  $app = \Slim\Slim::getInstance();
  try {
      //requête sql pour récupérer info dim_famille_produit
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
