<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Post extends Model
{
    use HasFactory;

    // Daftar field yang boleh diisi secara massal (dari request/form)
    protected $fillable = [
        'title',
        'slug',
        'body',
        'image',
        'author_id',
        'category_id',
    ];

    // Eager loading relasi author dan category secara otomatis
    protected $with = ['author', 'category'];

    // Relasi ke model User sebagai author
    public function author(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    // Relasi ke model Category
    public function category(): BelongsTo
    {
        return $this->belongsTo(Category::class);
    }

    // Scope filter untuk pencarian, filter kategori, dan author
    public function scopeFilter(Builder $query, array $filters): void
    {
        $query->when(
            $filters['search'] ?? false,
            fn($query, $search) =>
            $query->where('title', 'like', '%' . $search . '%')
        );

        $query->when(
            $filters['category'] ?? false,
            fn($query, $category) =>
            $query->whereHas('category', fn($query) =>
            $query->where('slug', $category))
        );

        $query->when(
            $filters['author'] ?? false,
            fn($query, $author) =>
            $query->whereHas('author', fn($query) =>
            $query->where('username', $author))
        );
    }
}
