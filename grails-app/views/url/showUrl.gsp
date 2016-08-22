<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme">
    <title>URL</title>
    %{--<link rel="stylesheet" href="${resource(dir: "css", file: "bootstrap.min.css")}"/>--}%
    %{--<script src="${resource(dir: "js", file: "bootstrap.min.js")}"></script>--}%
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-lg-9 col-md-9 col-xs-9 col-sm-9">
            <div class="panel panel-default">

                <div class="panel-body">
                    <div class="table-responsive table-striped">
                        <table class="table table-cell">
                            <thead>
                            <tr>
                                <th>Rss Url</th>
                                <th>Rss Name</th>
                                <th>View Feed</th>
                                <th>Delete</th>
                                <th>Update</th>
                            </thead>
                        </tr>
                            <tr>
                                <g:if test='${flash.message}'>
                                    <div class="alert alert-warning">
                                        <a href="#" class="close" data-dismiss="alert">&times;</a>
                                        <strong>Warning!</strong> Kindly enter the URL.
                                    </div>
                                </g:if></tr>
                            <g:each in="${url}" status="i" var="a">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                                    <td>${a.rssUrl}</td>
                                    <td>${a.rssName}</td>
                                    <td><a href="${createLink(controller: "feed", action: "rss", params: [id: a.id])} "
                                           role="button" class="btn btn-info">View Feeds
                                    </a></td>
                                    <td><a href="${createLink(controller: "url", action: "deleteUrl", params: [id: a.id])}"
                                           role="button" class="btn btn-danger">Delete</a>
                                    </td>
                                    <td><a href="${createLink(controller: "url", action: "editUrl", params: [id: a.id])}"
                                           role="button" class="btn btn-warning">Update</a>
                                    </td>
                                </tr>
                            </g:each>

                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="pagination">
        <g:paginate total="${listTotal ?: 0}" controller="url" max="5" action="showUrl" prev="previous"
                    next="next"/>
    </div>
</div>

</body>
</html>