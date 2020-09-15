@extends('layout.frontend')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col mb-5">
                <iframe width="100%" height="750" src="https://www.youtube.com/embed/{{ $video->YTID }}" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
            </div>
        </div>
    </div>

@endsection

