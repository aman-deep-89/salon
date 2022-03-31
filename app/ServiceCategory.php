<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ServiceCategory extends Model
{
    //
    protected $table='service_categories';   
    protected $primaryKey = 'category_id';
    public function services() {
        return $this->hasMany(Services::class,'category_id');
    }
}
