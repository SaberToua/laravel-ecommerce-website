{{--<x-app-layout>
    <div class="max-w-2xl mx-auto p-4 sm:p-6 lg:p-8">
      
 
        <div class="mt-6 bg-white shadow-sm rounded-lg divide-y">
            <h1>product list </h1>
            @foreach ($products as $product)
                <div class="p-6 flex space-x-2" style="background-image:url('{{ asset('storage/' . $product->image_url) }}'); ">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-gray-600 -scale-x-100" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
                    </svg>
                    <div class="flex-1">
                        <div class="flex justify-between items-center">
                            <div>
                                <span class="text-gray-800">{{ $product->name }}</span>
                                <small class="ml-2 text-sm text-gray-600">{{ $product->created_at->format('j M Y, g:i a') }}</small>
                                @unless ($product->created_at->eq($product->updated_at))
                                    <small class="text-sm text-gray-600"> &middot; {{ __('edited') }}</small>
                                @endunless
                            </div>
                          
                                <x-dropdown>
                                    <x-slot name="trigger">
                                        <button>
                                            <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 text-gray-400" viewBox="0 0 20 20" fill="currentColor">
                                                <path d="M6 10a2 2 0 11-4 0 2 2 0 014 0zM12 10a2 2 0 11-4 0 2 2 0 014 0zM16 12a2 2 0 100-4 2 2 0 000 4z" />
                                            </svg>
                                        </button>
                                    </x-slot>
                                    <x-slot name="content">
                                        <x-dropdown-link :href="route('product.edit', $product->id)">
                                            {{ __('Edit') }}
                                        </x-dropdown-link>
                                        <form method="POST" action="{{ route('product.destroy', $product) }}">
                                            @csrf
                                          
                                            <x-dropdown-link :href="route('product.destroy', $product->id)" onclick="event.preventDefault(); this.closest('form').submit();">
                                                {{ __('Delete') }}
                                            </x-dropdown-link>
                                        </form>
                                    </x-slot>
                                </x-dropdown>
                                <x-dropdown-link :href="route('product.edit', $product->id)">
                                    {{ __('Edit') }}
                                </x-dropdown-link>
                           
                        </div>
                        <p class="mt-4 text-lg text-gray-900">{{ $product->message }}</p>
                    </div>
                </div>
            @endforeach
        </div>
    </div>

    <div class="max-w-2xl mx-auto p-4 sm:p-6 lg:p-8">
      
 
        <div class="mt-6 bg-white shadow-sm rounded-lg divide-y">
            <h1> catigories list</h1>
            @foreach ($catigories as $catigory)
                <div class="p-6 flex space-x-2"  >
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-gray-600 -scale-x-100" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
                    </svg>
                    <div class="flex-1">
                        <div class="flex justify-between items-center">
                            <div>
                                <span class="text-gray-800">{{ $catigory->name }}</span>
                                <small class="ml-2 text-sm text-gray-600">{{ $catigory->created_at->format('j M Y, g:i a') }}</small>
                                @unless ($catigory->created_at->eq($catigory->updated_at))
                                    <small class="text-sm text-gray-600"> &middot; {{ __('edited') }}</small>
                                @endunless
                            </div>
                        
                                <x-dropdown>
                                    <x-slot name="trigger">
                                        <button>
                                            <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 text-gray-400" viewBox="0 0 20 20" fill="currentColor">
                                                <path d="M6 10a2 2 0 11-4 0 2 2 0 014 0zM12 10a2 2 0 11-4 0 2 2 0 014 0zM16 12a2 2 0 100-4 2 2 0 000 4z" />
                                            </svg>
                                        </button>
                                    </x-slot>
                                    <x-slot name="content">
                                        <x-dropdown-link :href="route('catigory.edit', $catigory->id)">
                                            {{ __('Edit') }}
                                        </x-dropdown-link>
                                        <form method="POST" action="{{ route('catigory.destroy', $catigory->id) }}">
                                            @csrf
                                          
                                            <x-dropdown-link :href="route('catigory.destroy', $catigory->id)" onclick="event.preventDefault(); this.closest('form').submit();">
                                                {{ __('Delete') }}
                                            </x-dropdown-link>
                                        </form>
                                    </x-slot>
                                </x-dropdown>
                           
                        </div>
                       
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</x-app-layout>
--}}
                                
<style>
    h1{
        font-size:xx-large;

        align-self: center;
    }
    .product-grid {
display: flex;
flex-wrap: wrap;
gap: 20px;
justify-content: space-around;
}

.product-card {
width: 250px;
padding: 20px;
border: 1px solid #ddd;
border-radius: 8px;
background-color: #fff;
text-align: center;
transition: transform 0.3s ease;
}

.product-card:hover {
transform: scale(1.05);
}

.product-image img {
width: 100%;
height: auto;
border-radius: 50%;
}

.product-info {
margin-top: 15px;
}

.product-name {
font-size: 18px;
font-weight: bold;
}

.product-description {
color: #555;
font-size: 14px;
}

.product-price {
font-size: 16px;
color: #27ae60;
margin: 10px 0;
}

.btn {
background-color: #3498db;
color: white;
padding: 10px 20px;
border-radius: 5px;
text-decoration: none;
font-size: 14px;
}

.btn:hover {
background-color: #2980b9;
}

</style>
<x-app-layout>

    <div class="max-w-2xl mx-auto p-4 sm:p-6 lg:p-8">
        <!-- Search Form -->
        <form action="{{ route('product.search') }}" method="GET">
            
            <div>
                <x-input-label for="search" :value="__('search')" />
                <x-text-input id="search" class="block mt-1 w-full bg-violet-200" type="text" name="search" :value="old('search')" required autofocus autocomplete="search" placeholder=" 🔍 Search for products..." required/>
                <x-input-error :messages="$errors->get('search')" class="mt-2"  />
            </div><br>
            <x-primary-button class="ms-4">
                {{ __('Search') }}
            </x-primary-button>
        </form>
    </div>
    <div class="max-w-2xl mx-auto p-4 sm:p-6 lg:p-8">
    
       <h1>Products List 📃: </h1> </div>
<br>
    <div id="work-offers-list" class="mx-4 colored lg:grid lg:grid-cols-3 gap-4 space-y-4 md:space-y-0">
            
   @foreach($products as $product)
   
   <div  style="border-radius: 10%" class=" bg-violet-300 shadow-sm ">
    
        <x-dropdown-link :href="route('product.edit', $product->id)">
            {{ __('Edit') }}
        </x-dropdown-link>
        <form method="POST" action="{{ route('product.destroy', $product) }}">
            @csrf
          
            <x-dropdown-link :href="route('product.destroy', $product->id)" onclick="event.preventDefault(); this.closest('form').submit();">
                {{ __('Delete') }}
            </x-dropdown-link>
        </form>
   
    
        <div class="product-card bg-violet-100 " style="margin-leftt:55px">
            <div class="product-image size-1000 "style="margin-right:55px">
                <img  class="w-600 mr-6 mb-6" id="{{$product->id}}.image" src="{{ asset('storage/' . $product->image_url) }}" alt="{{ $product->name }}">
            </div>
            <script>
             setInterval(   function() {
                    // Target the image element by its id
                    fetch('/product-status/{{ $product->id }}')
                        .then(response => response.json())
                        .then(data => {
                    var imageElement = document.getElementById('{{$product->id}}.image');
                   
                        imageElement.src = '/storage/'+data.image_url;
                        });
                },5000);
            
               
            </script>
            
            <div class="product-info">
                <p id="{{$product->id}}" class="product-name">{{ $product->name }}</p>
                <script>
                    setInterval(function() {
                        fetch('/product-status/{{ $product->id }}')
                            .then(response => response.json())
                            .then(data => {
                                document.getElementById('{{$product->id}}').innerText = data.name;
                            });
                    }, 5000); // Poll every 5 seconds
                </script>
                <p id="{{$product->id}}.des" class="product-description">{{ $product->description }}</p>
                <script>
                    setInterval(function() {
                        fetch('/product-status/{{ $product->id }}')
                            .then(response => response.json())
                            .then(data => {
                                document.getElementById('{{$product->id}}.des').innerText = data.description;
                            });
                    }, 5000); // Poll every 5 seconds
                </script>
                <p id="{{$product->id}}.price" class="product-price">${{ number_format($product->price, 2) }} 💲</p>
                <script>
                    setInterval(function() {
                        fetch('/product-status/{{ $product->id }}')
                            .then(response => response.json())
                            .then(data => {
                                document.getElementById('{{$product->id}}.price').innerText ='$'+ data.price +'💲';
                                
                                
                            });
                    }, 5000); // Poll every 5 seconds
                </script>
              </div>
            
         </div>
            <div class="p-6 flex space-x-2" >
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-gray-600 -scale-x-100" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
                </svg>
                <div class="flex-1">
                    <div class="flex justify-between items-center">
                        <div>
                            
                            <small class="ml-2 text-sm text-gray-600">{{ $product->created_at->format('j M Y, g:i a') }}</small>
                            
                        </div>
                      {{--}}  @if ($product->user->is(auth()->user()))--}}
                            <x-dropdown>
                                <x-slot name="trigger">
                                    <button>
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 text-gray-400" viewBox="0 0 20 20" fill="currentColor">
                                            <path d="M6 10a2 2 0 11-4 0 2 2 0 014 0zM12 10a2 2 0 11-4 0 2 2 0 014 0zM16 12a2 2 0 100-4 2 2 0 000 4z" />
                                        </svg>
                                    </button>
                                </x-slot>
                                <x-slot name="content">
                                    
                                   
                                </x-slot>
                            </x-dropdown>
                            <x-slot name="content">
                                    
                                
                            </x-slot>
                       
                    </div>
                   
                </div>
            </div>
            <div class="max-w-2xl mx-auto p-4 sm:p-6 lg:p-8">
      @php $id=$product->id @endphp


      <form method="POST" action="{{ route('card.store') }}">
        @csrf
        @method('post')
        <div class="mt-4">
            <x-input-label for="quantity" :value="__('quantity')" />

            <x-text-input id="quantity" class="block mt-1 w-full"
                            type="number"
                            max="{{$product->stock}}"
                            name="quantity"
                            required autocomplete="new-quantity" />

            <x-input-error :messages="$errors->get('quantity')" class="mt-2" />
        </div>
        <input type="hidden" name="product_id" value="{{ $product->id }}">
        <x-primary-button class="ms-4">  {{ __('Add to Card 🛒') }}🛒</x-primary-button>🛒
        
    </form>
{{--
                <form method="POST"  action="{{route('review',$id)}}">
                    @csrf
                    <input type="number" name="rating" >
                    <textarea
                        name="comment"
                        placeholder="{{ __('What\'s your comment about this product?') }}"
                        class="block w-full border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm"
                    >{{ old('comment') }}</textarea>
                    <x-input-error :messages="$errors->get('comment')" class="mt-2" />
                    <x-primary-button class="mt-4">{{ __('send') }}</x-primary-button>
                </form>
             --}}
                                    
             </div> 
             <div class="flex items-center justify-center space-x-1">
                @for ($i = 1; $i <= 5; $i++)
                    <button style="size:4cm"
                        class="star-rating text-yellow-400 hover:text-yellow-500 cursor-pointer"
                        data-rating="{{ $i }}"
                        data-product-id="{{ $product->id }}"
                        onclick="rateProduct({{ $product->id }}, {{ $i }})"
                    >
                        @if($i <= $product->rating)
                            &#9733; <!-- Filled Star -->
                        @else
                            &#9734; <!-- Outline Star -->
                        @endif
                    </button>
                @endfor
            </div>
   </div>
                @endforeach
            </div>
            <div class="max-w-2xl mx-auto p-4 sm:p-6 lg:p-8">
        <form method="get" action="{{ route('checkout') }}">

            <x-primary-button>
              {{__('Order 💰')}}
            </x-primary-button>💰
            </form></div>
 <x-dropdown-link href="{{route('Ship.inroute',19)}}">
                {{ __('send') }}
            </x-dropdown-link>
   

<br> <br> <br> <br> <br> <br> <br>
<script>
function rateProduct(productId, rating) {
    fetch(`/Review/${productId}`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-TOKEN': '{{ csrf_token() }}',
        },
        body: JSON.stringify({ rating: rating }),
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            alert('Rating updated successfully!');
            location.reload(); // Reload the page to reflect the updated rating
        }
    })
    .catch(error => console.error('Error:', error));
}
</script>
</x-app-layout>