<?php
//Initialisation de l'affichae des erreurs

use LeHangarLocal\model\Categorie;
use LeHangarLocal\model\Produit;
use LeHangarLocal\view\LeHangarView;
use mf\router\Router;

ini_set('display_errors', '1');


session_start();

//Require des autoloader
require_once '../vendor/autoload.php';
require_once('src/mf/utils/AbstractClassLoader.php');
require_once('src/mf/utils/ClassLoader.php');

//config database
$config = parse_ini_file("conf/config.ini");
/* une instance de connexion  */
$db = new Illuminate\Database\Capsule\Manager();

$db->addConnection( $config ); /* configuration avec nos paramètres */
$db->setAsGlobal();            /* rendre la connexion visible dans tout le projet */
$db->bootEloquent();           /* établir la connexion */


$loader = new mf\utils\ClassLoader('src');
$loader->register();

LeHangarView::addStyleSheet('/html/scss/style.css');
$ctrl = new \LeHangarLocal\control\LeHangarController();

$router = new Router();
$router->addRoute('accueil','/accueil/','\LeHangarLocal\control\LeHangarController','viewHome');
$router->setDefaultRoute('/accueil/');
$router->addRoute('elementsCategorie','/categorie/','\LeHangarLocal\control\LeHangarController','viewCategorie');
$router->addRoute('producteurs','/producteurs/','\LeHangarLocal\control\LeHangarController','viewProducteurs');
$router->addRoute('elementsProducteur','/producteur/','\LeHangarLocal\control\LeHangarController','viewElementsProducteur');
$router->addRoute('panier','/panier/','\LeHangarLocal\control\LeHangarController','viewPanier');
$router->addRoute('validation','/commander/','\LeHangarLocal\control\LeHangarController','viewInfoClient');

$router->run();

?>