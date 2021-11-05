<?php
//Initialisation de l'affichae des erreurs
ini_set('display_errors', '1');

//Initialisation de la session
session_start();

//Require des autoloader
require_once('src/mf/utils/AbstractClassLoader.php');
require_once('src/mf/utils/ClassLoader.php');

$loader = new mf\utils\ClassLoader('src');
$loader->register();

?>