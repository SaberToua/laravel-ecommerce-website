<style> #catigory_id{
    border-radius: 5px;
}

</style>
<x-app-layout>
<x-guest-layout>
  
    <form style="" class="bg-slate-400" method="POST" action="{{route('product.store')}}"  enctype="multipart/form-data">
        @csrf
        
    <div class="mt-4" >
        <label for="category_id">Select Category</label>
        <select class="  block mt-1 w-full" name="catigory_id" id="catigory_id" required>
            <option value="">Select a category</option>
            @foreach($categories as $category)
                <option class="bg-violet-300" value="{{ $category->id }}">{{ $category->name }}</option>
            @endforeach
        </select>
    </div>
        <!-- Name -->
        <div>
            <x-input-label for="name" :value="__('Name')" />
            <x-text-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
            <x-input-error :messages="$errors->get('name')" class="mt-2" />
        </div>

        <!-- Email Address -->
        <div class="mt-4">
            <x-input-label for="description" :value="__('description')" />
            <x-text-input id="description" class="block mt-1 w-full" type="text" name="description" :value="old('description')" required autocomplete="description" />
            <x-input-error :messages="$errors->get('description')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="stock" :value="__('stock')" />

            <x-text-input id="stock" class="block mt-1 w-full"
                            type="number"
                            name="stock"
                            required autocomplete="stock" />

            <x-input-error :messages="$errors->get('stock')" class="mt-2" />
        </div>

        <!-- Confirm Password -->
   
           

        <input type="file" name="image_url">


          
        
        <div class="mt-4">
            <x-input-label for="price" :value="__('price')" />

            <x-text-input id="price" class="block mt-1 w-full"
                            type="number"
                            name="price" required autocomplete="price" />

            <x-input-error :messages="$errors->get('price')" class="mt-2" />
        </div>

        <div class="flex items-center justify-end mt-4">
            


            <x-primary-button class="ms-4">
                {{ __('Add') }}
            </x-primary-button>
        </div>
    </form>
    

</x-guest-layout>
<br><br>  <br><br>  <br><br>    
</x-app-layout>