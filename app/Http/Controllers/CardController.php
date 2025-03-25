<?php

namespace App\Http\Controllers;

use App\Models\card;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CardController extends Controller
{
    public function index(){

    }
    public function store( Request $request){
        $card=new card();
        $card->quantity=$request->quantity;
        $card->user_id=Auth::user()->id;
        $card->product_id=$request->product_id;
        $card->save();
        return redirect()->back();
    }
}
