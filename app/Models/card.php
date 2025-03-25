<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class card extends Model
{
    use HasFactory;
    protected $fillable = ['product_id', 'quantity', 'user_id'];
    public function product(){
        return $this->hasOne('App\Models\Product');
    }
    public function user(){
        return $this->belongsTo('App\Models\User');
    }
    
}
