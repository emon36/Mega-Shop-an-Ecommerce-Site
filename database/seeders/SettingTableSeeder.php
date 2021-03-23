<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use DB;

class SettingTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('settings')->insert([
            'vat' => '5',
            'email' => 'megashop@gmail.com',
            'shipping_charge' => '2',
            'shopname' => 'megashop',
            'phone' => '+8801977451259',
            'address' => 'Dhanmondi 32',
            'logo' => 'logo.png'
        ]);
    }
}
