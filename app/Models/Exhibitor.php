<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Exhibitor extends Model
{
    function getLogoAttribute($val)
    {
        $val = str_replace('\\', '/', $val);
        return asset('storage/' . $val);
    }

    function getBannerAttribute($val)
    {
        $val = str_replace('\\', '/', $val);
        return asset('storage/' . $val);
    }
}
