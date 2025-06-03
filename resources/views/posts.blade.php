<x-layout>
    <x-slot:title>{{ $title }}</x-slot:title>

    <div class="py-4 px-4 mx-auto max-w-screen-xl lg:px-6">
        <div class="mx-auto max-w-screen-md sm:text-center">
            <form>
                @if (request('category'))
                    <input type="hidden" name="category" value="{{ request('category') }}">
                @endif
                <div class="items-center mx-auto mb-3 space-y-4 max-w-screen-sm sm:flex sm:space-y-0">
                    <div class="relative w-full">
                        <input
                            class="block p-3 pl-10 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 sm:rounded-none sm:rounded-l-lg focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"
                            placeholder="Cari Berita" type="search" id="search" name="search" autocomplete="off">
                        <div class="flex absolute inset-y-0 left-0 items-center pl-3 pointer-events-none">
                            <svg class="w-5 h-5 text-gray-500" aria-hidden="true" fill="none" viewBox="0 0 24 24">
                                <path stroke="currentColor" stroke-linecap="round" stroke-width="2"
                                    d="m21 21-3.5-3.5M17 10a7 7 0 1 1-14 0 7 7 0 0 1 14 0Z" />
                            </svg>
                        </div>
                    </div>
                    <div>
                        <button type="submit"
                            class="py-3 px-5 w-full text-sm font-medium text-white bg-primary-700 border border-primary-600 rounded-lg sm:rounded-none sm:rounded-r-lg hover:bg-primary-800 focus:ring-4 focus:ring-primary-300 dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">Cari</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    {{ $posts->links() }}

    <div class="py-4 my-4 px-4 mx-auto max-w-screen-xl lg:py-4 lg:px-0">
        <div class="grid gap-8 md:grid-cols-2 lg:grid-cols-3">
            @forelse ($posts as $post)
                <article
                    class="p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">

                    {{-- Kategori di atas gambar --}}
                    <div class="mb-3 text-sm text-gray-500">
                        @if ($post->category)
                            <a href="/posts?category={{ $post->category->slug }}">
                                <span
                                    class="bg-{{ $post->category->color ?? 'gray' }}-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800">
                                    <svg class="mr-1 w-3 h-3" fill="currentColor" viewBox="0 0 20 20"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M2 6a2 2 0 012-2h6a2 2 0 012 2v8a2 2 0 01-2 2H4a2 2 0 01-2-2V6zM14.553 7.106A1 1 0 0014 8v4a1 1 0 00.553.894l2 1A1 1 0 0018 13V7a1 1 0 00-1.447-.894l-2 1z">
                                        </path>
                                    </svg>
                                    {{ $post->category->name }}
                                </span>
                            </a>
                        @else
                            <span class="text-xs text-gray-400 italic">Tanpa Kategori</span>
                        @endif
                    </div>

                    {{-- Gambar yang bisa diklik --}}
                    @if ($post->image)
                        <a href="/posts/{{ $post->slug }}">
                            <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->title }}"
                                class="rounded-lg mb-3 w-full h-48 object-cover transition-transform hover:scale-105 duration-200">
                        </a>
                    @endif

                    {{-- Judul dan Isi --}}
                    <a href="/posts/{{ $post->slug }}" class="hover:underline">
                        <h2 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                            {{ $post->title }}</h2>
                    </a>
                    <p class="mb-5 font-light text-gray-500 dark:text-gray-400">
                        {{ \Illuminate\Support\Str::limit($post->body, 150) }}
                    </p>

                    {{-- Author --}}
                    <div class="flex justify-between items-center">
                        @if ($post->author)
                            <a href="/posts?author={{ $post->author->username }}">
                                <div class="flex items-center space-x-3">
                                    <img class="w-7 h-7 rounded-full"
                                        src="https://flowbite.s3.amazonaws.com/blocks/marketing-ui/avatars/jese-leos.png"
                                        alt="{{ $post->author->name }}" />
                                    <span class="font-medium text-xs dark:text-white">
                                        {{ $post->author->name }}
                                    </span>
                                </div>
                            </a>
                        @else
                            <span class="text-xs text-gray-400 italic">Tanpa Penulis</span>
                        @endif
                    </div>
                </article>
            @empty
                <div>
                    <p class="font-semibold text-xl my-4">Berita tidak ditemukan!</p>
                    <a href="/posts" class="block text-blue-600 hover:underline">&laquo; Kembali ke semua Postingan</a>
                </div>
            @endforelse
        </div>
    </div>

    {{ $posts->links() }}
</x-layout>
