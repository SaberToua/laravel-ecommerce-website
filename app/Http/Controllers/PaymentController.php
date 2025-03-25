<?php 
    
namespace App\Http\Controllers;
     
use Stripe\Charge;
use Stripe\Stripe;
use App\Models\card;
use App\Models\User;
use Stripe\Customer;
use App\Models\order;
use App\Mail\TestMail;
use App\Models\payment;
//use Stripe\Climate\Order;

use App\Models\product;
//use Faker\Provider\Payment;
use App\Models\Shipping;
use Illuminate\View\View;
use Stripe\PaymentIntent;
use Illuminate\Http\Request;
use Stripe\Checkout\Session;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class PaymentController extends Controller
{
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
    *
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function stripe()
    {
        return view('commerce.checkout');
    }
    
    public function cancel(){
        $order= Order:: where('session_id',
        "cs_test_b1e3Kj7iqw6w6Ci8BUVY4O1BZCA9Qc5xtgVQNg09GBxjiTrFnpqG6dCEeu")->first();
        echo '<pre>';
        var_dump($order);
        echo '</pre>';
    }
/*
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function stripePost(Request $request,$id) 
    {
        $order= order::find($id);
        Stripe::setApiKey(config('services.stripe.secret'));
      //  Stripe::setApiKey(env('STRIPE_SECRET'));
    
    /*  $paymentIntent=    Stripe\Charge::create ([
                "amount" => $order->total*100,
                "currency" => "usd",
                "source" => $request->stripeToken,
                "description" => "Test payment from itsolutionstuff.com." 
        ]);
       

        if ($paymentIntent->status === 'succeeded') {
            // Update order status, send confirmation email, etc.
            Payment::create([
                'order_id' => $order->id,
                'amount' => $order->total,
                'payment_method' => $paymentIntent->payment_method,
                'transaction_id' => $paymentIntent->id,
                'payment_status' => $paymentIntent->status,
            ]);
            $order->update([
                'status' => 'paid',
            ]);
    
 //       return view('commerce.seccess')
        }*/
        $lineItems = [];
        $totalPrice = 0;
        $carditems= card::where('user_id', Auth::user()->id)->get();
        foreach ($carditems as $carditem) {
            $product =   product ::find($carditem->product_id);
            if (!$product) {
                // Handle the case when the product doesn't exist
                continue; // Skip this iteration if the product doesn't exist
            }
        
            $totalPrice += $product->price*$product->quantity;
            $lineItems[] = [
                'price_data' => [
                    'currency' => 'usd',
                    'product_data' => [
                        'name' => $product->name,
                        'images' => [$product->image_url]
                    ],
                    'unit_amount' => $product->price * 100,
                ],
                'quantity' => $carditem->quantity,
            ];
        }
        if (empty($lineItems)) {
            dd('Line items are empty');
        }
        $user = Auth::user();
        $customer = \Stripe\Customer::create([
            'email' => $user->email,
            'name' => $user->name,
        ]);
       
        $session = \Stripe\Checkout\Session::create([
            'customer' => $customer->id,
            'line_items' => $lineItems ,
            'mode' => 'payment',
            'success_url' => route('checkout.success',$id) . "?session_id={CHECKOUT_SESSION_ID}",
            //'success_url' => route('checkout.success', [], true) . "?session_id={CHECKOUT_SESSION_ID}"
           // 'success_url' => route('checkout.success',$id)
            //  'success_url' => route('checkout.success', ['session_id' => '{CHECKOUT_SESSION_ID}'], true),
         //   'cancel_url' => route('checkout.cancel', [], true),
        ]);

       

        return redirect($session->url);

     //   return response()->json(['error' => 'Payment failed','status' => $paymentIntent->status]);
      
   //  $_SESSION::flash('success', 'Payment successful!');
              
       // return redirect()->back();
    }
    public function success(Request $request,$id)
    {
       /* \Stripe\Stripe::setApiKey(env('STRIPE_SECRET_KEY'));
       // $sessionId = $request->get('session_id');

        try {
            $session = \Stripe\Checkout\Session::retrieve($sessionId);
            if (!$session) {
                throw new NotFoundHttpException;
            }
         $customer = \Stripe\Customer::retrieve($session->customer);

          /*  $order = Order::where('session_id', $session->id)->first();
            if (!$order) {
                throw new NotFoundHttpException();
            }
            if ($order->status === 'unpaid') {
                $order->status = 'paid';
                $order->save();

            }*/
            Stripe::setApiKey(config('services.stripe.secret'));
            $session_id = $request->query('session_id');

            // Retrieve the session details from Stripe
            $session = Session::retrieve($session_id);
        
            // Get the payment intent from the session
            $paymentIntent = PaymentIntent::retrieve($session->payment_intent);
        
            // Get payment details
            $paymentStatus = $paymentIntent->status;  // Payment status
            $paymentMethod = $paymentIntent->payment_method_types[0];  // Payment method (e.g., card)
            $transactionId = $paymentIntent->id;  

            $stripe_payment_id = $session->payment_intent;       // Payment Intent ID
    $stripe_customer_id = $session->customer;            // Customer ID
    $payment_intent_id = $session->payment_intent;       // Same as Payment Intent ID
    $transaction_id = $session->id;               

        $order= order::find($id);
            Payment::create([
                'order_id' => $order->id,
                'amount' => $order->total,
                'payment_method' =>  $paymentMethod,
                'transaction_id' => $transaction_id,
                'payment_status' =>  $paymentStatus,
                'stripe_payment_id'=>$stripe_payment_id,
                'stripe_customer_id'=> $stripe_customer_id ,
                'stripe_intent_id'=>$payment_intent_id
            ]);
          
           
            $order->update([
                'status' => 'paid',
            ]);
            card::where('user_id', Auth::user()->id)->delete();
            $customer = \Stripe\Customer::retrieve($session->customer);

           
   $address=Auth::user()->address;
            Shipping::create([
                'order_id' => $order->id,
                'address' =>$address ,  // Assuming order has a shipping address
                'shipping_status' => 'pending', // Default status before shipment
            ]);
            $ship=Shipping::where('order_id', $order->id)->first();
            $user=Auth::user();
            Mail::raw('your payment is seccess!!!!!!!!!!!!!!!,shipping is processing', function ($message) use ($user) {
                $message->to($user->email)
                        ->subject('payment seccess');
            });
         return redirect()->route('Ship.customer',$ship);

    }

public function sendTestEmail()
{
    $user = Auth::user();

    // Send a simple email using the inline content
    Mail::raw('This is a test email from Laravel.', function ($message) use ($user) {
        $message->to($user->email)
                ->subject('Test Email');
    });

    return 'Test email sent to ' . $user->email;
}
    public function webhook()
    {
        echo " This is your Stripe CLI webhook secret for testing your endpoint locally.";
        $endpoint_secret = env('STRIPE_WEBHOOK_SECRET');

        $payload = @file_get_contents('php://input');
        $sig_header = $_SERVER['HTTP_STRIPE_SIGNATURE'];
        $event = null;

        try {
            $event = \Stripe\Webhook::constructEvent(
                $payload, $sig_header, $endpoint_secret
            );
        } catch (\UnexpectedValueException $e) {
            // Invalid payload
            return response('', 400);
        } catch (\Stripe\Exception\SignatureVerificationException $e) {
            // Invalid signature
            return response('', 400);
        }

// Handle the event
        switch ($event->type) {
            case 'checkout.session.completed':
                $session = $event->data->object;

                $order = Order::where('session_id', $session->id)->first();
                if ($order && $order->status === 'unpaid') {
                    $order->status = 'paid';
                    $order->save();
                    // Send email to customer
                }

            // ... handle other event types
            default:
                echo 'Received unknown event type ' . $event->type;
        }

        return response('');
    }

}
?>

/