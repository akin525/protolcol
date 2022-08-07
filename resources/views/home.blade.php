<!doctype html>
<html lang="en" dir="ltr"> <!-- This "landing-app.blade.php" master page is used only for "landing" page content present in "views/livewire" -->

<!-- Mirrored from laravel8.spruko.com/noa/landing by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 05 Aug 2022 16:07:04 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>

    <!-- META DATA -->
    <meta charset="UTF-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Noa - Laravel Bootstrap 5 Admin & Dashboard Template">
    <meta name="author" content="Spruko Technologies Private Limited">
    <meta name="keywords" content="laravel admin template, bootstrap admin template, admin dashboard template, admin dashboard, admin template, admin, bootstrap 5, laravel admin, laravel admin dashboard template, laravel ui template, laravel admin panel, admin panel, laravel admin dashboard, laravel template, admin ui dashboard">

    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('pop.png')}}" />

    <!-- TITLE -->
    <title>Protocol Cheap Data</title>

    <!-- BOOTSTRAP CSS -->
    <link id="style" href="{{asset('assets/plugins/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" />

    <!-- STYLE CSS -->
    <link href="{{asset('assets/css/style.css')}}" rel="stylesheet"/>

    <!--- FONT-ICONS CSS -->
    <link href="{{asset('assets/plugins/icons/icons.css')}}" rel="stylesheet"/>

    <!-- INTERNAL Switcher css -->
    <link href="{{asset('assets/switcher/css/switcher.css')}}" rel="stylesheet" />
    <link href="{{asset('assets/switcher/demo.css')}}" rel="stylesheet" />

</head>

<body class="ltr app horizontal landing-page">
@include('sweetalert::alert')
<!-- Switcher -->
<div class="switcher-wrapper">
    <div class="demo_changer">
        <div class="form_holder sidebar-right1">
            <div class="row">
                <div class="predefined_styles">
                    <div class="swichermainleft text-center">
                        <div class="p-3 d-grid gap-2">
                        </div>
                    </div>
                    <div class="swichermainleft">
                        <h4>protcol</h4>
                        <div class="skin-body">
                            <div class="switch_section">
                                <div class="switch-toggle d-flex">
                                    <span class="me-auto">LTR Version</span>
                                    <p class="onoffswitch2"><input type="radio" name="onoffswitch7"
                                                                   id="myonoffswitch23" class="onoffswitch2-checkbox" checked>
                                        <label for="myonoffswitch23" class="onoffswitch2-label"></label>
                                    </p>
                                </div>
                                <div class="switch-toggle d-flex mt-2">
                                    <span class="me-auto">RTL Version</span>
                                    <p class="onoffswitch2"><input type="radio" name="onoffswitch7"
                                                                   id="myonoffswitch24" class="onoffswitch2-checkbox">
                                        <label for="myonoffswitch24" class="onoffswitch2-label"></label>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swichermainleft">
                        <h4>Light Theme Style</h4>
                        <div class="skin-body">
                            <div class="switch_section">
                                <div class="switch-toggle d-flex">
                                    <span class="me-auto">Light Theme</span>
                                    <p class="onoffswitch2"><input type="radio" name="onoffswitch1"
                                                                   id="myonoffswitch1" class="onoffswitch2-checkbox" checked>
                                        <label for="myonoffswitch1" class="onoffswitch2-label"></label>
                                    </p>
                                </div>
                            </div>
                            <div class="switch_section">
                                <div class="switch-toggle d-flex mt-2">
                                    <span class="me-auto">Dark Theme</span>
                                    <p class="onoffswitch2"><input type="radio" name="onoffswitch1"
                                                                   id="myonoffswitch2" class="onoffswitch2-checkbox">
                                        <label for="myonoffswitch2" class="onoffswitch2-label"></label>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swichermainleft">
                        <h4>Reset All Styles</h4>
                        <div class="skin-body">
                            <div class="switch_section my-4">
                                <button class="btn btn-danger btn-block" onclick="localStorage.clear();
											document.querySelector('html').style = '';
											resetData() ;" type="button">Reset All
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Switcher -->

{{--<a href="javascript:void(0);" class="buy-now">Buy Now</a>--}}

<!-- GLOBAL-LOADER -->
<div id="global-loader">
    <img src="assets/images/loader.svg" class="loader-img" alt="Loader">
</div>
<!-- /GLOBAL-LOADER -->

<!-- PAGE -->
<div class="page">
    <div class="page-main">

        <!-- app-Header -->
        <div class="hor-header header">
            <div class="container main-container">
                <div class="d-flex">
                    <a aria-label="Hide Sidebar" class="app-sidebar__toggle" data-bs-toggle="sidebar" href="javascript:void(0)"></a>
                    <!-- sidebar-toggle-->
                    <a class="logo-horizontal " href="#">
                        <img src="{{asset('pop.png')}}" class="header-brand-img desktop-logo" alt="logo">
                        <img src="{{asset('pop.png')}}" class="header-brand-img light-logo1" alt="logo">
                    </a>
                    <!-- LOGO -->

                    <div class="d-flex order-lg-2 ms-auto header-right-icons">
                        <button class="navbar-toggler navresponsive-toggler d-md-none ms-auto" type="button"
                                data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent-4"
                                aria-controls="navbarSupportedContent-4" aria-expanded="false"
                                aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon fe fe-more-vertical"></span>
                        </button>
                        <div class="navbar navbar-collapse responsive-navbar p-0">
                            <div class="collapse navbar-collapse" id="navbarSupportedContent-4">
                                @if(Auth()->user())
                                    <div class="d-flex order-lg-2 m-4 m-lg-0 m-md-1">
                                        <a href="{{route('login')}}" target="_blank" class="btn btn-pill btn-outline-primary btn-w-md py-2 me-1">
                                            {{Auth::user()->name}}
                                        </a>
                                        <a href="{{route('logout')}}" target="_blank" class="btn btn-pill btn-primary btn-w-md py-2">
                                          Logout
                                        </a>
                                    </div>
                                @else
                                <div class="d-flex order-lg-2 m-4 m-lg-0 m-md-1">
                                    <a href="{{route('login')}}" target="_blank" class="btn btn-pill btn-outline-primary btn-w-md py-2 me-1">
                                       Login
                                    </a>
                                    <a href="{{route('register')}}" target="_blank" class="btn btn-pill btn-primary btn-w-md py-2">
                                        Get Started
                                    </a>
                                </div>
                                    @endif
                            </div>
                        </div>
                    </div>
                    <div class="demo-icon nav-link icon fe-spin">
                        <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path d="M11.5,7.9c-2.3,0-4,1.9-4,4.2s1.9,4,4.2,4c2.2,0,4-1.9,4-4.1c0,0,0-0.1,0-0.1C15.6,9.7,13.7,7.9,11.5,7.9z M14.6,12.1c0,1.7-1.5,3-3.2,3c-1.7,0-3-1.5-3-3.2c0-1.7,1.5-3,3.2-3C13.3,8.9,14.7,10.3,14.6,12.1C14.6,12,14.6,12.1,14.6,12.1z M20,13.1c-0.5-0.6-0.5-1.5,0-2.1l1.4-1.5c0.1-0.2,0.2-0.4,0.1-0.6l-2.1-3.7c-0.1-0.2-0.3-0.3-0.5-0.2l-2,0.4c-0.8,0.2-1.6-0.3-1.9-1.1l-0.6-1.9C14.2,2.1,14,2,13.8,2H9.5C9.3,2,9.1,2.1,9,2.3L8.4,4.3C8.1,5,7.3,5.5,6.5,5.3l-2-0.4C4.3,4.9,4.1,5,4,5.2L1.9,8.8C1.8,9,1.8,9.2,2,9.4l1.4,1.5c0.5,0.6,0.5,1.5,0,2.1L2,14.6c-0.1,0.2-0.2,0.4-0.1,0.6L4,18.8c0.1,0.2,0.3,0.3,0.5,0.2l2-0.4c0.8-0.2,1.6,0.3,1.9,1.1L9,21.7C9.1,21.9,9.3,22,9.5,22h4.2c0.2,0,0.4-0.1,0.5-0.3l0.6-1.9c0.3-0.8,1.1-1.2,1.9-1.1l2,0.4c0.2,0,0.4-0.1,0.5-0.2l2.1-3.7c0.1-0.2,0.1-0.4-0.1-0.6L20,13.1z M18.6,18l-1.6-0.3c-1.3-0.3-2.6,0.5-3,1.7L13.4,21H9.9l-0.5-1.6c-0.4-1.3-1.7-2-3-1.7L4.7,18l-1.8-3l1.1-1.3c0.9-1,0.9-2.5,0-3.5L2.9,9l1.8-3l1.6,0.3c1.3,0.3,2.6-0.5,3-1.7L9.9,3h3.5l0.5,1.6c0.4,1.3,1.7,2,3,1.7L18.6,6l1.8,3l-1.1,1.3c-0.9,1-0.9,2.5,0,3.5l1.1,1.3L18.6,18z"></path></svg>
                    </div>
                </div>
            </div>
        </div>
        <!-- /app-Header -->

        <!--APP-SIDEBAR-->
        <div class="landing-top-header overflow-hidden">
            <div class="top sticky overflow-hidden">

                <!--APP-SIDEBAR-->
                <div class="app-sidebar__overlay" data-bs-toggle="sidebar"></div>
                <div class="app-sidebar bg-transparent horizontal-main">
                    <div class="container">
                        <div class="main-sidemenu navbar px-0">
                            <a class="navbar-brand ps-0 d-none d-lg-block" href="#">
                                <img alt="" height="50" class="logo-2" src="assets/images/protocol%20logo.png">
                                <img alt="" height="50" class="dark-landinglogo" src="assets/images/protocol%20logo.png">
                            </a>
                            <ul class="side-menu">
                                <li class="slide">
                                    <a class="side-menu__item active" data-bs-toggle="slide" href="#home"><span class="side-menu__label">Home</span></a>
                                </li>
                                <li class="slide">
                                    <a class="side-menu__item" data-bs-toggle="slide" href="#Services"><span class="side-menu__label">Services</span></a>
                                </li>
                                <li class="slide">
                                    <a class="side-menu__item" data-bs-toggle="slide" href="#Clients"><span class="side-menu__label">Clients</span></a>
                                </li>
                                <li class="slide">
                                    <a class="side-menu__item" data-bs-toggle="slide" href="#Features"><span class="side-menu__label">Features</span></a>
                                </li>
                                <li class="slide">
                                    <a class="side-menu__item" data-bs-toggle="slide" href="#Faq"><span class="side-menu__label">Support</span></a>
                                </li>
                                <li class="slide">
                                    <a class="side-menu__item" data-bs-toggle="slide" href="#Team"><span class="side-menu__label">Team</span></a>
                                </li>
                                <li class="slide">
                                    <a class="side-menu__item" data-bs-toggle="slide" href="#Contact"><span class="side-menu__label">Contact</span></a>
                                </li>
                            </ul>
                            <div class="header-nav-right d-flex">
                                @if(Auth()->user())
                                <a href="#" target="_blank" class="btn btn-pill btn-outline-primary btn-w-md py-2 me-1 my-auto  d-lg-none d-xl-block d-block">
                                   {{Auth::user()->name}}
                                </a>
                                <a href="{{route('dashboard')}}" target="_blank" class="btn btn-pill btn-primary btn-w-md py-2 my-auto d-lg-none d-xl-block d-block">
                                  Dashboard
                                </a>
                                @else
                                    <a href="{{route('login')}}" target="_blank" class="btn btn-pill btn-outline-primary btn-w-md py-2 me-1 my-auto  d-lg-none d-xl-block d-block">
                                       Login
                                    </a>
                                    <a href="{{route('register')}}" target="_blank" class="btn btn-pill btn-outline-primary btn-w-md py-2 me-1 my-auto  d-lg-none d-xl-block d-block">
                                        Get Started
                                    </a>
                                @endif
                                <div class="demo-icon nav-link icon fe-spin">
                                    <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path d="M11.5,7.9c-2.3,0-4,1.9-4,4.2s1.9,4,4.2,4c2.2,0,4-1.9,4-4.1c0,0,0-0.1,0-0.1C15.6,9.7,13.7,7.9,11.5,7.9z M14.6,12.1c0,1.7-1.5,3-3.2,3c-1.7,0-3-1.5-3-3.2c0-1.7,1.5-3,3.2-3C13.3,8.9,14.7,10.3,14.6,12.1C14.6,12,14.6,12.1,14.6,12.1z M20,13.1c-0.5-0.6-0.5-1.5,0-2.1l1.4-1.5c0.1-0.2,0.2-0.4,0.1-0.6l-2.1-3.7c-0.1-0.2-0.3-0.3-0.5-0.2l-2,0.4c-0.8,0.2-1.6-0.3-1.9-1.1l-0.6-1.9C14.2,2.1,14,2,13.8,2H9.5C9.3,2,9.1,2.1,9,2.3L8.4,4.3C8.1,5,7.3,5.5,6.5,5.3l-2-0.4C4.3,4.9,4.1,5,4,5.2L1.9,8.8C1.8,9,1.8,9.2,2,9.4l1.4,1.5c0.5,0.6,0.5,1.5,0,2.1L2,14.6c-0.1,0.2-0.2,0.4-0.1,0.6L4,18.8c0.1,0.2,0.3,0.3,0.5,0.2l2-0.4c0.8-0.2,1.6,0.3,1.9,1.1L9,21.7C9.1,21.9,9.3,22,9.5,22h4.2c0.2,0,0.4-0.1,0.5-0.3l0.6-1.9c0.3-0.8,1.1-1.2,1.9-1.1l2,0.4c0.2,0,0.4-0.1,0.5-0.2l2.1-3.7c0.1-0.2,0.1-0.4-0.1-0.6L20,13.1z M18.6,18l-1.6-0.3c-1.3-0.3-2.6,0.5-3,1.7L13.4,21H9.9l-0.5-1.6c-0.4-1.3-1.7-2-3-1.7L4.7,18l-1.8-3l1.1-1.3c0.9-1,0.9-2.5,0-3.5L2.9,9l1.8-3l1.6,0.3c1.3,0.3,2.6-0.5,3-1.7L9.9,3h3.5l0.5,1.6c0.4,1.3,1.7,2,3,1.7L18.6,6l1.8,3l-1.1,1.3c-0.9,1-0.9,2.5,0,3.5l1.1,1.3L18.6,18z"></path></svg>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/APP-SIDEBAR-->

            </div>

            <!-- Header Main-->
            <div class="demo-screen-headline main-demo main-demo-1 overflow-hidden pb-0 mb-6" id="home">
                <div class="container px-5 px-md-0">
                    <div class="overflow-hidden">
                        <div class="row">
                            <div class="col-lg-6 text-left pos-relative overflow-hidden p-3">
                                <h1 class="text-shadow text-dark">Choose correct path to buy your cheap data with <span
                                        class="text-primary">PROTOCOL CHAEP DATA</span></h1>
                                <h6 class="mt-3">We Are Here To Serve You Better</h6>
                                <a href="#" class="btn btn-pill btn-primary btn-w-md py-2 me-2 mb-1">Log In<i
                                        class="fe fe-activity ms-2"></i></a>
                                <a href="#" class="btn btn-pill btn-secondary btn-w-md py-2 mb-1">Sign Up<i
                                        class="fe fe-file-text mx-2"></i></a>
                            </div>
                            <div class="col-lg-6 text-left pos-relative overflow-hidden market-image">
                                <img alt="" class="logo-2" src="assets/images/landing/market.png">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header Main Close-->

        </div>
        <!--/APP-SIDEBAR-->

        <!--app-content open-->
        <div class="hor-content main-content mt-0">
            <div class="side-app">
                <!-- CONTAINER -->
                <div class="main-container">


                    <!-- Our motto section-->
                    <div class="section pb-5">
                        <div class="container">
                            <div class="row text-center">
                                <div class="col-lg-12">
                                    <h3 class="header-family">AVALIABLE NETWORK</h3>
                                    <p class="text-default sub-text">We are very reliable and trusted</p>
                                </div>
                            </div>
                            <div class="row mt-5">
                                <div class="col-lg-3 col-sm-6 why-image">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="mb-2">
                                                <img class="img-fluid" src="assets/images/mtn%20logo.png" alt="">
                                            </div>
                                            <p class="why-head mb-2">MTN NETWORK</p>
                                            <p class="fs-13">Both Airtime And Data </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-sm-6 why-image">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="mb-2">
                                                <img class="img-fluid" src="assets/images/Glon.png" alt="">
                                            </div>
                                            <p class="why-head mb-2">GLO NETWWORK</p>
                                            <p class="fs-13">Both Airtime And Data </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-sm-6 why-image">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="mb-2">
                                                <img class="img-fluid" src="assets/images/airtel.png" alt="">
                                            </div>
                                            <p class="why-head mb-2">AIRTEL NETWORK</p>
                                            <p class="fs-13">Both Airtime And Data </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-sm-6 why-image">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="mb-2">
                                                <img class="img-fluid" src="assets/images/9mobile.jpg" alt="">
                                            </div>
                                            <p class="why-head mb-2">9MOBILE NETWORK</p>
                                            <p class="fs-13">Both Airtime And Data </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Our motto section end-->


                    <!-- Customization-->
                    <div class="section customizable pb-6">
                        <div class="container">
                            <div class="row text-center justify-content-center">
                                <div class="col-lg-8 ps-4">
                                    <h3 class="header-family">About Us</h3>
                                    <p class="text-default sub-text mb-0">We offer instant recharge of Airtime,Databundle.</p>
                                </div>
                            </div>
                            <div class="row align-items-center">
                                <div class="col-xl-5 customize-image text-center">
                                    <img class="img-fluid p-5" src="assets/images/landing/customize.png" alt="">
                                </div>
                                <div class="col-xl-7 p-5">
                                    <div class="row">
                                        <div class="col-md-6 col-12">
                                            <div class="d-flex">
														<span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                                   viewBox="0 0 24 24">
																<path fill="#8fbd56"
                                                                      d="M10.3125,16.09375a.99676.99676,0,0,1-.707-.293L6.793,12.98828A.99989.99989,0,0,1,8.207,11.57422l2.10547,2.10547L15.793,8.19922A.99989.99989,0,0,1,17.207,9.61328l-6.1875,6.1875A.99676.99676,0,0,1,10.3125,16.09375Z"
                                                                      opacity=".99" />
																<path fill="#8fbd56" opacity=".2"
                                                                      d="M12,2A10,10,0,1,0,22,12,10.01146,10.01146,0,0,0,12,2Zm5.207,7.61328-6.1875,6.1875a.99963.99963,0,0,1-1.41406,0L6.793,12.98828A.99989.99989,0,0,1,8.207,11.57422l2.10547,2.10547L15.793,8.19922A.99989.99989,0,0,1,17.207,9.61328Z" />
															</svg></span>
                                                <div class="ms-3">
                                                    <p>We're Fast</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="d-flex">
														<span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                                   viewBox="0 0 24 24">
																<path fill="#8fbd56"
                                                                      d="M10.3125,16.09375a.99676.99676,0,0,1-.707-.293L6.793,12.98828A.99989.99989,0,0,1,8.207,11.57422l2.10547,2.10547L15.793,8.19922A.99989.99989,0,0,1,17.207,9.61328l-6.1875,6.1875A.99676.99676,0,0,1,10.3125,16.09375Z"
                                                                      opacity=".99" />
																<path fill="#8fbd56" opacity=".2"
                                                                      d="M12,2A10,10,0,1,0,22,12,10.01146,10.01146,0,0,0,12,2Zm5.207,7.61328-6.1875,6.1875a.99963.99963,0,0,1-1.41406,0L6.793,12.98828A.99989.99989,0,0,1,8.207,11.57422l2.10547,2.10547L15.793,8.19922A.99989.99989,0,0,1,17.207,9.61328Z" />
															</svg></span>
                                                <div class="ms-3">
                                                    <p>100% Secured.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="d-flex">
														<span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                                   viewBox="0 0 24 24">
																<path fill="#8fbd56"
                                                                      d="M10.3125,16.09375a.99676.99676,0,0,1-.707-.293L6.793,12.98828A.99989.99989,0,0,1,8.207,11.57422l2.10547,2.10547L15.793,8.19922A.99989.99989,0,0,1,17.207,9.61328l-6.1875,6.1875A.99676.99676,0,0,1,10.3125,16.09375Z"
                                                                      opacity=".99" />
																<path fill="#8fbd56" opacity=".2"
                                                                      d="M12,2A10,10,0,1,0,22,12,10.01146,10.01146,0,0,0,12,2Zm5.207,7.61328-6.1875,6.1875a.99963.99963,0,0,1-1.41406,0L6.793,12.98828A.99989.99989,0,0,1,8.207,11.57422l2.10547,2.10547L15.793,8.19922A.99989.99989,0,0,1,17.207,9.61328Z" />
															</svg></span>
                                                <div class="ms-3">
                                                    <p>Automated Services</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="d-flex">
														<span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                                   viewBox="0 0 24 24">
																<path fill="#8fbd56"
                                                                      d="M10.3125,16.09375a.99676.99676,0,0,1-.707-.293L6.793,12.98828A.99989.99989,0,0,1,8.207,11.57422l2.10547,2.10547L15.793,8.19922A.99989.99989,0,0,1,17.207,9.61328l-6.1875,6.1875A.99676.99676,0,0,1,10.3125,16.09375Z"
                                                                      opacity=".99" />
																<path fill="#8fbd56" opacity=".2"
                                                                      d="M12,2A10,10,0,1,0,22,12,10.01146,10.01146,0,0,0,12,2Zm5.207,7.61328-6.1875,6.1875a.99963.99963,0,0,1-1.41406,0L6.793,12.98828A.99989.99989,0,0,1,8.207,11.57422l2.10547,2.10547L15.793,8.19922A.99989.99989,0,0,1,17.207,9.61328Z" />
															</svg></span>
                                                <div class="ms-3">
                                                    <p>very reliable and trusted.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Customization close-->

                            <!-- Clients section-->
                            <div class="bg-primary section bg-white" id="Clients">
                                <div class="container">
                                    <div class="row justify-content-center text-center">
                                        <div class="col-lg-8 text-center">
                                            <h3 class="header-family text-white">PROTOCOL CHEAP DATA.</h3>
                                            <p class="sub-text text-white pb-3">We have the best client in 5star company.
                                            </p>
                                        </div>
                                    </div>
                                    <!-- Clients section Close-->

                                    <!-- Features -->
                                    <div class="section bg-white pb-7" id="Features">
                                        <div class="container">
                                            <div class="row text-center justify-content-center">
                                                <div class="col-lg-8 ps-4">
                                                    <h3 class="header-family">Our Services</h3>
                                                    <p class="text-default sub-text">We offer instant recharge of Airtime, Databundle...</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12 col-md-4 p-4 fanimate">
                                                    <div class="features-icon">
                                                        <svg xmlns="http://www.w3.org/2000/svg" data-name="Layer 1" viewBox="0 0 24 24">
                                                            <path fill="#8FBD56"
                                                                  d="M7.00293 8.05957a3 3 0 1 1 3-3A3.00328 3.00328 0 0 1 7.00293 8.05957zm0-4a1 1 0 1 0 1 1A1.0013 1.0013 0 0 0 7.00293 4.05957zM17.00293 12.05957a3 3 0 1 1 3-3A3.00328 3.00328 0 0 1 17.00293 12.05957zm0-4a1 1 0 1 0 1 1A1.0013 1.0013 0 0 0 17.00293 8.05957zM7.00293 22.05957a3 3 0 1 1 3-3A3.00328 3.00328 0 0 1 7.00293 22.05957zm0-4a1 1 0 1 0 1 1A1.0013 1.0013 0 0 0 7.00293 18.05957z" />
                                                            <path fill="#8FBD56" opacity=".3"
                                                                  d="M17.00293,12.05957a2.98168,2.98168,0,0,1-1.15424-.2323,2.00186,2.00186,0,0,1-1.84576,1.2323h-4a3.95376,3.95376,0,0,0-2,.55646V7.87531a2.80519,2.80519,0,0,1-2-.00007v8.3686a2.89912,2.89912,0,0,1,2.1543.048,2.00179,2.00179,0,0,1,1.8457-1.23224h4a4.00437,4.00437,0,0,0,3.90619-3.15509A2.96013,2.96013,0,0,1,17.00293,12.05957Z" />
                                                        </svg>
                                                    </div>
                                                    <h4 class="mx-1">
                                                        AIRTIME
                                                    </h4>
                                                    <p class="text-muted mb-3 mx-1">
                                                        Airtime is a live social space where you can do what you love over video
                                                    </p>
                                                </div>

                                                <div class="col-12 col-md-4 p-4 fanimate">
                                                    <div class="features-icon">
                                                        <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" viewBox="0 0 24 24">
                                                            <path fill="#8FBD56"
                                                                  d="M12,15.89355c-0.17551-0.00004-0.34792-0.04618-0.5-0.13378l-9-5.19727c-0.47839-0.27632-0.64221-0.88814-0.36589-1.36653C2.22187,9.04403,2.34806,8.91784,2.5,8.83008l9-5.19336c0.30964-0.17774,0.69036-0.17774,1,0l9,5.19336c0.4784,0.27632,0.64221,0.88814,0.36589,1.36653c-0.08776,0.15194-0.21395,0.27813-0.36589,0.36589l-9,5.19727C12.34792,15.84737,12.17551,15.89351,12,15.89355z" />
                                                            <path fill="#8FBD56" opacity=".3"
                                                                  d="M21.5,13.43359l-2.48682-1.435L12.5,15.75977c-0.1521,0.08759-0.32452,0.13373-0.5,0.13379c-0.17548-0.00006-0.3479-0.0462-0.5-0.13379L4.98682,11.9986L2.5,13.43359c-0.15192,0.08771-0.27814,0.21393-0.36591,0.36584C1.85779,14.27783,2.02161,14.88965,2.5,15.16602l9,5.19727c0.1521,0.08759,0.32452,0.13373,0.5,0.13379c0.17554-0.00006,0.3479-0.0462,0.5-0.13379l9-5.19727c0.15192-0.08777,0.27814-0.21399,0.36591-0.36591C22.14221,14.32172,21.97839,13.7099,21.5,13.43359z" />
                                                        </svg>
                                                    </div>
                                                    <h4 class="mx-1">
                                                        DATABUNDLE
                                                    </h4>
                                                    <p class="text-muted mb-3 mx-1">
                                                        Get cheap and fast internet for your Smartphone. Choose from a variety of data bundles
                                                    </p>
                                                </div>

                                                <!-- Pricing -->
                                                <div class="section pb-7" id="features">
                                                    <div class="container">
                                                        <div class="row text-center">
                                                            <div class="col-lg-12 ps-3">
                                                                <h3 class="header-family">Network details</h3>
                                                                <p class="text-default sub-text">SERVICES
                                                                    We offer instant recharge of Airtime, Databundle</p>
                                                            </div>
                                                        </div>

                                                        <div class="tab-content">
                                                            <div class="tab-pane pb-0 active show" id="year">
                                                                <div class="row d-flex align-items-center justify-content-center">
                                                                    <div class="col-lg-3 col-sm-8">
                                                                        <div class="card p-3 border-primary pricing-card advanced">
                                                                            <div class="card-header d-block text-justified pt-2">
                                                                                <p class="text-18 font-weight-semibold mb-1">MTN DATA</p>
                                                                                <center>
                                                                                <img class="img-fluid" width="150" src="{{asset('assets/images/mtn%20logo.png')}}"  alt="">
                                                                                </center>
                                                                            </div>
                                                                            <div class="card-body ">
                                                                                <ul class="text-justify pricing-body ps-0">
                                                                                    @foreach($mtn as $m)
                                                                                    <li class="mb-4"><span
                                                                                            class="text-primary me-2 p-1 bg-primary-transparent rounded-pill text-10-f"><i
                                                                                                class="fa fa-check"></i></span> <strong>{{$m->plan}}</strong>
                                                                                        ₦{{$m->tamount}}</li>
                                                                                    @endforeach
                                                                                </ul>
                                                                            </div>
                                                                            <div class="card-footer text-center border-top-0 pt-1">
                                                                                <button type="button" onclick="window.location='{{route('select')}}';" class="btn btn-lg btn-outline-warning btn-block">
                                                                                    <span class="ms-4 me-4">Buy Now</span>
                                                                                </button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-3 col-sm-8">
                                                                        <div class="card p-3 border-primary pricing-card advanced">
                                                                            <div class="card-header d-block text-justified pt-2">
                                                                                <p class="text-18 font-weight-semibold mb-1">GLO DATA</p>
                                                                                <center>
                                                                                <img class="img-fluid" width="150" src="{{asset('assets/images/Glon.png')}}" alt="">
                                                                                </center>
                                                                            </div>
                                                                            <div class="card-body pt-4">
                                                                                <ul class="text-justify pricing-body ps-0">
                                                                                    @foreach($glo as $g)
                                                                                        <li class="mb-4"><span
                                                                                                class="text-primary me-2 p-1 bg-primary-transparent rounded-pill text-10-f"><i
                                                                                                    class="fa fa-check"></i></span> <strong>{{$g->plan}}</strong>
                                                                                            </li>
                                                                                    @endforeach
                                                                                </ul>
                                                                            </div>
                                                                            <div class="card-footer text-center border-top-0 pt-1">
                                                                                <button type="button" onclick="window.location='{{route('select')}}';" class="btn btn-lg btn-outline-info btn-block">
                                                                                    <span class="ms-4 me-4">Buy Now</span>
                                                                                </button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-3 col-sm-8">
                                                                        <div class="card p-3 border-primary pricing-card advanced">
                                                                            <div class="card-header d-block text-justified pt-2">
                                                                                <p class="text-18 font-weight-semibold mb-1">AIRTEL DATA</p>
                                                                                <center>
                                                                                <img class="img-fluid" width="150" src="{{asset('assets/images/airtel.png')}}" alt="">
                                                                                </center>
                                                                            </div>
                                                                            <div class="card-body pt-2">
                                                                                <ul class="text-justify pricing-body ps-0">
                                                                                    @foreach($airtel as $g)
                                                                                    <li class="mb-4"><span
                                                                                            class="text-primary me-2 p-1 bg-primary-transparent rounded-pill text-10-f"><i
                                                                                                class="fa fa-check"></i></span> <strong> {{$g->plan}} </strong>
                                                                                        ₦{{$g->tamount}}</li>
                                                                                    @endforeach
                                                                                </ul>
                                                                            </div>
                                                                            <div class="card-footer text-center border-top-0 pt-1">
                                                                                <button type="button" onclick="window.location='{{route('select')}}';" class="btn btn-lg btn-primary text-white btn-block">
                                                                                    <span class="ms-4 me-4">Buy Now</span>
                                                                                </button>
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                            <div class="col-lg-3 col-sm-8">
                                                                <div class="card p-3 border-primary pricing-card advanced">
                                                                    <div class="card-header d-block text-justified pt-2">
                                                                        <p class="text-18 font-weight-semibold mb-1">9MOBILE DATA</p>
                                                                        <center>
                                                                        <img class="img-fluid" width="150" src="{{asset('assets/images/9mobile.jpg')}}" alt="">
                                                                        </center>
                                                                    </div>
                                                                    <div class="card-body pt-2">
                                                                        <ul class="text-justify pricing-body ps-0">
                                                                            @foreach($eti as $e)
                                                                                <li class="mb-4"><span
                                                                                        class="text-primary me-2 p-1 bg-primary-transparent rounded-pill text-10-f"><i
                                                                                            class="fa fa-check"></i></span> <strong> {{$e->plan}} </strong>
                                                                                   </li>
                                                                            @endforeach
                                                                        </ul>
                                                                    </div>
                                                                    <div class="card-footer text-center border-top-0 pt-1">
                                                                        <button type="button" onclick="window.location='{{route('select')}}';" class="btn btn-lg btn-primary text-white btn-block">
                                                                            <span class="ms-4 me-4">Buy Now</span>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Pricing close -->

                            <!-- Faq's -->
                            <section class="section bg-white" id="Faq">
                                <div class="container">
                                    <div class="row text-center">
                                        <div class="col-lg-12">
                                            <h3 class="header-family">FREQUENTLY ASKED QUESTIONS</h3>
                                            <p>How we can help you ?.</p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="accordion" id="accordionExample">
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="headingOne">
                                                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                                                data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">

                                                            How can i Register?
                                                        </button>
                                                    </h2>
                                                    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                                                         data-bs-parent="#accordionExample">
                                                        <div class="accordion-body text-muted">
                                                            <strong>click on sign Up botton and fill your details in there, then click on register, that how you have an account with us </strong>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="headingTwo">
                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                                                data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                            How can i fund my account ?
                                                        </button>
                                                    </h2>
                                                    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                                                         data-bs-parent="#accordionExample">
                                                        <div class="accordion-body text-muted">
                                                            <strong>Transfer to the account number on your dashboard, and your account will be automatically fund, you don't need to tend reciecpt before it deliver</strong>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="headingThree">
                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                                                data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                            Can i pay without funding my wallet?
                                                        </button>
                                                    </h2>
                                                    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree"
                                                         data-bs-parent="#accordionExample">
                                                        <div class="accordion-body text-muted">
                                                            <strong>Yes, you can buy anything without funding your wallet, all you have to do is have your ATM with you, pick what you want to buy then pay with paystack</strong>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="accordion" id="accordionExample1">
                                                <div class="accordion-item">
                                                    <h2 class="accordion-header" id="headingFour">
                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                                                data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                                            What are the services available on the Protocol cheap data?
                                                        </button>
                                                    </h2>
                                                    <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour"
                                                         data-bs-parent="#accordionExample1">
                                                        <div class="accordion-body text-muted">
                                                            <strong>Airtime VTU
                                                                MTN VTU Airtime, Airtel VTU Airtime, Glo VTU Airtime, 9mobile VTU Airtime
                                                                Data
                                                                MTN Data Bundle, Airtel Data Bundle, Glo Data Bundle, 9mobile Data Bundle
                                                                TV Subscription</strong>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>
                    </div>
                    </section>
                    <!-- Faq's -->

                    <!-- Team -->
                    <div class="section pb-7" id="Team">
                        <div class="container">
                            <div class="row text-center justify-content-center">
                                <div class="col-lg-8 ps-3">
                                    <h3 class="header-family">Team</h3>
                                    <p class="text-default sub-text mb-5">The key to this success is the hardwork and the dedication
                                        that our team put into work.</p>
                                </div>
                            </div>
                            <div class="row text-center team">
                                <div class="col-lg-3 col-sm-6 mb-5">
                                    <div class="bg-white shadow-sm p-5 team-card"><img
                                            src="assets/images/landing/team/1.jpg" alt=""
                                            class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                                        <h5 class="mb-1">AKINLABI IYANU</h5><span class="text-muted">Chief Executive Officer
The owner of PROTOCOL CHEAP DATA</span>
                                        <ul class="social mb-0 list-inline mt-4">
                                            <li class="list-inline-item"><a href="#" class="social"><i class="fe fe-facebook"></i></a>
                                            </li>
                                            <li class="list-inline-item"><a href="#" class="social"><i class="fe fe-instagram"></i></a>
                                            </li>
                                            <li class="list-inline-item"><a href="#" class="social"><i class="fe fe-linkedin"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Team close -->

                <!-- Contact-->
                <div class="bg-image-landing bg-white section" id="Contact">
                    <div class="container">
                        <div class="row text-center justify-content-center">
                            <div class="col-lg-8">
                                <h3 class="header-family">Contact us</h3>
                                <p class="text-default sub-text">Chat with us for immediate expert advice on our products and services. Or you can send an email to our customer support team and we'll get back to you.</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="card mt-3 mb-0">
                                <div class="card-body text-dark px-0 pb-0">
                                    <div class="statistics-info">
                                        <div class="row">
                                            <div class="col-md-6 col-sm-5">
                                                <div class="">
                                                    <div class="text-dark">
                                                        <div class="services-statistics">
                                                            <div class="row text-center">
                                                                <div class="col-xl-6 col-md-6 col-lg-6">
                                                                    <div class="card p-0">
                                                                        <div class="card-body p-0">
                                                                            <div class="row">
                                                                                <div class="col-xl-3 col-md-3">
                                                                                    <div
                                                                                        class="counter-icon border border-primary text-primary">
                                                                                        <i class="fe fe-map-pin"></i>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-xl-6 col-md-9 px-0 mb-1">
                                                                                    <h5 class="mb-1 fw-semibold">Location:</h5>
                                                                                    <p class="fs-13 text-muted">
                                                                                        Modakeke, osun state, Nigeria
                                                                                    </p>
                                                                                </div>
                                                                                <div class="col-xl-3">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-xl-6 col-md-6 col-lg-6">
                                                                    <div class="card p-0">
                                                                        <div class="card-body p-0">
                                                                            <div class="row">
                                                                                <div class="col-xl-3 col-md-3">
                                                                                    <div
                                                                                        class="counter-icon border border-primary text-primary">
                                                                                        <i class="fe fe-headphones"></i>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-xl-6 col-md-9 px-0 mb-1">
                                                                                    <h5 class="mb-1 fw-semibold">Phone & Email</h5>
                                                                                    <p class="mb-0 fs-13 text-muted">09061123233
                                                                                    </p>
                                                                                    <p class="fs-13 text-muted">protocolcheapdata@gmail.com</p>
                                                                                </div>
                                                                                <div class="col-xl-3"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-xl-6 col-md-6 col-lg-6">
                                                                    <div class="card p-0">
                                                                        <div class="card-body p-0">
                                                                            <div class="row">
                                                                                <div class="col-xl-3 col-md-3">
                                                                                    <div
                                                                                        class="counter-icon border border-primary text-primary">
                                                                                        <i class="fe fe-mail"></i>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-xl-6 col-md-9 px-0 mb-1">
                                                                                    <h5 class="mb-1 fw-semibold">Contact</h5>
                                                                                    <p class="mb-0 fs-13 text-muted">Akinlabijoseph14@gmail.com
                                                                                    </p>
                                                                                    <p class="fs-13 text-muted">Akinlabisamson15@gmail.com</p>
                                                                                </div>
                                                                                <div class="col-xl-3"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-xl-6 col-md-6 col-lg-6">
                                                                    <div class="card p-0">
                                                                        <div class="card-body p-0">
                                                                            <div class="row">
                                                                                <div class="col-xl-3 col-md-3">
                                                                                    <div
                                                                                        class="counter-icon border border-primary text-primary">
                                                                                        <i class="fe fe-airplay"></i>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-xl-6 col-md-9 px-0 mb-1">
                                                                                    <h5 class="mb-1 fw-semibold">Working Hours</h5>
                                                                                    <p class="mb-0 fs-13 text-muted">Mon - sat: 12am
                                                                                        - 12pm</p>
                                                                                    <p class="fs-13 text-muted">sun: Holiday
                                                                                    </p>
                                                                                </div>
                                                                                <div class="col-xl-3"></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-7">
                                                <div class="">
                                                    <form class="form-horizontal  m-t-20 row" action="https://laravel8.spruko.com/noa/index">
                                                        <div class="col-xl-6">
                                                            <div class="form-group">
                                                                <input class="form-control" type="text" required=""
                                                                       placeholder="First Name">
                                                            </div>
                                                        </div>
                                                        <div class="col-xl-6">
                                                            <div class="form-group">
                                                                <input class="form-control" type="text" required=""
                                                                       placeholder="Last Name">
                                                            </div>
                                                        </div>
                                                        <div class="col-xl-6">
                                                            <div class="form-group">
                                                                <input class="form-control" type="email" required=""
                                                                       placeholder="Email">
                                                            </div>
                                                        </div>
                                                        <div class="col-xl-6">
                                                            <div class="form-group">
                                                                <input class="form-control" type="number" required=""
                                                                       placeholder="Phone">
                                                            </div>
                                                        </div>
                                                        <div class="col-xl-12">
                                                            <div class="form-group">
                                                                <textarea class="form-control" rows="5">Your Comment</textarea>
                                                            </div>
                                                        </div>
                                                        <div class="">
                                                            <a href="javascript:void(0)"
                                                               class="btn btn-pill btn-primary btn-w-sm py-2  waves-effect waves-light">Submit</a>

                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Contact close-->

                <!--Support-->
                <div class="demo-screen-skin bg-primary">
                    <div class="container text-center text-white">
                        <div id="demo" class="row">
                            <div class="col-lg-6">
                                <div class="feature-1">
                                    <a href="#"></a>
                                    <div class="mb-3">
                                        <i class="si si-earphones-alt"></i>
                                    </div>
                                    <h4 class="fs-25">Join Our Platform</h4>
                                    <p class="mb-1 text-white">Join our network of outstanding entrepreneurs patnering with Protocol Cheap Data .

                                </div>
                            </div>
                            <div class="col-lg-6 mt-5 mt-xl-0 mt-lg-0">
                                <div class="feature-1">
                                    <a href="#"></a>
                                    <div class="mb-3">
                                        <i class="si si-bubbles"></i>
                                    </div>
                                    <h4 class="fs-25">Pre-Sale Questions</h4>
                                    <p class="mb-1 text-white">Please feel free to ask any questions before making the purchase.</p>
                                    <h6 class="mb-0">Ask : <a class="text-dark"
                                                              href="mailto:support@spruko.com">09061123233</a></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Support close-->


            </div>
        </div>
        <!-- CONTAINER CLOSED -->
    </div>
</div>

<!-- </Footer> -->
<div class="demo-footer">
    <div class="container">
        <div class="card mb-0 px-0">
            <div class="card-body px-0">
                <div class="top-footer">


                </div>
            </div>
            <footer class="main-footer px-0 pb-0">
                <div class="row ">
                    <div class="col-xl-8 col-lg-12 col-md-12 footer1">Copyright © 2022 <a
                            href="javascript:void(0)">PROTOCOL CHEAP DATA</a>. Designed with web designer<span
                            class="fa fa-heart text-danger"></span> by <a href="javascript:void(0)"> PRINCIPAL </a>
                    </div>

                </div>
            </footer>
        </div>
    </div>
</div>
</div>
<!-- Footer close -->

</div>

<!-- BACK-TO-TOP -->
<a href="#top" id="back-to-top"><i class="fa fa-long-arrow-up"></i></a>

<!-- JQUERY JS -->
<script src="{{asset('assets/plugins/jquery/jquery.min.js')}}"></script>

<!-- BOOTSTRAP JS -->
<script src="{{asset('assets/plugins/bootstrap/js/popper.min.js')}}"></script>
<script src="{{asset('assets/plugins/bootstrap/js/bootstrap.min.js')}}"></script>

<!-- Owl carousel JS -->
<script src="{{asset('assets/plugins/company-slider/slider.js')}}"></script>
<script src="{{asset('assets/plugins/owl-carousel/owl.carousel.js')}}"></script>

<!-- landing JS -->
<script src="{{asset('assets/js/landing.js')}}"></script>

</body>

<!-- Mirrored from laravel8.spruko.com/noa/landing by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 05 Aug 2022 16:07:26 GMT -->
</html>

