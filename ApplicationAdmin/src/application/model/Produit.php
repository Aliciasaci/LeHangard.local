<?php

namespace application\model;
class Produit extends \Illuminate\Database\Eloquent\Model{

    protected $table= 'produit';
    protected $primaryKey= 'id';
    public $timestamps = false;
    
    public function producteur(){
       return $this->belongsTo('application\model\Producteur','id_producteur');                   
    }

    public function commandeproduit(){
        return $this->hasMany('application\model\CommandeProduit','id_produit');
    }



 









}
