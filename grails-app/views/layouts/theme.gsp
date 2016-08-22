<!DOCTYPE html>
<html lang="en">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="Bootstrap Admin App + jQuery">
    <meta name="keywords" content="app, responsive, jquery, bootstrap, dashboard, admin">
    <title>Angle - Bootstrap Admin Template</title>
    <!-- =============== VENDOR STYLES ===============-->
    <!-- FONT AWESOME-->
%{--<link rel="stylesheet" href="../vendor/fontawesome/css/font-awesome.min.css">--}%

%{--<link rel="stylesheet" href="${resource(dir: "theme/backend-jquery/vendor/fontawesome/css", file: "font-awesome.min.css")}"/>--}%
%{--<link rel="stylesheet" href="${resource(dir: "theme/backend-jquery/vendor/fontawesome/fonts", file: "font-awesome.min.css")}"/>--}%
<link src="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">



<!-- SIMPLE LINE ICONS-->
%{--<link rel="stylesheet" href="../vendor/simple-line-icons/css/simple-line-icons.css">--}%
%{--<link rel="stylesheet" href="${resource(dir: "theme/backend-jquery/vendor/simple-line-icons/css", file: "simple-line-icons.css")}"/>--}%
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.3.2/css/simple-line-icons.min.css"/>
<!-- ANIMATE.CSS-->
%{--<link rel="stylesheet" href="../vendor/animate.css/animate.min.css">--}%

<link rel="stylesheet" href="${resource(dir: "theme/backend-jquery/vendor/animate.css", file: "animate.min.css")}"/>

<!-- WHIRL (spinners)-->
%{--<link rel="stylesheet" href="../vendor/whirl/dist/whirl.css">--}%

<link rel="stylesheet" href="${resource(dir: "theme/backend-jquery/vendor/whirl/dist", file: "whirl.css")}"/>

<!-- =============== PAGE VENDOR STYLES ===============-->
<!-- =============== BOOTSTRAP STYLES ===============-->
%{--<link rel="stylesheet" href="css/bootstrap.css" id="bscss">--}%

<link rel="stylesheet" href="${resource(dir: "theme/backend-jquery/app/css", file: "bootstrap.css")}" id="bscss"/>

<!-- =============== APP STYLES ===============-->
%{--<link rel="stylesheet" href="css/app.css" id="maincss">--}%

<link rel="stylesheet" href="${resource(dir: "theme/backend-jquery/app/css", file: "app.css")}" id="maincss"/>

<script src="${resource(dir: "theme/backend-jquery/vendor/modernizr", file: "modernizr.custom.js")}"></script>
<!-- MATCHMEDIA POLYFILL-->
%{--<script src="../vendor/matchMedia/matchMedia.js"></script>--}%
<script src="${resource(dir: "theme/backend-jquery/vendor/matchMedia", file: "matchMedia.js")}"></script>

<!-- JQUERY-->
%{--<script src="../vendor/jquery/dist/jquery.js"></script>--}%
<script src="${resource(dir: "theme/backend-jquery/vendor/jquery/dist", file: "jquery.js")}"></script>

<!-- BOOTSTRAP-->
%{--<script src="../vendor/bootstrap/dist/js/bootstrap.js"></script>--}%
<script src="${resource(dir: "theme/backend-jquery/vendor/bootstrap/dist/js", file: "bootstrap.js")}"></script>

<!-- STORAGE API-->
%{--<script src="../vendor/jQuery-Storage-API/jquery.storageapi.js"></script>--}%
<script src="${resource(dir: "theme/backend-jquery/vendor/jQuery-Storage-API", file: "jquery.storageapi.js")}"></script>

<!-- JQUERY EASING-->
%{--<script src="../vendor/jquery.easing/js/jquery.easing.js"></script>--}%
<script src="${resource(dir: "theme/backend-jquery/vendor/jquery.easing/js", file: "jquery.easing.js")}"></script>

<!-- ANIMO-->
%{--<script src="../vendor/animo.js/animo.js"></script>--}%
<script src="${resource(dir: "theme/backend-jquery/vendor/animo.js", file: "animo.js")}"></script>

<!-- SLIMSCROLL-->
%{--<script src="../vendor/slimScroll/jquery.slimscroll.min.js"></script>--}%
<script src="${resource(dir: "theme/backend-jquery/vendor/slimScroll", file: "jquery.slimscroll.min.js")}"></script>

<!-- SCREENFULL-->
%{--<script src="../vendor/screenfull/dist/screenfull.js"></script>--}%
<script src="${resource(dir: "theme/backend-jquery/vendor/screenfull/dist", file: "screenfull.js")}"></script>

<!-- LOCALIZE-->
%{--<script src="../vendor/jquery-localize-i18n/dist/jquery.localize.js"></script>--}%
<script src="${resource(dir: "theme/backend-jquery/vendor/jquery-localize-i18n/dist", file: "jquery.localize.js")}"></script>

<!-- RTL demo-->
%{--<script src="js/demo/demo-rtl.js"></script>--}%
<script src="${resource(dir: "theme/backend-jquery/app/js/demo", file: "demo-rtl.js")}"></script>

<!-- =============== PAGE VENDOR SCRIPTS ===============-->
<!-- =============== APP SCRIPTS ===============-->
%{--<script src="js/app.js"></script>--}%
<script src="${resource(dir: "theme/backend-jquery/app/js", file: "app.js")}"></script>

</head>

<body>
<div class="wrapper">

    <g:render template="/templates/headerFromTheme"></g:render>
    <!-- sidebar-->
    <aside class="aside">
        <!-- START Sidebar (left)-->
        <div class="aside-inner">
            <nav data-sidebar-anyclick-close="" class="sidebar">
                <!-- START sidebar nav-->
                <ul class="nav">

                    <li class="nav-heading ">
                        <span data-localize="sidebar.heading.HEADER"><h3>Url</h3></span>
                    </li>

                    <li class=" ">

                        <a href="${createLink(action: "index", controller: "url")}" title="Dashboard">
                            %{--<div class="pull-right label label-info"></div>--}%
                            <em class="icon-speedometer"></em>
                            <span data-localize="sidebar.nav.DASHBOARD">Insert Url

                                <div class="pull-right "><span class="glyphicon glyphicon-plus"></span></div></span>
                        </a>

                    </li>

                    <li class=" ">
                        <a href="${createLink(action: "showUrl", controller: "url")}" title="Widgets">
                            %{--<div class="pull-right label label-success">30</div>--}%
                            <em class="icon-grid"></em>
                            <span data-localize="sidebar.nav.WIDGETS">Show Url<div class="pull-right "><span
                                    class="glyphicon glyphicon-list-alt"></span></div></span>
                        </a>
                    </li>
                    %{--<li class=" ">--}%
                        %{--<a href="${createLink(action: "showUrl", controller: "url")}" title="Widgets">--}%
                            %{--<div class="pull-right label label-success">30</div>--}%
                            %{--<em class="icon-grid"></em>--}%
                            %{--<span data-localize="sidebar.nav.WIDGETS">Update Url<div class="pull-right "><span--}%
                                    %{--class="glyphicon glyphicon-edit"></span></div></span>--}%
                        %{--</a>--}%
                    %{--</li>--}%

                    %{--<li class="nav-heading ">--}%
                        %{--<span data-localize="sidebar.heading.COMPONENTS"><h3>Feeds</h3></span>--}%
                    %{--</li>--}%
                    %{--<li class=" ">--}%

                        %{--<a href="${createLink(action: "allList", controller: "feed")}" title="Dashboard">--}%
                            %{--<div class="pull-right label label-info"></div>--}%
                            %{--<em class="icon-speedometer"></em>--}%
                            %{--<span data-localize="sidebar.nav.DASHBOARD">View All Feeds--}%

                                %{--<div class="pull-right "><span class="glyphicon glyphicon-plus"></span></div></span>--}%
                        %{--</a>--}%

                    %{--</li>--}%

                </ul>
                <!-- END sidebar nav-->
            </nav>
        </div>
        <!-- END Sidebar (left)-->
    </aside>


    <!-- Main section-->
    <section >
        <!-- Page content-->
        <div class="content-wrapper" >

            <g:layoutBody/>
        </div>

    </section>
    <!-- Page footer-->
    <footer>
        <span>&copy; 2016 - Angle</span>
    </footer>
</div>
<!-- =============== VENDOR SCRIPTS ===============-->
<!-- MODERNIZR-->
%{--<script src="../vendor/modernizr/modernizr.custom.js"></script>--}%

</body>

</html>