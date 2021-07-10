<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Exhibitor;
use Faker\Generator as Faker;

$factory->define(Exhibitor::class, function (Faker $faker) {
    return [
        'name' => $faker->name(),
        'business_name' => $faker->company(),
        'link' => $faker->url,
        'category' => 'CORPORATE',
        'banner'=>'http://placehold.it/1000x600?text=Banner Here',
        'logo'=>'http://placehold.it/600x600?text=Logo'
    ];
});
