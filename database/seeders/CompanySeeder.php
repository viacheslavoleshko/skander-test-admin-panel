<?php

namespace Database\Seeders;

use App\Models\Company;
use Illuminate\Database\Seeder;

class CompanySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $companiesCount = max((int)$this->command->ask('How many companies would you like?', 30), 1);

        Company::factory($companiesCount)->create(); // 20 шт
    }
}
