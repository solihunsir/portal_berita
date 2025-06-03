<?php

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;




Route::get('/', function () {
    return view('home', ['title' => 'Winnicode Garuda Teknologi']);
});

Route::get('/posts', function () {
    return view('posts', ['title' => 'Berita Terbaru', 'posts' => Post::filter(request(['search', 'category', 'author']))->latest()->paginate(12)->withQueryString()]);
});

Route::get('/posts/{post:slug}', function (Post $post) {
    return view('post', ['title' => 'Berita Lengkap', 'post' => $post]);
});

Route::get('/authors/{user:username}', function (User $user) {
    // $posts = $user->posts->load('category', 'author');
    return view('posts', ['title' => count($user->posts) . ' Berita Dari : ' . $user->name, 'posts' => $user->posts]);
});

Route::get('/categories/{category:slug}', function (Category $category) {
    // $posts = $category->posts->load('category', 'author');
    return view('posts', ['title' => 'Artikel Dari Kategori ' . $category->name, 'posts' => $category->posts]);
});

Route::get('/about', function () {
    return view('about', ['title' => 'About']);
});

Route::get('/contact', function () {
    return view('contact', ['title' => 'Contact']);
});


Route::get('/dashboard', [AdminController::class, 'dashboard']);
Route::get('/dashboard/create', [AdminController::class, 'create']);
Route::post('/dashboard/store', [AdminController::class, 'store']);
Route::get('/dashboard/edit/{id}', [AdminController::class, 'edit']);
Route::post('/dashboard/update/{id}', [AdminController::class, 'update']);
Route::get('/dashboard/delete/{id}', [AdminController::class, 'destroy']);
