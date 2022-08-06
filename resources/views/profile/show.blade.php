@include('layouts.sidebar')

<div class="app-content main-content mt-0">
    <div class="side-app">

        <!-- CONTAINER -->
        <div class="main-container container-fluid">


            <!-- PAGE-HEADER -->
            <div class="page-header">
                <div>
                    <h1 class="page-title">Dashboard</h1>
                </div>
                <div class="ms-auto pageheader-btn">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                    </ol>
                </div>
            </div>
            <!-- PAGE-HEADER END -->
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Profile') }}
        </h2>
    </x-slot>

    <div>
        <div class="max-w-7xl mx-auto py-10 sm:px-6 lg:px-8">
            @if (Laravel\Fortify\Features::canUpdateProfileInformation())
                @livewire('profile.update-profile-information-form')

                <x-jet-section-border />
            @endif
                <br>
                <style>
                    img {
                        max-width: 100%;
                        height: auto;
                    }
                </style>
                <div class="card-body">
                    <div class="center">
                        <img    src="{{asset('images/banner.jpg')}}" alt="#" />
                    </div>
                </div>

                <br>

                <style>
                    .tooltip {
                        position: relative;
                        display: inline-block;
                    }

                    .tooltip .tooltiptext {
                        visibility: hidden;
                        width: 140px;
                        background-color: #555;
                        color: #fff;
                        text-align: center;
                        border-radius: 6px;
                        padding: 5px;
                        position: absolute;
                        z-index: 1;
                        bottom: 150%;
                        left: 50%;
                        margin-left: -75px;
                        opacity: 0;
                        transition: opacity 0.3s;
                    }

                    .tooltip .tooltiptext::after {
                        content: "";
                        position: absolute;
                        top: 100%;
                        left: 50%;
                        margin-left: -5px;
                        border-width: 5px;
                        border-style: solid;
                        border-color: #555 transparent transparent transparent;
                    }

                    .tooltip:hover .tooltiptext {
                        visibility: visible;
                        opacity: 1;
                    }

                </style>
                <div class="card">
                    <div class="card-body">
                        <h6>Your Referal Link</h6>
                        <!-- The text field -->
                        <input id="myInput" type="text" class="form-control" value="https://mobile.primedata.com.ng/register?refer={{ Auth::user()->username}}" >

                        <!-- The button used to copy the text -->
                        <button class="btn-info" onclick="myFunction()">Copy Referal Link</button>
                    </div>
                </div>


                <script>
                    function myFunction() {
                        /* Get the text field */
                        var copyText = document.getElementById("myInput");

                        /* Select the text field */
                        copyText.select();
                        copyText.setSelectionRange(0, 99999); /* For mobile devices */

                        /* Copy the text inside the text field */
                        navigator.clipboard.writeText(copyText.value);

                        /* Alert the copied text */
                        alert( copyText.value);
                    }
                </script>
                <br>
            @if (Laravel\Fortify\Features::enabled(Laravel\Fortify\Features::updatePasswords()))
                <div class="mt-10 sm:mt-0">
                    @livewire('profile.update-password-form')
                </div>

                <x-jet-section-border />
            @endif

            @if (Laravel\Fortify\Features::canManageTwoFactorAuthentication())
                <div class="mt-10 sm:mt-0">
                    @livewire('profile.two-factor-authentication-form')
                </div>

                <x-jet-section-border />
            @endif

            <div class="mt-10 sm:mt-0">
                @livewire('profile.logout-other-browser-sessions-form')
            </div>

            @if (Laravel\Jetstream\Jetstream::hasAccountDeletionFeatures())
                <x-jet-section-border />

                <div class="mt-10 sm:mt-0">
                    @livewire('profile.delete-user-form')
                </div>
            @endif
        </div>
    </div>
</x-app-layout>

            @stack('modals')

            @livewireScripts
        </div>
    </div>
</div>
<script type="text/javascript">
    (function() {
        var options = {
            whatsapp: "+2348103153004", // WhatsApp number
            call_to_action: "Message us", // Call to action
            position: "left", // Position may be 'right' or 'left'
        };
        var proto = document.location.protocol,
            host = "whatshelp.io",
            url = proto + "//static." + host;
        var s = document.createElement('script');
        s.type = 'text/javascript';
        s.async = true;
        s.src = url + '/widget-send-button/js/init.js';
        s.onload = function() {
            WhWidgetSendButton.init(host, proto, options);
        };
        var x = document.getElementsByTagName('script')[0];
        x.parentNode.insertBefore(s, x);
    })();
</script>
