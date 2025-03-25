

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
        <div class="lg:grid lg:grid-cols-2">
            <div class="product-card bg-violet-100  ">
                <div class="product-image">
                    <img  style="width: 900px; height: auto;" class=" mr-6 mb-6" id="{{$product->id}}.image" src="{{ asset('storage/' . $product->image_url) }}" alt="{{ $product->name }}">
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
             <div>
                <form method="POST" action="{{ route('card.store') }}" class="ml-10">
                  @csrf
                  @method('post')
                  <div class="mt-4">
                      <x-input-label for="quantity" :value="__('quantity')" />

                      <x-text-input id="quantity" class=" block mt-1 w-full "
                                      type="number"
                                      max="{{$product->stock}}"
                                      name="quantity"
                                      required autocomplete="new-quantity" />

                      <x-input-error :messages="$errors->get('quantity')" class="mt-2" />
                  </div>
                  <input type="hidden" name="product_id" value="{{ $product->id }}">
                  <x-primary-button class="ms-4">  {{ __('Add to Card ') }}</x-primary-button>🛒

              </form>
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
                 <div class="flex items-center justify-center space-x-1" id="star-rating-container-{{ $product->id }}">
                    @for ($i = 1; $i <= 5; $i++)
                        <button
                            class="star-rating text-gray-500 hover:text-yellow-500 cursor-pointer"
                            style="font-size: 4rem;"
                            data-rating="{{ $i }}"
                            data-product-id="{{ $product->id }}"
                            onclick="rateProduct({{ $product->id }}, {{ $i }})"
                        >
                            &#9734; <!-- Outline Star -->
                        </button>
                    @endfor
                </div>


                <script>
                    // Assuming user rating is passed as a variable from backend
                    const userRating = 3; // Replace this with the actual rating for the product

                    // Function to update the star visuals
                    function updateStarRating(productId, rating) {
                        const container = document.getElementById(`star-rating-container-${productId}`);
                        const stars = container.querySelectorAll('.star-rating');

                        stars.forEach((star, index) => {
                            if (index < rating) {
                                star.innerHTML = '&#9733;'; // Filled Star
                                star.classList.add('text-yellow-400');
                                star.classList.remove('text-gray-400');
                            } else {
                                star.innerHTML = '&#9734;'; // Outline Star
                                star.classList.add('text-gray-400');
                                star.classList.remove('text-yellow-400');
                            }
                        });
                    }

                    // Initialize stars with user rating
                    updateStarRating({{ $product->id }}, userRating);
                </script>

       </div>
                    @endforeach
                </div>
                <div class="max-w-2xl mx-auto p-4 sm:p-6 lg:p-8">
            <form method="get" action="{{ route('checkout') }}">

                <x-primary-button>
                  {{__('Order 💰')}}
                </x-primary-button>💰
                </form></div>



   <br> <br> <br> <br> <br> <br> <br>

</x-app-layout>
