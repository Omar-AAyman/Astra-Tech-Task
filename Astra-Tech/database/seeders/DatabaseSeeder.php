<?php

namespace Database\Seeders;

use App\Models\Data;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        Data::factory(150)->create();


        Data::factory()->create([
            'full_name' => 'Test User',
            'email' => 'test@example.com',
            'phone_number' =>   random_int(1000000000, 1299999999),
        ]);

    }
}
