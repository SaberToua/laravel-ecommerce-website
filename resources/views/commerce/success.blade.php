@php  use App\Models\Shipping;@endphp
{{--<x-app-layout>
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style> 
   .antialiased {
        background-color: greenyellow;
    }
    </style>
    <title>Laravel</title>
</head>

  
 
    <body class="antialiased">
        <h1>Success payment process!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</h1>
        <h2 id="shipping-status">{{ $shipping->shipping_status }}</h2>
    
        <script>
            setInterval(function() {
                fetch('/shipping-status/{{ $shipping->id }}')
                    .then(response => response.json())
                    .then(data => {
                        document.getElementById('shipping-status').innerText = data.shipping_status;
                    });
            }, 5000); // Poll every 5 seconds
        </script>
    </body>
</html>
</x-app-layout>
--}}
<x-app-layout>
    <head>
<script src="https://js.pusher.com/7.0/pusher.min.js"></script>
<script src="{{ mix('js/app.js') }}"></script>
</head>
<body class="antialiased">
    <h1>Success payment process!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</h1>
    <h2 id="shipping-status">{{$shipping->shipping_status}}</h2>{{-- $shipping->shipping_status --}}

    <script>
        window.Echo.channel('shipping-status')
    .listen('ShippingStatusUpdated', (event) => {
        console.log('Shipping status updated:', event.shipping);
        // Update the DOM with the new shipping status
        document.getElementById('shipping-status').innerText = event.shipping.status;
    });

    </script>
</body>
</x-app-layout>