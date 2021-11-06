<?php
namespace application\view;

use Illuminate\Contracts\Auth\Authenticatable;
use \mf\router\Router as Router;
use application\auth\appAuthentification;
use application\model\Compte;
use application\model\Producteur;
use application\model\Commande;

class AppView extends \mf\view\AbstractView
{
    public function __construct($data)
    {
        parent::__construct($data);
    }

    private function renderHeader()
    {
        return '
        <body>
    <header>
        <h1 id="titre">LeHongard.local</h1>
    </header>';
    }

    private function renderFooter()
    {
      return '<footer></footer></body>';
    }

    /**
     * Formulaire de connexion
     */
    protected function renderLogin()
    {
        $route = new Router(); 
        $formulaire_connexion = '<main id="main_container">
        <article id="login_container">
        <h1>Se connecter</h1>
        <form id="form_login" method="post" action = '.$route->urlFor('checklogin', []).' >
            <label for="champ_login">Email</label>
            <input id="champ_login" name="mail">
            <label for="champ_password">Mot de passe </label>
            <input type="password" id="champ_password" name="password">
            <button id="btn_connecter" name="submit">Se connecter</button>
        </form>
    </article></main>
        ';
        return $formulaire_connexion;

       
    }


    /**
     * Les commande concernant un certain producteur
     */
    protected function renderCommandesProduit()                       
    {    
        $config = parse_ini_file("conf/config.ini");
        $HtmlCommandeProduit = "
        <article id='content_tab'>
        <h1 id=\"titre_page\">Mes commandes</h1>
        <table id=\"table\">
        <thead>
            <tr>
                <th>Photo du produit</th>
                <th>Produit</th>
                <th>Quantité total</th>
                <th>Montant total</th>
            </tr>
        </thead>
        <tbody>";
        $produits = $this->data;                                    //la liste de tout les produit commandé concernant un certain producteur
        foreach($produits as $produit){   
            $prix_total = 0;         
            $quantite_total = 0;                   
             $commande_produit = $produit->commandeproduit()->get();
                foreach ($commande_produit as $cp) {
                        $quantite_total += $cp->quantite;
                        $prix_total = $quantite_total * $produit->tarif_unitaire;  
                }
                $id_produit = $produit->id;
            $HtmlCommandeProduit .="
                <tr>
                    <td><img src=\"".$config['imgpath'].$id_produit.".jpg\"alt=\"Tomate\"></td>
                    <td>$produit->nom de $produit->unite</td>
                    <td>$quantite_total</td>
                    <td>$prix_total </td>
                </tr>
             ";
        }
            $HtmlCommandeProduit .=" </tbody>
            </table></article></main>";
            return $HtmlCommandeProduit;

        
    }

    /**
     * Le menu d'un Producteur 
     */
    private function renderTopMenuProducteur(){
        $route = new Router();
        return "
        <main id=\"main_container\">
        <nav id=\"menu\">
            <ul>
                <li><a href=".$route->urlFor('commandeproduit',[]).">Mes commandes</a></li>
                <li><a href=" .$route->urlFor('logout',[]).">Déconnexion </a></li>
            </ul>
        </nav>" ;
    }

    /**
     * Le menu d'un gérant
     */
    private function renderTopMenuGerant(){
        $route = new Router();
        return "
        <main id=\"main_container\">
        <nav id=\"menu\">
            <ul>
            <li><a href=" .$route->urlFor('board',[]).">Tableau de bord</a></li>
            <li><a href=".$route->urlFor('commandeclient',[]).">Commandes Par Clients</a></li>
            <li><a href=" .$route->urlFor('commandeproducteur',[]).">Commandes Par Producteurs</a></li>
            <li><a href=" .$route->urlFor('logout',[]).">Logout</a></li>
            </ul>
        </nav>" ;
    }
/***
     * Le tableau de bord du gerant
     */

    protected function renderviewBoard(){
        $config = parse_ini_file("conf/config.ini");
        $HtmlCommandeProduit ="<article id='content_container'>";
        $commandes = $this->data; 
        //nbr des commandes
        $nbr_commandes = count($commandes);

        //nbr des clients
        $emails = Commande::select("mail_client")->distinct()->get();
        $nbr_client = count($emails);
        //chiffre d'affaire producteur
        $chiffre_affaire = Producteur::select()->get();
        $total_chiffre_affaire = Producteur::select()->sum("chiffre_affaire"); 

        $HtmlCommandeProduit .="
            <section class='carte_commande'> 
            <img src=\"".$config['imgpath']."users-solid.svg\"alt=\"users\">
            $nbr_client clients
            </section>
            <section class='carte_commande'> 
            <img src=\"".$config['imgpath']."commande-picture.svg\"alt=\"users\">
            $nbr_commandes  commandes  
            </section>
            <section class='carte_commande'> 
            <img src=\"".$config['imgpath']."chart-line-solid.svg\"alt=\"users\">
            Chiffre d'affaire total : $total_chiffre_affaire 
            </section>
            <h1>Chiffre d'affaire par producteur</h1>
            "; 
            $HtmlCommandeProduit .= "
            <article id='content_table_chiffre_affaire'>
            <table id=\"table\">
            <thead>
                <tr>
                    <th>nom producteur</th>
                    <th>son chiffre d'affaire</th>
                </tr>
            </thead>
            <tbody>";
            foreach($chiffre_affaire as $ca_producteur){            
                $HtmlCommandeProduit .="
                <tr>
                <td>$ca_producteur->nom</td>
                <td>$ca_producteur->chiffre_affaire €</td>
            </tr>";
            }
        $HtmlCommandeProduit .="</article></main>";
        return $HtmlCommandeProduit;

    }
    /**
     * Les commandes trié par client
     */
    protected function renderviewCommandeClient()
    {    
        $HtmlCommandeProduit = " <article id='content_tab'>
        <h1>Les commandes par client</h1>
        <table id=\"table\">
        <thead>
            <tr>
                <th>Nom client</th>
                <th>Montant</th>
                <th>voir plus</th>
            </tr>
        </thead>
        <tbody>";
        $commande_client = $this->data;   
        $route = new Router();
        foreach($commande_client as $cl){
            $HtmlCommandeProduit .="
            <tr>
            <td>$cl->nom_client</td>
            <td>$cl->montant €</td>
            <td><a href=".$route->urlFor("commandedetail",[['id',$cl->id]]).">voir détails</a></td>
            </tr>
            ";
        }
        $HtmlCommandeProduit .="</article></main>";
        return $HtmlCommandeProduit;  

      
    }

    /**
     * Le détail de chaque commande
     */
    protected function renderviewCommandeClientDetail(){
        $route = new Router();
        $commande = $this->data;                      
       $HtmlCommandedetail = "<article id='content_container'>
       <section class='detail_commande'>
       <p>Nom client : $commande->nom_client</p>
       <p>Mail client : $commande->mail_client</p>
       <p>telephone client : $commande->tel_client</p>
       <p>Montant total = $commande->montant euro</p><hr>";
       //les petites commandes de la grosse commande
       $petitescommande_commande = $commande->commandesProduits()->get();
       $producteurs = Producteur::select()->get();
       foreach ($producteurs as $producteur) {
           $commandepetitdetail = "";
           $produit = $producteur->produits()->get();
           foreach ($produit as $p) {
               $commande_produit = $p->commandeproduit()->get();
               foreach ($commande_produit as $cp) {
                   if ($cp->id_commande == $commande->id) {
                       $commandepetitdetail.="
                    <p><b>le produit</b> : $p->nom<br/>
                    <b>le prix </b>:  $p->tarif_unitaire  euro/$p->unite<br/>
                    <b>nombre d'unité : </b> $cp->quantite unité<br/></p><hr>";
                    
                   }
               }
           }
           if (strlen($commandepetitdetail) > 0) {
               $HtmlCommandedetail .= "<p><b>Producteur:</b> $producteur->nom</p>";
               $HtmlCommandedetail .=  $commandepetitdetail;
           }
       }
       if ($commande->livrer == 0)
       {
        $HtmlCommandedetail .= "<p><b>Livraison et paiement</b> : non</p>";
       }else{
        $HtmlCommandedetail .= "<p><b>Livraison et paiement</b>: oui</p>";
       }
       if ($commande->livrer == 0) {
        $HtmlCommandedetail .="<button type='submit' id='button_valider'><a href=".$route->urlFor("validerCommande", [['id',$commande->id]]).">Confirmer livraison/paiement</a></button>";
    }
       $HtmlCommandedetail .="
       <section></article></main>";
       return $HtmlCommandedetail;

    }


    

    protected function renderValiderCommande(){
        return "<article id='content_container'>
        <section id=\"commande_valide\">
        <h4>Livraison et paiement confirmé</h4>
        </section></article></main>";
    }
    //l'ensemble des commandes trié par producteur
    protected function renderviewCommandeProducteur()
    {  
        $HtmlCommandeProduit = "<article id='content_container'>";
        $producteurs = $this->data;                                               //l'ensemble des producteurs
        foreach($producteurs as $producteur){   
            $HtmlCommandeProduit .="<section class='carte_detail_commande'>
            <h3>Producteur : $producteur->nom</h3><hr>";                                  
            $produit = $producteur->produits()->get();                           //get tous les produits d'un certain producteur 
            foreach ($produit as $p) {
                $commande_produit = $p->commandeproduit()->get();                //get toutes les commandes concernant un certain produit apparetenant à un certain producteur
                $HtmlCommandeProduit .="
                <p><b>produit</b> : $p->nom<br/>
                <b>le prix :</b> $p->tarif_unitaire euro/$p->unite<br/>";
                foreach ($commande_produit as $cp) {
                    $HtmlCommandeProduit .="
                    <b>Commande $cp->id</b> : $cp->quantite unité<br/>
                    ";
                }
            }
            $HtmlCommandeProduit.="</p></section>";
        }
        $HtmlCommandeProduit .="</article></main>";
        return $HtmlCommandeProduit;
    }

    protected function renderBody($selector)
    {
       $authentification = new appAuthentification();
        $header = $this->renderHeader();
        $footer = $this->renderFooter();
        $topMenuProducteur = $this->renderTopMenuProducteur();
        $topMenuProducteurGerant = $this->renderTopMenuGerant();
       
        switch ($selector) {
            case 'renderLogin':
                $content = $this->renderLogin();
                break;
            case 'renderCommandesProduit':
                $content = $this->renderCommandesProduit();
                break;
            case 'renderviewBoard':
                $content = $this->renderviewBoard();
                break;
            case 'renderviewCommandeClient':
                $content = $this->renderviewCommandeClient();
                break;
            case 'renderviewCommandeProducteur':
                $content = $this->renderviewCommandeProducteur();
                break;
            case 'renderviewCommandeClientDetail':
                $content = $this->renderviewCommandeClientDetail();
                break;
            case 'renderValiderCommande':
                $content = $this->renderValiderCommande();
                break;
            default:
                echo "error";
        }
         
        if ($authentification->logged_in) {
            $compte = Compte::select()->where("mail","=",$_SESSION['mail'])->first();
            if ($compte->role === 'p') {
                $body = <<<EOT
                ${header}
                ${topMenuProducteur}               
                ${content}
                ${footer}
                EOT;
                
            }else{
                $body = <<<EOT
                ${header}
                ${topMenuProducteurGerant}  
                ${content}
                ${footer}
                EOT;
            }
          
        } else {
            $body = <<<EOT
        ${header}         
        ${content}
        ${footer}
        EOT;
        }
        return $body;
    }
}
