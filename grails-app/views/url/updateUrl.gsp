<html>
<head>
    <meta name="layout" content="theme">
    <title>Update Url</title>
    %{--<link rel="stylesheet" href="${resource(dir: "css", file: "bootstrap.min.css")}"/>--}%
    %{--<script src="${resource(dir: "js", file: "jquery.min.js")}"></script>--}%
    %{--<script src="${resource(dir: "js", file: "bootstrap.min.js")}"></script>--}%
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
    <div class="row">
        <div class="col-md-6 col-md-offset-2 col-lg-6 col-lg-offset-2 ">
            <div class="panel panel-default">
                <div class="panel-heading" style="margin-bottom: -26px;">
                    <div class="row">
                        <div class="col-xs-6">
                            <label>Update RssUrl</label>
                        </div>
                    </div>
                    <hr>
                </div>

                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class='fheader'></div>

                            <g:if test='${flash.topicList}'>
                                <div class='login_message'>${flash.topicList}</div>
                            </g:if>
                            <form action="${createLink(controller: "url", action: "updateUrl", params: [Id: updatedID])}"
                                  method="post">
                                <div class="form-group">
                                    <label for="rssName">RssName<span class="required-indicator"></span></label>
                                    <input type="text" class="form-control" name="rssName" placeholder="rssName"
                                           id="rssName"
                                           tabindex="1" value="${rssName}">
                                    <g:hasErrors bean="${updateUrlCOErrors}"/><g:renderErrors
                                            bean="${updateUrlCOErrors}" field="rssName" as="list"/>

                                </div>

                                <div class="form-group">
                                    <label for="rssUrl">RssUrl<span class="required-indicator"></span></label>
                                    <input type="textarea" class="form-control" name="rssUrl"
                                           placeholder="rssUrl" id="rssUrl" tabindex="1"
                                           value="${rssUrl}">
                                    <g:hasErrors bean="${updateUrlCOErrors}"/><g:renderErrors
                                            bean="${updateUrlCOErrors}" field="rssUrl" as="list"/>

                                </div>


                                <div class="form-group">

                                    <input type="submit" style="width: 50%;" name="Update" id="submit"
                                           tabindex="4" class="form-control btn btn-login btn-success"
                                           value='Update'>
                                    <input type="reset" style="width: 49%;" name="Reset" id="reset" tabindex="4"
                                           class="form-control btn btn-login btn-warning" value='Reset'>

                                </div>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    $(document).ready(function () {
        $("#visibility").addClass('form-control');
    });
</script>

</body>
</html>