@extends('commerce.products');

                                
    {{--
<x-app-layout>
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
                                
                            </div>
            @if ($product->user->is(auth()->user()))
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
                        <p class="mt-4 text-lg text-gray-900">{{ $product->comment }}</p>
                    </div>
                </div>
                <div class="max-w-2xl mx-auto p-4 sm:p-6 lg:p-8">
          @php $id=$product->id @endphp
                    <form method="POST"  action="{{route('review',$id)}}">
                        @csrf
                        <input type="number" name="rating" >
                        <textarea
                            name="comment"
                            placeholder="{{ __('What\'s on your mind?') }}"
                            class="block w-full border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm"
                        >{{ old('comment') }}</textarea>
                        <x-input-error :messages="$errors->get('comment')" class="mt-2" />
                        <x-primary-button class="mt-4">{{ __('send') }}</x-primary-button>
                    </form>
                 
                                        
                        <form method="POST" action="{{ route('card.store') }}">
                            @csrf
                            @method('post')
                            <div class="mt-4">
                                <x-input-label for="quantity" :value="__('quantity')" />
                    
                                <x-text-input id="quantity" class="block mt-1 w-full"
                                                type="number"
                                                name="quantity"
                                                required autocomplete="new-quantity" />
                    
                                <x-input-error :messages="$errors->get('quantity')" class="mt-2" />
                            </div>
                            <input type="hidden" name="product_id" value="{{ $product->id }}">
                            <x-primary-button class="ms-4">  {{ __('Add to Card') }}</x-primary-button>
                            
                        </form>
                    
                </div>
            @endforeach
            <form method="get" action="{{ route('checkout') }}">
                <x-primary-button>
                  {{__('Bey')}}
                </x-primary-button>
                </form>
        </div>
    </div>
</x-app-layout>--}}