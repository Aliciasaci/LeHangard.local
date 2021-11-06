<?php
    namespace LeHangarLocal\model;
    class Produit extends \Illuminate\Database\Eloquent\Model {
        protected $table      = "produit";
        protected $primaryKey = "id";
        public $timestamps = false;

        public function categorie(){
            return $this->belongsTo('LeHangarLocal\model\Categorie','id_categorie');
        }
        public function producteur(){
            return $this->belongsTo('LeHangarLocal\model\Producteur','id_producteur');
        }
    }
?>