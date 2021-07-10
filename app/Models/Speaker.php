<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Speaker extends Model
{
    function getPictureAttribute($val)
    {
        $val = str_replace('\\', '/', $val);
        return asset('storage/' . $val);
    }
}
