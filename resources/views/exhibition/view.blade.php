@extends('layout.frontend')

@section('content')

    <div class="container">
        <div class="row">

            <div class="col-12 mb-5 mt-5">
                <div class="row">
                    <div class="col-1 align-items-center pt-3">
                        <img src="{{ $exhibitor->logo }}" class="img-fluid">
                    </div>
                    <div class="col-11">
                        <h1 class="mt-1">{{ $exhibitor->business_name }}</h1>
                        @php
                            $val = json_decode($exhibitor->profile);
                            $val = $val[0]->download_link;
                            $val = str_replace('\\', '/', $val);
                            $val = asset('storage/' . $val);
                        @endphp
                        <a target="_blank" href="{{ $val }}">Download
                            business profile</a>
                    </div>
                </div>
            </div>

            @if($exhibitor->banner)
                <div class="col-12">
                    <img src="{{ $exhibitor->banner }}" class="img-fluid">
                </div>
            @endif

            <div class="col-md-12 mt-5">
                <object data="{{ $val }}" type="application/pdf" height="800px"
                        width="100%">
                    <iframe src="{{ $val }}&embedded=true"></iframe>
                </object>
            </div>


        </div>
    </div>
@endsection
