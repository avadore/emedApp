<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'eMed') }}</title>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script>

    </script>


    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
    <link href="css/app.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">


   
    <!-- Styles -->
    @include('style.bootstrapCss')
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var elems = document.querySelectorAll('select');
            var instances = M.FormSelect.init(elems, options);
        });
        var instance = M.FormSelect.getInstance(elem);


    </script>

</head>

<body onload="open()" style="background-color:#fbfbfe;">
    <div id="app">
                <main class="py-4">
            @yield('content')
        </main>
    </div>
    @include('style.bootstrapJs')
    <script src="{{ asset('lottie\lottie-player.js') }}" defer></script>
    <script src="{{ asset('lottie\lottie-player.js') }}" defer></script>

</body>
</html>
