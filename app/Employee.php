<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    protected $table='employees';   
    protected $primaryKey = 'employee_id';
    protected $fillable = [
        'employee_name',
        'birth_date',
        'contact_no',
        'photo','designation','salary_type','salary'
    ];
}