<?php

namespace application\model;
class Gerant extends \Illuminate\Database\Eloquent\Model{

    protected $table= 'gerant';
    protected $primaryKey= 'id';
    public $timestamps = false;

    public function compte(){
        return $this->belongsTo('application\model\Compte','mail');
    }
    public function producteurs(){
        return $this->hasMany('application\model\Producteur','id_gerant');
    }
    

}
