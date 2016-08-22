%{--<header class="topnavbar-wrapper">--}%
%{--<!-- START Top Navbar-->--}%
%{--<nav role="navigation" class="navbar topnavbar">--}%
%{--<!-- START navbar header-->--}%
%{--<div class="container-fluid">--}%
%{--<div class="navbar-header">--}%

%{--<a href="${createLink(controller: "url", action: "homepage")}"><h3>RSSFEEDER</h3></a>--}%
%{--</div>--}%

%{--<!-- END navbar header-->--}%
%{--<!-- START Nav wrapper-->--}%

%{--<!-- START Left navbar-->--}%
%{--<form class="nav navbar-nav navbar-right">--}%

%{--<input type="text" class="form-control" placeholder="Search">--}%

%{--<button type="submit" class="btn btn-default">Submit</button>--}%
%{--</form>--}%
%{--</div>--}%
%{--</nav>--}%
%{--</header>--}%
<!-- END Top Navbar-->
%{--</header>--}%
<header class="topnavbar-wrapper">
    <!-- START Top Navbar-->
    <div class="container-fluid">
        <div class="row">
    <nav role="navigation" class="navbar topnavbar">

    <!-- START navbar header-->
        <div class="navbar-header ">
            <a href="${createLink(action:"index",controller:"landing")}" class="navbar-brand">
                <div class="brand">
                 <h3>  RSSFEEDER</h3>
                </div>
            </a>
        </div>

        <div class="nav-wrapper">
            <ul class="nav navbar-nav navbar-right">
                <!-- Search icon-->
                <li>
                    <a href="#" data-search-open="">
                        <em class="icon-magnifier"></em>
                    </a>
                </li>
            </ul>
        </div>

        <!-- START Search form-->
        <form role="search" action="search.html" class="navbar-form">
            <div class="form-group has-feedback">
                <input type="text" placeholder="Type and hit enter ..." class="form-control">
                <div data-search-dismiss="" class="fa fa-times form-control-feedback"></div>
            </div>
            <button type="submit" class="hidden btn btn-default">Submit</button>
        </form>

    </nav>
        </div></div>
</header>