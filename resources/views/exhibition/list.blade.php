@extends('layout.frontend')

@section('content')

<div class="container">
    <div class="row">
        <div class="col mb-5">
            <video playsinline autoplay muted loop poster="http://placehold.it/1000x600?text=Video+is+loading..."
                   src="{{ asset('/videos/festival.mp4') }}" width="100%">
            </video>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <h2>Meet our exhibitors</h2>
            <hr>
        </div>

        @if($rows->count())
            @foreach($rows as $row)
                <div class="col-12 col-lg-4">
                    <div class="card mb-4">
                        <img class="card-img-top" src="/storage/{{ $row->logo }}" alt="{{ $row->name }}">
                        <div class="card-body">
                            <h5 class="card-title">{{ $row->business_name }}</h5>
                            <a href="/exhibitors/{{ $row->id }}" class="btn btn-outline-primary btn-block">Open Booth</a>
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
            <p >
                Please check back later
            </p>

        </div>
        @endif
    </div>
</div>

@endsection

