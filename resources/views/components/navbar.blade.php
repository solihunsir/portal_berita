<nav class="bg-gray-800" x-data="{ isOpen: false }">
    <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
        <div class="flex h-16 items-center justify-between">
            <div class="flex items-center w-full">
                {{-- Panah kiri kategori --}}
                <button id="scrollLeft" class="text-white px-2 hidden md:block bg-gray-800 hover:text-gray-300">
                    &larr;
                </button>

                {{-- Scrollable kategori --}}
                <div id="categoryScroll"
                    class="ml-2 flex items-baseline space-x-4 overflow-x-auto whitespace-nowrap scroll-smooth no-scrollbar w-full px-2">
                    @foreach (App\Models\Category::all() as $category)
                        <x-nav-link href="/posts?category={{ $category->slug }}" :active="request()->is('posts?category=' . $category->slug)">
                            {{ $category->name }}
                        </x-nav-link>
                    @endforeach
                </div>

                {{-- Panah kanan kategori --}}
                <button id="scrollRight" class="text-white px-2 hidden md:block bg-gray-800 hover:text-gray-300">
                    &rarr;
                </button>
            </div>

        </div>
    </div>

    {{-- Menu Kategori versi Mobile --}}
    <div x-show="isOpen" class="md:hidden" id="mobile-menu">
        <div class="space-y-1 px-2 pt-2 pb-3 sm:px-3 overflow-x-auto whitespace-nowrap">
            @foreach (App\Models\Category::all() as $category)
                <x-nav-link href="/posts?category={{ $category->slug }}" :active="request()->is('posts?category=' . $category->slug)">
                    {{ $category->name }}
                </x-nav-link>
            @endforeach
        </div>
    </div>
</nav>
