<?php
    namespace LeHangarLocal\model;
    class Producteur extends \Illuminate\Database\Eloquent\Model {
        protected $table      = "producteur";
        protected $primaryKey = "id";
        public $timestamps = false;

        public function produits(){
            return $this->hasMany('LeHangarLocal\model\Produit','id_producteur');
        }
    }
?>