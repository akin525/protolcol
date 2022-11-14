<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>Protocolcheapdata Nig | Data Refill, Airtime, Cable TV, Electricity Subscription</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" type="image/x-icon" href="https://www.protocolcheapdata.com.ng/pop.png" />

        <!-- BOOTSTRAP CSS -->
        <link id="style" href="{{asset('assets/plugins/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" />

        <!-- STYLE CSS -->
        <link href="{{asset('assets/css/style.css')}}" rel="stylesheet" />
        <link href="{{asset('assets/css/skin-modes.css')}}" rel="stylesheet" />



        <!--- FONT-ICONS CSS -->
        <link href="{{asset('assets/plugins/icons/icons.css')}}" rel="stylesheet" />

        <!-- INTERNAL Switcher css -->
        <link href="{{asset('assets/switcher/css/switcher.css')}}" rel="stylesheet">
        <link href="{{asset('assets/switcher/demo.css')}}" rel="stylesheet">

        <!-- Scripts -->
        <script src="{{ mix('js/app.js') }}" defer></script>
        <script>
            const rmCheck = document.getElementById("rememberMe"),
                emailInput = document.getElementById("email");

            if (localStorage.checkbox && localStorage.checkbox !== "") {
                rmCheck.setAttribute("checked", "checked");
                emailInput.value = localStorage.username;
            } else {
                rmCheck.removeAttribute("checked");
                emailInput.value = "";
            }

            function lsRememberMe() {
                if (rmCheck.checked && emailInput.value !== "") {
                    localStorage.username = emailInput.value;
                    localStorage.checkbox = rmCheck.value;
                } else {
                    localStorage.username = "";
                    localStorage.checkbox = "";
                }
            }
        </script>
        <!-- jQuery -->

    </head>


    <body class="ltr login-img" onload="checkbiometric();" >
        <div class="font-sans text-gray-900 antialiased">
            {{ $slot }}
        </div>

        <!-- JQUERY JS -->
        <script src="{{asset('assets/plugins/jquery/jquery.min.js')}}"></script>

        <!-- BOOTSTRAP JS -->
        <script src="{{asset('assets/plugins/bootstrap/js/popper.min.js')}}"></script>
        <script src="{{asset('assets/plugins/bootstrap/js/bootstrap.min.js')}}"></script>

        <!-- Perfect SCROLLBAR JS-->
        <script src="{{asset('assets/plugins/p-scroll/perfect-scrollbar.js')}}"></script>

        <!-- STICKY JS -->
        <script src="{{asset('assets/js/sticky.js')}}"></script>



        <!-- COLOR THEME JS -->
        <script src="{{asset('assets/js/themeColors.js')}}"></script>

        <!-- CUSTOM JS -->
        <script src="{{asset('assets/js/custom.js')}}"></script>

        <!-- SWITCHER JS -->
        <script src="{{asset('assets/switcher/js/switcher.js')}}"></script>
        <style>
            .float{
                position:fixed;
                width:60px;
                height:60px;
                bottom:40px;
                left:40px;
                background-color:#25d366;
                color:#FFF;
                border-radius:50px;
                text-align:center;
                font-size:30px;
                box-shadow: 2px 2px 3px #999;
                z-index:100;
            }

            .my-float{
                margin-top:16px;
            }
        </style>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <a href="http://wa.me/2349061123233" class="float" target="_blank">
            <i class="fa fa-whatsapp my-float"></i>
        </a>
    </body>

</html>
