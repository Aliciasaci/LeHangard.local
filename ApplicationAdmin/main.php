<?php

require_once 'src/mf/utils/AbstractClassLoader.php';
require_once 'src/mf/utils/ClassLoader.php';
require_once 'vendor/autoload.php';

$loader = new \mf\utils\ClassLoader('src');
$loader->register();

session_start();

$config = parse_ini_file("conf/config.ini");
$db = new Illuminate\Database\Capsule\Manager();
$db->addConnection($config); 
$db->setAsGlobal();            
$db->bootEloquent();         

//Les alias
use application\model\Producteur as Producteur;
use application\model\Produit as Produit;
use application\model\CommandeProduit as CommandeProduit;
use application\view\AppView;
use application\model\Compte;
use Illuminate\Contracts\Auth\Authenticatable;
use mf\auth\Authentification;
use mf\router\Router;
use application\control\AppProducteurController;
use application\control\AppGerantController;

AppView::addStyleSheet('/html/scss/gridMixins.css');


//Ajout des routes : 
$router = new Router();
$router->addRoute('login','/login/','\application\control\AppLoginController','login');
$router->addRoute('checklogin','/checklogin/','\application\control\AppLoginController','checkLogin');
$router->addRoute('logout','/logout/','\application\control\AppLoginController','logOut');
$router->addRoute('commandeproduit','/commandeproduit/','\application\control\AppProducteurController','viewCommandeProduit');
$router->addRoute('board','/board/','\application\control\AppGerantController','viewBoard');
$router->addRoute('commandeclient','/commandeclient/','\application\control\AppGerantController','viewCommandeClient');
$router->addRoute('commandeproducteur','/commandeproducteur/','\application\control\AppGerantController','viewCommandeProducteur');
$router->addRoute('commandedetail','/commandedetail/','\application\control\AppGerantController','viewCommandeClientDetail');
$router->addRoute('validerCommande','/validerCommande/','\application\control\AppGerantController','validerCommande');
$router->setDefaultRoute('/login/');
$router->run();

// print_r(\mf\router\Router::$routes);

// $password = "password";
// $authentification = new Authentification();
// $compte = new Compte();
// $compte->mail = "jbattista0@goo.ne.jp";
// $hashed_password = $authentification->hashPassword($password);
// $compte->password = $hashed_password;
// $compte->role = "producteur";


?>