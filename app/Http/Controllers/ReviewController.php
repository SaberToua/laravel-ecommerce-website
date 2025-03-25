<?php

namespace App\Http\Controllers;

use App\Models\review;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReviewController extends Controller
{
    public function store(Request $request,$id){
       /* $request->validate([
            //'title' =>'required|string|max:255',
            'rating' =>'required|integer|between:1,5',
            'comment' =>'required|string|min:50',
        ]);

        $review = new review();
        //$review->title = $request->title;
        $review->rating = $request->rating;
        $review->comment = $request->comment;
        $review->user_id=Auth::user()->id;
        $review->product_id=$id;
        $review->save();
       if( $request->hasAny('review'))
        $review->rating = $request->input('rating');
        
    
       // return redirect()->route('products.show', $id)->with('success', 'Review created successfully.');
        return response()->json($review, 201);*/
        $review = new review();
        $review->rating = $request->rating;
        $review->user_id=Auth::user()->id;
        $review->product_id=$id;
        $review->save();
    }
}
