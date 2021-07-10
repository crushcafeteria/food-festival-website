<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    protected $appends = ['preview_url','YTID'];

    function getPreviewUrlAttribute()
    {
        $url = parse_url($this->attributes['link'])['query'];
        $url = explode('=', $url)[1];

        return 'https://img.youtube.com/vi/' . $url . '/hqdefault.jpg';
    }

    function getYTIDAttribute()
    {
        $url = parse_url($this->attributes['link'])['query'];
        $url = explode('=', $url)[1];

        return $url;
    }
}
