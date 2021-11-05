<?php

namespace application\model;
class Producteur extends \Illuminate\Database\Eloquent\Model{

    protected $table= 'producteur';
    protected $primaryKey= 'id';
    public $timestamps = false;
    
    public function produits(){
       return $this->hasMany('application\model\Produit','id_producteur');                  
    }

    public function compte(){
        return $this->belongsTo('application\model\Compte','mail');
    }
    public function gerant(){
        return $this->belongsTo('application\model\Gerant','id_producteur');
    }

}
