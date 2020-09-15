<?php

namespace App\Http\Controllers;

use App\Models\Exhibitor;
use App\Models\Video;

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

    function listVideos()
    {
        $rows = Video::paginate();

//        dd($rows);

        return view('video.list', [
            'rows' => $rows
        ]);
    }

    function watchVideo($id)
    {
        return view('video.view', [
            'video' => Video::find($id)
        ]);
    }
}
