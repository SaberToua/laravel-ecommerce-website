<?php

namespace App\Models;

use Stripe\Checkout\Session;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class payment extends Model
{
    use HasFactory;
    protected $fillable = ['order_id', 'amount','payment_method','transaction_id','payment_status','stripe_intent_id','stripe_customer_id','stripe_payment_id'];
    public function order(){
        return $this->belongsTo(Order::class);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
    public function products(){
        return $this->belongsToMany(Product::class,'order_product','order_id','product_id');
    }
    public function session(){
        return $this->belongsTo(Session::class);
    }

}
