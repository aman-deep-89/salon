<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
class Services extends Model
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
    public function service_cat()
    {
        return $this->belongsTo(ServiceCategory::class,'category_id');
    }
}
