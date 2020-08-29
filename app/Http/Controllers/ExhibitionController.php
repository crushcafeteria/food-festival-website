<?php

namespace App\Http\Controllers;

class ExhibitionController extends Controller
{
    function displayBooth()
    {
        return view('exhibition.display');
    }
}
