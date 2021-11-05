<?php

namespace application\auth;

use Exception;
use mf\auth\Authentification;
use mf\auth\exception\AuthentificationException;
use application\model\Compte as compte;
use \mf\router\Router;
class appAuthentification extends \mf\auth\Authentification {

    /* constructeur */
    public function __construct(){
        parent::__construct();
    }

    public function loginUser($mail, $password){
        $compte = compte::where('mail','=',$mail)->first();
        try {
            if ($compte) {
                $db_pass = $compte->password;
                $this->login($mail, $db_pass, $password);
            }
            if (!$compte) {
                throw new AuthentificationException ('Aucun compte correspondant n\'a été trouvé n\'a été trouvé');
            }
        }catch (AuthentificationException $e){
            $route = new Router();
            $route->executeRoute('login');
            echo $e->getMessage();
        }
    }

}