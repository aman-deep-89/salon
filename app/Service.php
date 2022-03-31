<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    //
    protected $table='services';   
    protected $primaryKey = 'service_id';
    protected $fillable = [
        'service_name',
        'service_description',
        'category_id',
        'charges'           
    ];
    public function service_category() {
        return $this->has(ServiceCategory::class,'service_id');
    }
}
