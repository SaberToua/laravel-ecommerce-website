<?php

//use auth;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Middleware\admin;
//use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CardController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ReviewController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\CatigoryController;
use App\Http\Controllers\ShippingController;
use App\Http\Controllers\WebhookController; 

Route::post('/webhook', [WebhookController::class, 'handleWebhook']);
Route::get('/', function () {
    return view('welcome');
});
Route::get('/about', function () {
    return view('about');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route ::get('/test-email', [PaymentController::class, 'sendTestEmail']);
    Route ::get('/notify/{id}', [AuthenticatedSessionController::class, 'notify'])->name('notify');

    Route::get('/product/{id}', [ProductController::class, 'viewproduct'])->name('product.view');
    Route::get('/shipping-status/{id}', [ShippingController::class, 'getShippingStatus']);
    Route::get('/product-status/{id}', [ProductController::class, 'getproductStatus']);
    Route::get('/success/{id}', [PaymentController::class, 'success'])->name('checkout.success');
    Route::post('/Review/{id}', [ReviewController::class, 'store'])->name('review');
    Route::post('/add to card', [CardController::class, 'store'])->name('card.store');
    Route::post('/order/{product}', [OrderController::class, 'store'])->name('order.store');
    //Route::get('/products-admin', [ProductController::class, 'admin_show'])->name('product.admin_show');
    Route::get('/search', [ProductController::class, 'search'])->name('product.search');
    Route::get('/products', [ProductController::class, 'show'])->name('product.show');
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::get('/checkout', [OrderController::class, 'checkout'])->name('checkout');
    /*Route::get('/checkout-payment', [PaymentController::class, 'showCheckoutForm'])->name('checkoutpay');
Route::post('/payment', [PaymentController::class, 'processPayment'])->name('payment.process');
Route::get('/payment-success', [PaymentController::class, 'success'])->name('payment.success');*/
});
Route::post('/webhook', [PaymentController::class, 'webhook'])->name('checkout.webhook');
Route::get('/cancel', [PaymentController::class, 'cancel'])->name('checkout.cancel');
Route::controller(PaymentController::class)->group(function(){
    Route::get('stripeform/{id}', 'stripe')->name('stripe');
    Route::get('stripe/{id}', 'stripePost')->name('stripe.post');
});
Route::get('/items/{order_id}', [ShippingController::class, 'items'])->name('Ship.index');
    Route::get('/Shipping', [ShippingController::class, 'index'])->name('Ship.index');
    Route::get('/fetch/{id}', [ShippingController::class, 'fetch'])->name('Ship.fetch');
    Route::get('/Shipping/customer/{ship}', [ShippingController::class, 'customer'])->name('Ship.customer');
    Route::get('/Shipping/inroute/{id}', [ShippingController::class, 'inroute'])->name('Ship.inroute');
    Route::get('/Shipping/delete/{id}', [ShippingController::class, 'destroy'])->name('Ship.delete');
Route::middleware([admin::class])->group(function () {
    
    Route::post('/destroy_product/{id}', [ProductController::class, 'destroy'])->name('product.destroy');
    Route::get('/edit/{id}', [ProductController::class, 'edit'])->name('product.edit');
    Route::post('/update_product/{id}', [ProductController::class, 'update'])->name('product.update');
    Route::post('/store_catigory', [CatigoryController::class, 'store'])->name('catigory.store');
    Route::get('/edit_catigory/{id}', [CatigoryController::class, 'edit'])->name('catigory.edit');
    Route::post('/destroy_catigory/{id}', [CatigoryController::class, 'destroy'])->name('catigory.destroy');
    Route::post('/update_catigory/{id}', [CatigoryController::class, 'update'])->name('catigory.update');
    Route::get('/add_catigory', [CatigoryController::class, 'index'])->name('catigory.index');
    Route::post('/store_product', [ProductController::class, 'store'])->name('product.store');
    Route::get('/add_product', [ProductController::class, 'index'])->name('product.index');
    Route::get('/products-admin', [ProductController::class, 'admin_show'])->name('product.admin_show');
});
require __DIR__.'/auth.php';
