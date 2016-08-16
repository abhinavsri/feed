<%--
  Created by IntelliJ IDEA.
  User: abhinav
  Date: 28/7/16
  Time: 1:54 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <title><g:layoutTitle default="mainTryLayout"/></title>

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css">
    <script type="text/javascript" language="javascript"
            src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js">
    </script>
    <script type="text/javascript" language="javascript"
            src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>

    <link rel="stylesheet" href="${resource(dir: "css", file: "bootstrap.min.css")}"/>
    <script src="${resource(dir: "js", file: "bootstrap.min.js")}"></script>
    <script src="${resource(dir: "js", file: "bootstrap.js")}"></script>
    <script src="${resource(dir: "js", file: "jquery.dataTables.min.css")}"></script>
    <script src="${resource(dir: "js", file: "jquery.dataTables.min.css")}"></script>
    <script src="${resource(dir: "js", file: "bootstrap.min.js")}"/>
    <link rel="stylesheet" href="${resource(dir: "css", file: "bootstrap.min.css")}"/>
    <script src="${resource(dir: "js", file: "jquery.min.js")}"></script>
    <script src="${resource(dir: "js", file: "bootstrap.min.js")}"></script>
    <style>

    footer {
        postion: static;
        right: 0;
        bottom: 0;
        left: 0;
        padding: 1rem;
        background-color: #efefef;
        text-align: center;
    }

    header {
        position: static;
    }

    header {
        position: fixed;
        top: 0px;
        margin: 0px auto;
    }
    </style>
    <g:layoutHead/>
</head>

<body>
<div id="wrapper">

    <g:render template="/templates/header"/>

    <g:layoutBody/>

</div>
</body>
</html>