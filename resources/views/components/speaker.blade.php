<div class="member-item set-bg" data-setbg="{{ asset($speaker->picture) }}">
    <div class="mi-social">
        <div class="mi-social-inner bg-gradient">
            @if($speaker->facebook)
                <a href="{{ $speaker->facebook }}"><i class="fa fa-facebook"></i></a>
            @endif
            @if($speaker->instagram)
                <a href="{{ $speaker->instagram }}"><i class="fa fa-instagram"></i></a>
            @endif
            @if($speaker->twitter)
                <a href="{{ $speaker->twitter }}"><i class="fa fa-twitter"></i></a>
            @endif
            @if($speaker->linkedin)
                <a href="{{ $speaker->linkedin }}"><i class="fa fa-linkedin"></i></a>
            @endif
        </div>
    </div>
    <div class="mi-text">
        <h5>{{ $speaker->name }}</h5>
        <span>{{ $speaker->description }}</span>
    </div>
</div>

{{--@dump($speaker->picture)--}}
