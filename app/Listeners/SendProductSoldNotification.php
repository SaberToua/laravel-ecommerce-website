<?php

namespace App\Listeners;

use App\Models\User;
use App\Events\ProductUpdated;
use Illuminate\Support\Facades\DB;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\Notifications\ProductSoldNotification;

class SendProductSoldNotification
{
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(ProductUpdated $event)
    {
        // Get all users (you may want to filter users based on your requirement)
        $users = User::where('notified', true)->get();

        // Send notification to all users
        foreach ($users as $user) {
            $user->notify(new ProductSoldNotification($event->product));
        }
    }}
