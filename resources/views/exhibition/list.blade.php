@extends('layout.frontend')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-12">
            <h2>Meet our exhibitors</h2>
            <hr>
        </div>

        @if($rows->count())
            @foreach($rows as $row)
                <div class="col-12 col-lg-4">
                    <div class="card mb-4">
                        <img class="card-img-top" src="{{ $row->logo }}" alt="{{ $row->name }}">
                        <div class="card-body">
                            <h5 class="card-title">{{ $row->business_name }}</h5>
                            <a href="/exhibitors/{{ $row->id }}/display" class="btn btn-outline-primary btn-block">Open Booth</a>
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

