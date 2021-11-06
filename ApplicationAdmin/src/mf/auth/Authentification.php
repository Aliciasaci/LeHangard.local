<?php
namespace mf\auth;

use Illuminate\Support\Facades\Route;
use mf\auth\exception\AuthentificationException;
use mf\router\Router;
use application\model\Compte;

class Authentification extends AbstractAuthentification
{
    public function __construct()
    {
        if (isset($_SESSION['mail'])) {
            $this->user_login = $_SESSION['mail'];
            // $this->access_level = $_SESSION['access_level'];
            $this->logged_in = true;
        } else {
            $this->user_login = null;
            // $this->access_level = self::ACCESS_LEVEL_NONE;
            $this->logged_in = false;
        }
    }

    public function updateSession($username)
    {
        $router = new Router();
        $this->user_login = $username;
        $_SESSION['mail'] = $username;
        $this->logged_in = true;
    }

    public function logout()
    {
        unset($_SESSION['mail']);                   //effacer les variables de sessions
        $this->user_login = null;
        $this->logged_in = false;
        session_destroy();
        $router = new Router();
        $router->executeRoute('login');
    }

     public function checkAccessRight($requested)
    {
        // if ($requested > $this->access_level) {
        //     return false;                               //le user n'a pas le niveau suffisant pour une tel action
        // } else {
        //     return true;
        // }
    }


    public function login($mail, $db_pass, $given_pass)
    {
        if (!$this->verifyPassword($given_pass,$db_pass)) {
          throw new AuthentificationException('Mot de passe incorrecte');
        } else {
            $this->updateSession($mail);
        }
    }

    //retourne le mot de passé haché
    public function hashPassword($password)
    {
        return password_hash($password, PASSWORD_DEFAULT);
    }

    public function verifyPassword($password, $hash)
    {
        return password_verify($password, $hash);
    }
}
