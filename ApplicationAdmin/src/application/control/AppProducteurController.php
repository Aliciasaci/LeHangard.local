<?php

namespace application\control;

use application\model\CommandeProduit as ModelCommandeProduit;
use application\model\Producteur;
use application\model\Produit;
use application\model\CommandeProduit;
use mf\utils\HttpRequest;
use \application\view\appView as appView;
use \mf\router\Router;


class AppProducteurController extends \mf\control\AbstractController
{

    public function __construct()
    {
        parent::__construct();
    }

    public function viewCommandeProduit()             
    {
        $emailUser = $_SESSION['mail'];
        $user = Producteur::select()->where('mail',"=",$emailUser)->first();
        $Produit_user  = $user->produits()->get();                              //tout le produit commandé pour le user
        $viewCommande = new appView($Produit_user);
        $viewCommande->setAppTitle('Commandes');
        $viewCommande->render('renderCommandesProduit');
    }
}
