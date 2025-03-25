<x-app-layout>
    <div  class="text-7xl font-bold text-violet-500" >  <h1 class="text-violet-500"> this page is un copmleted ,if you are here send me an email at: </h1> <a class="text-blue-500" href="mailto:touamat332@gmail.com" >touamat332@gmail.com</a> and i will copmlete it ✔</div>
    {{--
@if($paids->isEmpty())
    <p>No shipping records found.</p>
@else
    <!-- Display the shipping records -->
    <div id="shippings" class="mx-4 colored lg:grid lg:grid-cols-4 gap-4 space-y-4 md:space-y-0">
    @foreach($paids as $paid)
       <div class="bg-violet-300  size-70 max-w-96  mx-20 rounded-3xl p-4 sm:p-6 lg:p-8  " >
    <p>{{ $paid->shipping_status }}</p>




            <x-dropdown-link  :href="route('Ship.inroute',$paid->id )">
                {{ __('Mak as Shipped 🚚 ')}}
            </x-dropdown-link>
             <x-dropdown-link  href="{{route('Ship.delete',$paid->id)}}">
                    {{ __('Mark as Delevred ✔')}}✔
                </x-dropdown-link>
               <x-dropdown-link  href="{{route('Ship.fetch',$paid->id)}}">
                    {{ __('Fetch Shipping Data',$paid->order_id) }}
                </x-dropdown-link>




    </div>
    <br>
    @endforeach
</div>
@endif
--}}
<br><br><br><br><br><br><br><br><br><br>
</x-app-layout>
