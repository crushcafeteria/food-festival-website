<?php

namespace App\Http\Controllers;

use App\Models\Exhibitor;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    function lobby()
    {
        return view('lobby');
    }

    function listExhibitors()
    {
        $rows = Exhibitor::paginate();

        return view('exhibition.list', [
            'rows' => $rows
        ]);
    }
}
