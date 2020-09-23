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
            <div class="col-9">
                <h2>Meet our exhibitors</h2>
            </div>
            <div class="col-3">
                <select class="form-control form-control-lg float-right pull-right">
                    <option value="">Choose a filter</option>
                    <option value="ALL">Show Everything</option>
                    <option value="CORPORATE">Corporate</option>
                    <option value="RECIPE_PUBLICATIONS">Recipe Publications</option>
                    <option value="CHAKULA_CHALLENGE">Chakula Challenge</option>
                    <option value="FOOD_VLOGGER">Food Vlogger</option>
                </select>
            </div>
            <div class="col-12">
                <hr>
            </div>

        </div>

        <div class="row">
            @if($rows->count())
                @foreach($rows as $row)
                    <div class="col-12 col-lg-4">
                        <div class="card mb-4">
                            <img class="card-img-top" src="{{ $row->logo }}" alt="{{ $row->name }}">
                            <div class="card-body">
                                <h5 class="card-title">{{ $row->business_name }}</h5>
                                <a href="/exhibitors/{{ $row->id }}" class="btn btn-outline-primary btn-block">Open
                                    Booth</a>
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

    <script>
        $(function () {
            $('select').change(function () {
                location.href = '/exhibitors?type=' + $(this).val()
            })
        })
    </script>

@endsection

