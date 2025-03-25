<?php

namespace App\Http\Controllers;

use Log;
use App\Models\Webhook;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class WebhookController extends Controller
{
    public function handleWebhook(Request $request)
    {
        // You can log the request to see what data is received
        Log::info('Webhook received:', $request->all());
        $payload = $request->getContent();
        $sigHeader = $request->header('Stripe-Signature');
        $secret = config('services.stripe.webhook_secret'); // store in .env
    
        try {
            $event = Webhook::constructEvent(
                $payload, $sigHeader, $secret
            );
        } catch (\UnexpectedValueException $e) {
            return response()->json(['status' => 'invalid_payload'], 400);
        } catch (\Stripe\Exception\SignatureVerificationException $e) {
            return response()->json(['status' => 'invalid_signature'], 400);
        }

        // Example: Handle the event (e.g., Stripe payment success)
        if ($request->type === 'payment_intent.succeeded') {
            // Your logic here, like updating the payment status or the order status
        }

        // Respond to the webhook to acknowledge receipt
        return response()->json(['status' => 'success'], 200);
    }
}
