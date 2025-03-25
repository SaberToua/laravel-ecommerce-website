<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class order extends Model
{
    use HasFactory;
    protected $fillable=['user_id','total','status'];
    public function payments(){
        return $this->hasMany(Payment::class);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
    public function products(){
        return $this->belongsToMany(Product::class)->withPivot('quantity');
    }
    
}
