<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([ // php artisan migrate:refresh --seed
            UserSeeder::class, // php artisan db:seed --class=UserSeeder
            CompanySeeder::class, // php artisan db:seed --class=CompanySeeder
            EmployeeSeeder::class, // php artisan db:seed --class=EmployeeSeeder
        ]);
    }
}
