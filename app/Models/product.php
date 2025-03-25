<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class product extends Model
{
  
    use HasFactory;
    protected $fillable = ['name', 'price', 'description','stock','image_url'];
    protected static function booted()
    {
        static::deleting(function ($product) {
            // Delete the file if it exists
            if ($product->image_url) {
                Storage::disk('public')->delete($product->image_url);
            }
        });
    }
    public function catigory(){
        return $this->belongsTo(catigory::class);
    }
    
}
