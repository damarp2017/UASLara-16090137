<?php

use App\Admin;
use App\Grade;
use App\Lecturer;
use App\User;
use Faker\Factory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $faker = Factory::create();
        // $this->call(UsersTableSeeder::class);
        Admin::create([
            'image' => 'default.png',
            'name' => 'Administrator',
            'email' => 'admin@gmail.com',
            'password' => Hash::make('12345678'),
        ]);

        Grade::create([
            'grade_name' => '1A',
        ]);

        foreach (range(1,5) as $i) {
            Lecturer::create([
                'image' => 'default.png',
                'nipy' => '1234567' . $i,
                'name' => $faker->name,
                'email' => $faker->email,
                'password' => Hash::make('12345678'),
            ]);
        }

        foreach (range(1,30) as $i) {
            if ($i < 10) {
                $generate = '00'.$i;
            } else {
                $generate = '0' .$i;
            }
            User::create([
                'image' => 'default.png',
                'nim' => '16090' . $generate,
                'grade_id' => '1',
                'name' => $faker->name,
                'email' => $faker->email,
                'gender' => $faker->randomElement(['male', 'female']),
                'place_of_birth' => $faker->city,
                'date_of_birth' => $faker->dateTimeBetween($startDate = '-30 years', $endDate = 'now', $timezone = null),
                'religion' => $faker->randomElement(['islam', 'katolik', 'protestan', 'hindu', 'buddha']),
                'blood_type' => $faker->randomElement(['O', 'A', 'B', 'AB']),
                'phone' => $faker->phoneNumber,
                'password' => Hash::make('12345678'),
            ]);
        }
    }
}
