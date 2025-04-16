<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Contact extends Model
{
    protected $fillable = ['message'];
  
    public function getCreatedAtAttribute($value){
        return date('Y-m-d H:i', strtotime($value));
    }
    


    public function user(){

        return $this->belongsTo(User::class, 'user_id');
    }
   
    






}


