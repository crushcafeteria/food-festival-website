<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;

$factory->define(\App\Models\Video::class, function (Faker $faker) {
    return [
        'title'        => $faker->sentence,
        'description'  => $faker->sentences(4, true),
        'link'         => 'https://www.youtube.com/watch?v=3pnwzE4hy30',
        'published_at' => now()
    ];
});
