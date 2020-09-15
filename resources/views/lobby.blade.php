@extends('layout.frontend')

@section('content')
    <video playsinline autoplay muted loop poster="http://placehold.it/1000x600?text=Video+is+loading..."
    src="{{ asset('/videos/lobby.mp4') }}">
    </video>
<style>
    video {
        object-fit: cover;
        width: 100%;
        top: 0;
        left: 0;
    }
</style>
@endsection
