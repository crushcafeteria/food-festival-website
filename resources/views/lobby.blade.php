@extends('layout.frontend')

@section('content')
    <video playsinline autoplay muted loop poster="http://placehold.it/1000x600?text=Video+is+loading..."
    src="https://css-tricks-post-videos.s3.us-east-1.amazonaws.com/blurry-trees.mov">
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
