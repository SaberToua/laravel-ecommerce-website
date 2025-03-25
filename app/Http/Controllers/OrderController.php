<?php

namespace App\Http\Controllers;

use App\Models\card;
use App\Models\order;
use App\Models\order_items;
use App\Models\product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
{

  public function checkout(Request $request)
{
    // Get the card items for the authenticated user
 // $totalPrice=0;
  $cardItems = card::where('user_id', Auth::user()->id)->get();
  /*   foreach($cardItems as $cardItem){
       $product_id=$cardItem->product_id;
       $product=product::find($product_id);
       $totalPrice+=$product->price*$cardItem->quantity;
       
    }*/
   // Calculate the total price of the order
  $totalPrice = $cardItems->sum(function ($item) {
      $product_id=$item->product_id;
   $product=product::find($product_id);
 
      return $product->price * $item->quantity;});
    //});

    // Create the order
    $order = new  order();
    $order->user_id = Auth::user()->id;
    $order->status = 'pending';
   $order->total = $totalPrice;
    $order->save();


    // Create order items from card items
   foreach ($cardItems as $cardItem) {
   $order_item=new order_items();
  
    $order_item->product_id = $cardItem->product_id;
      $order_item->quantity = $cardItem->quantity;
 $product= product::find($order_item->product_id);

        $order_item ->price= $product->price;
        $order_item->order_id = $order->id;
          $order_item->save();
          $product->stock -= $order_item->quantity;
          $product->save();

    }

    // Clear the card after the order is placed
 //   card::where('user_id', Auth::user()->id)->delete();
$id=$order->id;
    return redirect()->route('stripe.post',$id);
      // Create the order
    // Create order items from card items
   /* foreach ($cardItems as $cardItem) {
        $order->items()->create([
            'product_id' => $cardItem->product_id,
            'quantity' => $cardItem->quantity,
            'price' => $cardItem->product->price,
        ]);
    }*/

    // Clear the card after the order is placed
    //card::where('user_id', Auth::user()->id)->delete();

    // redirect()->back()->with('success', 'Order placed successfully!');
}

 
  }

