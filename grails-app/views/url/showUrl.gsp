<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="lay">
    <title>URL</title>
    %{--<link rel="stylesheet" href="${resource(dir: "css", file: "bootstrap.min.css")}"/>--}%
    %{--<script src="${resource(dir: "js", file: "bootstrap.min.js")}"></script>--}%
</head>

<body>
<div class="container">
    <div class="row">
        <div class="table-responsive">
            <table class="table table-borderedd" id="myTable">
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
                        <div class='login_message'><h1>${flash.message}</h1></div>
                    </g:if></tr>
                <g:each in="${url}" var="a">
                    <tr>

                        <td>${a.rssUrl}</td>
                        <td>${a.rssName}</td>
                        <td><a href="${createLink(controller: "feed", action: "rss", params: [id: a.id])}">view</a></td>
                        <td><a href="${createLink(controller: "url", action: "deleteUrl", params: [id: a.id])}">delete</a>
                        </td>
                        <td><a href="${createLink(controller: "url", action: "editUrl", params: [id: a.id])}">update</a>
                        </td>
                    </tr>
                </g:each>

            </table>
        </div>

        <div class="pagination">
            <g:paginate total="${listTotal ?: 0}" controller="url" max="2" action="showUrl" prev="previous"
                        next="next"/>
        </div>
    </div>

</div>
</body>
</html>