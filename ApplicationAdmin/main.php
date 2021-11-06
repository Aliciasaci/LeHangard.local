<?php

use application\auth\appAuthentification;
use application\model\Producteur;

require_once 'src/mf/utils/AbstractClassLoader.php';
require_once 'src/mf/utils/ClassLoader.php';
require_once '../vendor/autoload.php';

$loader = new \mf\utils\ClassLoader('src');
$loader->register();

$config = parse_ini_file("conf/config.ini");
$db = new Illuminate\Database\Capsule\Manager();
$db->addConnection($config); 
$db->setAsGlobal();            
$db->bootEloquent();         
//Les alias
use application\view\AppView;
use mf\router\Router;
AppView::addStyleSheet('/html/scss/style.css');

session_start();

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


?>