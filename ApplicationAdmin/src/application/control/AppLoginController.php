<?php

namespace application\control;
use application\model\Producteur;
use Illuminate\Contracts\Auth\Access\Authorizable;
use mf\auth\Authentification;
use \application\view\AppView as AppView;
use \mf\control\AbstractController;
use \application\auth\appAuthentification as appAuthentification;
use \application\model\Compte as Compte; 
use application\model\Commande as Commande;

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
             if($authentification->logged_in){
                $compte = Compte::select()->where("mail","=",$_SESSION['mail'])->first();
                if ($compte->role === 'p') {
                    $producteur = Producteur::select()->where('mail',"=",$_SESSION['mail'])->first();
                    $Produits_user  = $producteur->produits()->get();                              //tout le produit commandé pour le user
                    $viewCommande = new appView($Produits_user);
                    $viewCommande->setAppTitle('Mes commandes');
                    $viewCommande->render('renderCommandesProduit');
                }else{
                    $commande_client = Commande::select()->get();                                  //récupération de toute les commandes
                    $viewcommande = new appView($commande_client);
                    $viewcommande->setAppTitle('Commande par clients');
                    $viewcommande->render('renderviewCommandeClient'); 
                }
            }
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
