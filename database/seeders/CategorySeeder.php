<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Category::create([
            'name' => 'Teknologi',
            'slug' => 'teknologi',
            'color' => 'green'
        ]);

        Category::create([
            'name' => 'Hiburan',
            'slug' => 'hiburan',
            'color' => 'red'
        ]);

        Category::create([
            'name' => 'Ekonomi',
            'slug' => 'ekonomi',
            'color' => 'gold'
        ]);

        Category::create([
            'name' => 'Sains',
            'slug' => 'sains',
            'color' => 'grey'
        ]);

        Category::create([
            'name' => 'History',
            'slug' => 'history',
            'color' => 'blue'
        ]);

        Category::create([
            'name' => 'Intertainment',
            'slug' => 'intertainment',
            'color' => 'purple'
        ]);

        Category::create([
            'name' => 'Nasional',
            'slug' => 'nasional',
            'color' => 'cyan'
        ]);

        Category::create([
            'name' => 'Lifestyle',
            'slug' => 'lifestyle',
            'color' => 'yellow'
        ]);

        Category::create([
            'name' => 'Otomotif',
            'slug' => 'otomotif',
            'color' => 'orange'
        ]);

        Category::create([
            'name' => 'Space',
            'slug' => 'space',
            'color' => 'indigo'
        ]);

        Category::create([
            'name' => 'Pendidikan',
            'slug' => 'pendidikan',
            'color' => 'teal'
        ]);

        Category::create([
            'name' => 'Sosial Budaya',
            'slug' => 'sosial-budaya',
            'color' => 'pink'
        ]);
    }
}
