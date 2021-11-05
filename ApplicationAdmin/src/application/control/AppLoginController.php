<?php

namespace application\control;

use application\model\Producteur;
use Illuminate\Contracts\Auth\Access\Authorizable;
use mf\auth\Authentification;
use \application\view\AppView as AppView;
use \mf\control\AbstractController;
use \application\auth\appAuthentification as appAuthentification;
use \mf\router\Router;

class AppLoginController extends AbstractController
{

    public function login()
    {
        $formulaireConnexion = new AppView("");
        $formulaireConnexion->setAppTitle('Se connecter');
        $formulaireConnexion->render('renderLogin');
    }

    public function checkLogin()
    {
        if (isset($_POST['submit'])) {
            $authentification = new appAuthentification();
            
            $authentification->loginUser(filter_var($_POST['mail'],FILTER_SANITIZE_FULL_SPECIAL_CHARS),
            filter_var($_POST['password'],FILTER_SANITIZE_FULL_SPECIAL_CHARS));
        }
    }

    public function logOut()
    {
        if (isset($_SESSION['mail'])) {
            $authentification = new Authentification();
            $authentification->logout();
        }
    }

}
