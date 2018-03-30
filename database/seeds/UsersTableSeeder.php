<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //Cria um usuario php artisan db:seed
        User::create (['email' => 'maylonzanardi@hotmail.com', 'username' => 'maylonzanardi', 'password' => Hash::make('maylon'), 'name' => 'Maylon']);
    }
}
