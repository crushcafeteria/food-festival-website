<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Exhibitor extends Model
{
    function getLogoAttribute($val)
    {
        if ($val) {
            $val = str_replace('\\', '/', $val);
            return asset('storage/' . $val);
        }

        return null;
    }

    function getBannerAttribute($val)
    {
        if ($val) {
            $val = str_replace('\\', '/', $val);
            return asset('storage/' . $val);
        }

        return null;
    }
}
