<x-guest-layout>
    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" class="bg-slate-400" action="{{ route('catigory.update',$catigory->id) }}">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="name" :value="__('Name')" />
            <x-text-input id="name" class="block mt-1 w-full" type="text" name="name" value="{{$catigory->name}}" required autofocus autocomplete="name" />
            <x-input-error :messages="$errors->get('name')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="description" :value="__('description')" />

            <x-text-input id="description" class="block mt-1 w-full"
                            type="text"
                            name="description" value="{{$catigory->description}}"
                            required autocomplete="description" />

            <x-input-error :messages="$errors->get('description')" class="mt-2" />
        </div>

        <!-- Remember Me -->
        

        <div class="flex items-center justify-end mt-4">
            
            

            <x-primary-button class="ms-3">
                {{ __('Update') }}
            </x-primary-button>
        </div>
    </form>
</x-guest-layout>
