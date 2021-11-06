<?php

namespace application\control;

use mf\utils\HttpRequest;
use \mf\router\Router;
use application\model\Gerant;
use \application\view\appView as appView;
use application\model\Commande;
use application\model\Producteur;


class AppGerantController extends \mf\control\AbstractController
{

    public function __construct()
    {
        parent::__construct();
    }


    public function viewBoard()
    {
        $emailUser = $_SESSION['mail'];
        $user = Gerant::select()->where('mail',"=",$emailUser)->first(); 
        $commandes = Commande::select()->get();                  
        $viewcommande = new appView($commandes);
        $viewcommande->setAppTitle('Tableau de bord');
        $viewcommande->render('renderviewBoard');
        
    }

    public function viewCommandeClient()            
    {
        $commande_client = Commande::select()->get();                        //récupération de toute les commandes
        $viewcommande = new appView($commande_client);
        $viewcommande->setAppTitle('Commande par clients');
        $viewcommande->render('renderviewCommandeClient');                  
        
    }
        public function viewCommandeClientDetail(){
            $requet = new HttpRequest();
            $id_commande = $requet->get;
            $commande = Commande::where('id',"=",$id_commande)->first();          //récuperer la commande correspondant à l'id passé en URL
            $viewcommande = new appView($commande);
            $viewcommande->setAppTitle('Detail de commande');
            $viewcommande->render('renderviewCommandeClientDetail');
        }
    public function viewCommandeProducteur()             
    {  
        $emailUser = $_SESSION['mail'];
        $user = Gerant::select()->where('mail',"=",$emailUser)->first();              
        if($user)                                                           //le gérant existe
        $producteurs = Producteur::select()->get();                          //récuperer tous les producteurs                           
        $viewcommande = new appView($producteurs);
        $viewcommande->setAppTitle('Commande par producteurs');
        $viewcommande->render('renderviewCommandeProducteur');
        
    }
    public function validerCommande(){
        $requet = new HttpRequest();
        $id_commande = $requet->get;
        $commande = Commande::where('id',"=",$id_commande)->first(); 
        $commande->livrer = 1;
        $commande->save();
        $view = new appView("");
        $view->render('renderValiderCommande');
    }



   


}
