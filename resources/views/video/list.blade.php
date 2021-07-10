@extends('layout.frontend')

@section('content')

<div class="container">
    <div class="row">
        <div class="col mb-5">
            <img src="/img/Kamukunji Image.png" class="img-fluid" style="width: 100%;">
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <h2>Watch our previous videos</h2>
            <hr>
        </div>

        @if($rows->count())
        @foreach($rows as $row)
        <div class="col-12 col-lg-4">
            <div class="card mb-4">
                <img class="card-img-top" src="{{ $row->preview_url }}" alt="{{ $row->title }}">
                <div class="card-body">
                    <h5 class="card-title">{{ $row->title }}</h5>
                    <a href="/watch/video/{{ $row->id }}" class="btn btn-outline-primary btn-block">
                        <span class="fas fa-video fa-fw"></span> Watch
                    </a>
                </div>
            </div>
        </div>
        @endforeach

        <div class="col-12">
            {{ $rows->links() }}
        </div>
        @else
        <div class="col-12 text-center mt-5 pt-5">
            <h4 class="text-muted">
                No exhibitors available.
            </h4>
            <p>
                Please check back later
            </p>

        </div>
        @endif
    </div>
</div>

@endsection
