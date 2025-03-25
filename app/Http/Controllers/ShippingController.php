<?php

namespace App\Http\Controllers;
use App\Models\order;
use App\Models\payment;
use App\Models\Shipping;
use App\Models\order_items;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use App\Events\ShippingStatusUpdated;


/**
 * Deletes a shipping record and updates its status to 'deleted'.
 *
 * @param int $id The unique identifier of the shipping record to be deleted.
 *
 * @return \Illuminate\Http\RedirectResponse Redirects to the admin shipping page after deletion.
 */




class ShippingController extends Controller
{




    public function fetch($id){
        $data=DB::table('order_items')->where('order_id',$id)->get();
        return response()->json($data);
    }
    public function items($order_id){
        $items = DB::table('order_items')
                ->join('products', 'order_items.product_id', '=', 'products.id')
                ->select('products.name', 'order_items.quantity')
                ->where('order_items.order_id', $order_id)
                ->get();

    return response()->json($items); // Return the data as JSON
    }
    public function getShippingStatus($id)
{
    $shipping = Shipping::find($id);
    return response()->json( $shipping);//_status->shipping_status
}

public function index() { 
    $paids = Shipping::where('shipping_status', 'pending')
        ->orWhere('shipping_status', 'shipped')
        ->get() ?? collect(); // Ensure it's a collection, even if null
    
    return view('commerce.admin.shipping', compact('paids'));
}




/**
 * Displays the shipping details for a specific customer.
 *
 * This function retrieves the shipping record associated with the given customer ID,
 * and then passes the shipping data to the 'commerce.success' view for display.
 *
 * @param int $id The unique identifier of the customer for whom the shipping details are to be displayed.
 *
 * @return \Illuminate\View\View Returns the 'commerce.success' view with the shipping data passed as a compacted variable.
 */
public function customer($id)
{
    $shipping = Shipping::find($id);
    return view('commerce.success', compact('shipping'));
}

           
    public function destroy($id){
        $shipping=Shipping::find($id);
        $shipping->shipping_status='delivered';
        $shipping->save();
        $emailRecord 
         = DB::table('users')
            ->select('email')
            ->whereIn('id', function ($query) use ($id) {
                $query->select('user_id')
                      ->from('orders')
                      ->whereIn('id', function ($subQuery) use ($id) {
                          $subQuery->select('order_id')
                                   ->from('shippings')
                                   ->whereColumn('shippings.order_id', 'orders.id')
                                   ->where('shippings.id', $id);
                      });
            })
            ->first();
    if ($emailRecord) {
        // Send a simple email using the inline content
        Mail::raw('your shipping is delevred !!!!!!!!!!!!!!!!', function ($message) use ($emailRecord) {
            $message->to($emailRecord->email)
                    ->subject('Test Email');
        });

       // return 'Test email sent to ' . $emailRecord->email;
    }
    event(new ShippingStatusUpdated($shipping));
        return redirect()->route('Ship.index');
    }
    public function inroute($id) {
        $shipping=Shipping::find($id);
        $shipping->shipping_status='shipped';
        $shipping->save();
        $emailRecord 
        = DB::table('users')
           ->select('email')
           ->whereIn('id', function ($query) use ($id) {
               $query->select('user_id')
                     ->from('orders')
                     ->whereIn('id', function ($subQuery) use ($id) {
                         $subQuery->select('order_id')
                                  ->from('shippings')
                                  ->whereColumn('shippings.order_id', 'orders.id')
                                  ->where('shippings.id', $id);
                     });
           })
           ->first();
   if ($emailRecord) {
       // Send a simple email using the inline content
       Mail::raw('your shipping is shiped  ,wait for it!!!', function ($message) use ($emailRecord) {
           $message->to($emailRecord->email)
                   ->subject('Test Email');
       });}

       broadcast(new ShippingStatusUpdated($shipping));
        return redirect()->route('Ship.index');
    }
    //
}
