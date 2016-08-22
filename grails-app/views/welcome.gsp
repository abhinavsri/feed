<%@ page import="feed.Feed" %>


<html>
<head>
    <meta name="layout" content="theme">
    <title>RSS FEEDER</title>

    <link rel="stylesheet" href="${resource(dir: "css", file: "bootstrap.min.css")}"/>
    <script src="${resource(dir: "js", file: "bootstrap.min.js")}"></script>
    <style>

    .panel-login {
        border-color: #ccc;
        -webkit-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
        -moz-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
        box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
    }

    .panel-heading {
        padding: 10px 15px;
        border-bottom: 1px solid transparent;
        border-top-left-radius: 3px;
        border-top-right-radius: 3px;
    }

    .panel-login > .panel-heading a.active {
        color: #029f5b;
        font-size: 18px;
    }

    </style>
</head>

<body>
<div class="container">

    <div class="col-md-10 col-lg-10 col-sx-10 col-sm-10 ">
        <div class="row">
            <g:each in="${postList}" var="post">
                <div class="panel panel-login">
                    <div class="panel-heading" style="background-color: #b4bcbd;;" data-toggle="collapse"
                         data-target="#collapseBody">
                        <div class="row">
                            <div class="col-xs-9 col-sm-9 col-lg-9 col-sm-9 col-md-9">
                                <h3 class="panel-title" style="color:#122b40">
                                    ${post.title}
                                </h3>
                            </div>

                            <div class="col-xs-3 col-sm-3 col-lg-3 col-sm-3 col-md-3">
                                <h6 class="panel-title">
                                    ${feed.Feed.convertDateToStrig(post.pubDate)}
                                </h6>
                            </div>
                        </div>
                    </div>

                    <div class="panel-body " style="background-color: ghostwhite; " id="collapseBody">
                        <div class="row">
                            <div class="col-md-10 col-lg-10 col-xs-10 col-sm-10 col-md-offset-1 col-sm-offset-1 col-lg-offset-1 col-xs-offset-1"
                                 style="margin-bottom: 20px" ;>
                                <label style="font-family: serif; color:#adadad">${raw(post.content)}</label>
                            </div></div>

                        <div class="row">
                            <div class="col-lg-2">
                                <a href="${post.link}" target="_blank" role="button" role="button"
                                   class="btn btn-info"><h4>Read more</h4></a>
                            </div></div>
                    </div>

                </div>

            </g:each>
        </div>

        <div class="pagination">
            <g:paginate total="${postCount ?: 0}" controller="feed" max="2" action="list" prev="previous" next="next"
                        params="${[urlId: urlId]}"/>
        </div>
    </div>

    <div class="col-lg-2 col-sm-2 col-xs-2 col-md-2">
        <a href="${createLink(controller: "feed", action: "rss", params: [id: urlId])}" role="button"
           class="btn btn-default btn-lg">Refresh</a></div>

</div>

</body>
</html>