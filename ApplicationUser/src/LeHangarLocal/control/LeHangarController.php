<?php
namespace LeHangarLocal\control;

use LeHangarLocal\model\Categorie;
use LeHangarLocal\model\Panier;
use LeHangarLocal\model\Producteur;
use LeHangarLocal\model\Commande;
use LeHangarLocal\model\CommandeProduit;
use LeHangarLocal\view\LeHangarView;
use mf\utils\HttpRequest;
use mf\router\Router;


class LeHangarController extends \mf\control\AbstractController{
          public function __construct(){
               parent::__construct();               
          }

          public function viewHome(){
               $lesCategories = Categorie::select()->get(); //SELECT * FROM Categorie
               $vue = new LeHangarView($lesCategories);
               $vue->setAppTitle('Accueil');
               $vue->render('renderHome');
          }
          public function viewProducteurs(){
               $lesProducteurs = Producteur::select()->get();
               $vue = new LeHangarView($lesProducteurs);
               $vue->setAppTitle('Producteurs');
               $vue->render('renderProducteurs');
          }
          public function viewCategorie(){
               $request = new HttpRequest();
               $categorie = filter_var($request->get['id'],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
               $laCategorie = Categorie::select()->where('id','=',$categorie)->first();
               $elementsCategorie = $laCategorie->produits()->get();
               if (isset($_POST['quantite']) and isset($_GET['id_element'])){
                    $idProduit = filter_var($_GET['id_element'],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                    $quantite = filter_var($_POST['quantite'],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                    $produit = $elementsCategorie->find($idProduit);
                    Panier::ajouterPanier($idProduit,["nom" => $produit->nom,"description" => $produit->description,"tarif_unitaire" => $produit->tarif_unitaire, "unite" => $produit->unite],$quantite);
               }
               $vue = new LeHangarView($elementsCategorie);
               $vue->setAppTitle("$laCategorie->nom");
               $vue->render('renderUneCategorie');
          }
          public function viewElementsProducteur(){
               $request = new HttpRequest();
               $producteur = filter_var($request->get['id'],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
               $leProducteur = Producteur::select()->where('id','=',$producteur)->first();
               $elementsProducteur[] = $leProducteur;
               $elementsProducteur[] = $leProducteur->produits()->get();
               if (isset($_POST['quantite']) and isset($_GET['id_element'])){
                    $idProduit = filter_var($_GET['id_element'],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                    $quantite = filter_var($_POST['quantite'],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                    $produit = $elementsProducteur[1]->find($idProduit);
                    Panier::ajouterPanier($idProduit,["nom" => $produit->nom,"description" => $produit->description,"tarif_unitaire" => $produit->tarif_unitaire, "unite" => $produit->unite],$quantite);
               }
               $vue = new LeHangarView($elementsProducteur);
               $vue->setAppTitle("$leProducteur->nom");
               $vue->render('renderElementsProducteur');
          }

          public function viewPanier() {
               $request = new HttpRequest();
               if (isset($_GET['id'])){
                    $id = filter_var($request->get['id'],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                    Panier::supprimerDuPanier($id);
               }
               $list_produits = Panier::GetAllProduits();
               $vue = new LeHangarView($list_produits);
               $vue->setAppTitle("Panier");
               $vue->render('renderPanier');
          }

          public function viewInfoClient() {
               $request = new HttpRequest();
               if(isset($_POST["bouton"])){
                    $commande = new Commande();
                    $commande->nom_client = filter_var($_POST['nom'],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                    $commande->mail_client = filter_var($_POST['mail'],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                    $commande->tel_client = filter_var($_POST['tel'],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                    $commande->montant = filter_var($_GET["montant"],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
                    $commande->save();
                    $list_produits = Panier::GetAllProduits();
                    foreach($list_produits as $idProduit => $infoProduit) {
                         $commander = new CommandeProduit();
                         $commander->id_commande = $commande->id;
                         $commander->id_produit = $idProduit;
                         $commander->quantite = $infoProduit[1];
                         $commander->save();
                    }
               }
               $vue = new LeHangarView(null);
               $vue->setAppTitle("Récapitulatif Panier");
               $vue->render('renderInfoClient');
          }
     }

?>