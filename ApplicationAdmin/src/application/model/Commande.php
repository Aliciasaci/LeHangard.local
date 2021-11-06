<?php

namespace application\model;
class Commande extends \Illuminate\Database\Eloquent\Model{

    protected $table= 'commande';
    protected $primaryKey= 'id';
    public $timestamps = false;

   public function commandesProduits(){                         //récupere toutes les petites commandes appartenant à une grosse commande d'un client

        return $this->hasMany('application\model\CommandeProduit','id_commande');
   }

   

}
