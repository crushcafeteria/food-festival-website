@extends('layout.frontend')

@section('content')

<div class="col-12">
    <video id="video" controls="" preload="none" poster="http://media.w3.org/2010/05/sintel/poster.png" style="width:100%; height:100%">
        <source id="mp4" src="http://media.w3.org/2010/05/sintel/trailer.mp4" type="video/mp4">
        <p>Your user agent does not support the HTML5 Video element.</p>
      </video>
</div>

<div class="container">
    <h1>Hello World</h1>
</div>

@endsection
