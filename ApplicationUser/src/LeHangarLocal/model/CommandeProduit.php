<?php

namespace LeHangarLocal\model;
class CommandeProduit extends \Illuminate\Database\Eloquent\Model{

    protected $table= 'commande_produit';
    protected $primaryKey= 'id';
    public $timestamps = false;

    public function produit(){
       return $this->belongsTo('application\model\Produit','id_produit');
    }

 
}
?>