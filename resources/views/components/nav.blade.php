<header class="header-section">
    <div class="container">
        <div class="logo" style="padding-top: 15px !important;">
            <a href="/">
                <img src="/img/LOGO (1).jpg" width="60">
            </a>
        </div>
        <div class="nav-menu">
            <nav class="mainmenu mobile-menu">
                <ul>
                    <li>
                        <a href="/">Home</a>
                    </li>
                    <li>
                        <a href="/lobby">Lobby</a>
                    </li>
                    <li>
                        <a href="/exhibitors">Festival Square</a>
                    </li>
                    <li>
                        <a href="/watch">Kamukunji</a>
                    </li>
                    @auth
                        <li>
                            <a href="/watch">Watch Live</a>
                        </li>
                    @endauth
                </ul>
            </nav>
            @auth
                <a href="/logout" class="primary-btn top-btn"><i class="fa fa-user-circle"></i>
                    Logout, {{ explode(' ', auth()->user()->name)[0] }}</a>
            @endauth
            @unless(auth()->check())
                <a href="/watch" class="primary-btn top-btn"><i class="fa fa-play-circle"></i>
                    Watch Live</a>

            @endunless
        </div>
        <div id="mobile-menu-wrap"></div>
    </div>
</header>
