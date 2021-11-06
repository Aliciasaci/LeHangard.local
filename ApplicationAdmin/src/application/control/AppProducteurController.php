<?php

namespace application\control;

use application\model\Producteur;
use \application\view\appView as appView;


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
