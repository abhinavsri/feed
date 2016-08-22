<%--
  Created by IntelliJ IDEA.
  User: abhinav
  Date: 19/8/16
  Time: 9:06 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="theme">
    <title></title>
    <style>
    .panel-login {
        border-color: #ccc;
        -webkit-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
        -moz-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
        box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
    }

    .panel-heading {
        /*padding: 10px 15px;*/
        border-bottom: 1px solid transparent;
        border-top-left-radius: 3px;
        border-top-right-radius: 3px;
    }

    .panel-default > .panel-heading a.active {
        color: #029f5b;
        font-size: 18px;
    }
    </style>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-2 col-lg-6 col-lg-offset-2">
            <div class="pane panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel-title" style="align-content: space-between">
                                <label class="center-block"><h3>Welcome To RssFeeder</h3></label>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="panel-body" style="background-color: white">
                    <div class="row">
                        <div class="col-lg-12">

                          <p>  Digg Reader is a tool for keeping
                            up with sites and blogs.</p>
                           Get started by entering a site or blog
                            you like or browse categories.
                          </p>

                            <div class="form-group">
                            <form action="${createLink(controller: "url", action: "index")}">
                                <input type="submit" style="width: 100%;" name="Insert Url" id="submit"
                                       tabindex="4" class="form-control btn btn-login btn-success"
                                       value='Click here to insert URL'>
                            </form>
                            </div>



                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>