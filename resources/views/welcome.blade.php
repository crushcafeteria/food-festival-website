@extends('layout.frontend')

@section('content')

<!-- Hero Section Begin -->
<section class="hero-section set-bg" data-setbg="{{ asset('img/concert-2527495_1280.jpg') }}">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="hero-text">
                    <h2>The IREN Growthpad Virtual Food Festival 2020</h2>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Counter Section Begin -->
<section class="counter-section bg-gradient">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="counter-text">
                    <span>Mark your calendar!</span>
                    <h3>We will be going<br />live in</h3>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="cd-timer" id="countdown">
                    <div class="cd-item">
                        <span></span>
                        <p>Days</p>
                    </div>
                    <div class="cd-item">
                        <span></span>
                        <p>Hours</p>
                    </div>
                    <div class="cd-item">
                        <span></span>
                        <p>Minutes</p>
                    </div>
                    <div class="cd-item">
                        <span></span>
                        <p>Seconds</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Counter Section End -->

<!-- Home About Section Begin -->
<section class="home-about-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 mt-3">
                <div class="ha-pic mt-5">
                    <img src="{{ asset('/img/thanksgiving-3004005_1920.png') }}" alt="">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="ha-text">
                    <h2>About Us</h2>
                    <p>
                        The IREN Growthpad Virtual Food Festival 2020 aims to deliver a great African travel experience
                        through promotion of indigenous foods and music. On September 24-25, 2020, the virtual food
                        festival will feature Kamukunji panel sessions; Festival square for exhibitions, African Recipe
                        Books, outcome of the Chakula Chetu Recipe Challenge 2020 and chat lounge.
                    </p>
                    <p>
                        Join the adventure by clicking the register button! Register
                    </p>

                    <a href="/register" class="btn btn-success">Register Here!</a>
                    <a target="_blank" href="/The IREN Growthpad Virtual Food Festival 2020 Program.pdf"
                        class="btn btn-primary">Our Programme</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Home About Section End -->

<!-- Team Member Section Begin -->
<section class="team-member-section">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>Who’s speaking</h2>
                    <p>
                        You will interact live with the following speakers
                    </p>
                </div>
            </div>
        </div>
    </div>
    @php
    $speakers = \App\Models\Speaker::get();
    @endphp
    @foreach ($speakers as $speaker)
    @include('components.speaker')
    @endforeach

</section>
<!-- Team Member Section End -->

@endsection
