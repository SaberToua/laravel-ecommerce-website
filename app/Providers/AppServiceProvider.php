<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{



    
    /**
     * Register any application services.
     * @var array
     */
    protected $listen = [
        'App\Events\ProductUpdated' => [
            'App\Listeners\SendProductSoldNotification',
        ],
    ];
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     *  @return void
     */
    public function boot(): void
    {
     
    }
}
