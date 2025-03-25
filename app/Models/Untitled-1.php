{{--}}
<!DOCTYPE html>
<html lang="en">
<head>
    <style>

        {
        
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Shipping management</title>
</head>
<body class="bg-lime-300">
    @phptable
    $currentUserId = null;
@endphp


<div class="max-w-2xl mx-auto p-4 sm:p-6 lg:p-8 dark:bg-slate-800 ">
    <form method="POST" >
        @csrf
        <textarea
            name="message"
            placeholder="{{ __('What\'s on your mind?') }}"
            class="block w-full border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm"
        >{{ old('message') }}</textarea>
        <x-input-error :messages="$errors->get('message')" class="mt-2" />
        <x-primary-button class="mt-4">{{ __('paid') }}</x-primary-button>
    </form>

    <div class="mt-6 bg-sky-300 shadow-sm rounded-lg divide-y">
    @foreach ($paids as $paid)
    
        
      
      <div class="p-6 flex space-x-2">
               
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-gray-600 -scale-x-100" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
                </svg>
        
                     <div class="flex-1" >
                      
                <div class="flex justify-between items-center">
                        <div>
                          
                            <span class="text-gray-800"> </span>
                         
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
                                    <x-dropdown-link  :href="route('Ship.inroute',20 )">
                                        {{ __('Mak as Shipped') }}
                                    </x-dropdown-link>
                                     <x-dropdown-link  href="{{route('Ship.delete',20)}}">
                                            {{ __('Mark as Delevred') }}
                                        </x-dropdown-link>
                                   
                               
                               
                            </x-dropdown>
                        </x-slot>
                    </div>
                   
                  
                  <table class="  border-separate  border border-slate-500" > <th>cotumer</th>    <th>Adress</th> <tr> <td> <p class="mt-4 text-lg text-gray-900   size-10">{{$paid->user_name}}</p></td>
                   <td> <p class="mt-4 text-lg text-gray-900   size-10"> {{$paid->user_adress}}</p> </td></tr></<br><br>
                </table>
                  
                    <ul>
                    
                  <br><table class="table-auto border-separate border border-slate-500 bg-gray-700">
                  <th>product</th> <th>quntity</th> 
                   <tr> <td>{{ $paid->product_name }} </td>
                    <td>(Quantity: {{ $paid->quantity }})</td></tr>
                </table>
                   
                   
                @php
                $currentUserId = $paid->user_id;
            @endphp


</div>

 </div>
            
           
        

        @endforeach
        
    </div>
</div>

</body>
</html>
    --}}



    