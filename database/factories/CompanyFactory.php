<?php

namespace Database\Factories;

use App\Models\Company;
use Illuminate\Database\Eloquent\Factories\Factory;

class CompanyFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Company::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->company(),
            'email' => $this->faker->companyEmail(),
            'logo' => 'img/' . $this->faker->image('storage/app/public/img', 100, 100, null, false, false, null, false),
            'website' => $this->faker->optional($weight = 30)->domainName(),
            'created_at' => $this->faker->dateTimeBetween('-3 months')
        ];
    }
}
