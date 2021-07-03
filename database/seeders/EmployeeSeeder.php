<?php

namespace Database\Seeders;

use App\Models\Company;
use App\Models\Employee;
use Illuminate\Database\Seeder;

class EmployeeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $employeesCount = (int)$this->command->ask('How many employees would you like?', 120);
        $companies = Company::all();

        Employee::factory($employeesCount)->make()->each(function($employee) use ($companies) { 
            $employee->company_id = $companies->random()->id;
            $employee->save();
        });
    }
}
