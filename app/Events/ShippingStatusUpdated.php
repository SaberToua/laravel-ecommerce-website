<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class ShippingStatusUpdated implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $shipping;

    public function __construct($shipping)
    {
        $this->shipping = $shipping;
    }

    public function broadcastOn()
    {
        return new Channel('shipping-status');
    }

    public function broadcastAs()
    {
        return 'shipping.status.updated';
    }
     /**
     * Get the channels the event should broadcast on.
     *
     * @return Channel|array
     */
    
}
