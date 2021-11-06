<?php

namespace application\model;
class Compte extends \Illuminate\Database\Eloquent\Model{

    protected $table= 'compte';
    protected $primaryKey= 'id';
    public $timestamps = false;
    
    public function producteur(){
        return $this->belongsTo('application\model\Producteur', 'mail');
    }
    public function gerant(){
        return $this->belongsTo('application\model\Producteur','mail');
    }
    




 









}
