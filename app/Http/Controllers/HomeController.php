<?php

namespace App\Http\Controllers;

use App\Models\Exhibitor;
use App\Models\Video;
use App\Models\Vote;

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
        $rows = Exhibitor::query();

        if (request()->has('type') && request()->type != 'ALL') {
            $rows = $rows->where('category', request()->type);
        }

        return view('exhibition.list', [
            'rows' => $rows->paginate()
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

    function showExhibitor($id)
    {
        return view('exhibition.view', [
            'exhibitor' => Exhibitor::find($id),
            'votes'     => Vote::where('exhibitor_id', $id)->count(),
            'voted'     => Vote::where(['user_id' => auth()->id(), 'exhibitor_id' => $id])->count()
        ]);
    }

    function castVote($exID)
    {
        $exhibitor = Exhibitor::find($exID);

        if ($exhibitor) {
            $vote = Vote::where('user_id', auth()->id())->where('exhibitor_id', $exhibitor->id)->first();

            if (!$vote) {
                $vote = Vote::create([
                    'user_id'      => auth()->id(),
                    'exhibitor_id' => $exhibitor->id,
                ]);
            }
        }

//        dd($vote);

        return redirect()->back();
    }
}
