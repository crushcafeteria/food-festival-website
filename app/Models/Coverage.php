<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Coverage extends Model
{
    function getPictureAttribute($val)
    {
        return asset('storage/' . $val);
    }
}
