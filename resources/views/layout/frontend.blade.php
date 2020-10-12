<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="{{ config('app.name') }}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ config('app.name') }}</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:400,500,600,700,800,900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/css/style.css" type="text/css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
@include('components.nav')
<!-- Header End -->



        @yield('content')


        <!-- Contact Section Begin -->
<section class="contact-section spad">
    <div class="container">

        <div class="row">
            <div class="col-12">

            </div>
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <h2 class="text-center">Chat Lounge</h2>
                    <p class="text-center">We will be happy to help!</p>
                </div>
                <div class="cs-text">
                    <ul>
                        <li>
                            <span>Phone:</span>
                            +254 798 802 824
                        </li>
                        <li>
                            <span>Email:</span>
                            growthpad@irenkenya.com
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Contact Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-text">
                        <div class="copyright-text">
                            <p style="color: #a0a1b5 !important;">
                                &copy;<script>document.write(new Date().getFullYear());</script> IREN Growthpad
                                <br>All rights reserved | Designed by <a href="https://sodium.co.ke" target="_blank">Sodium Africa</a>
                            </p>
                        </div>
                        <div class="ft-social">
                            <a target="_blank" href="https://web.facebook.com/IRENGrowthpad"><i class="fa fa-facebook"></i></a>
                            <a target="_blank" href="https://twitter.com/IRENGrowthpad"><i class="fa fa-twitter"></i></a>
                            <a target="_blank" href="https://www.linkedin.com/company/inter-region-economic-network-iren-kenya-/"><i class="fa fa-linkedin"></i></a>
                            <a target="_blank" href="https://www.youtube.com/channel/UC-4mGDBbhVL5UtKXQpL_pnw"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery.magnific-popup.min.js"></script>
    <script src="/js/jquery.countdown.min.js"></script>
    <script src="/js/jquery.slicknav.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/main.js"></script>
</body>

</html>
