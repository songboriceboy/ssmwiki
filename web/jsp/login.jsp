
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en-gb" dir="ltr" class="uk-height-1-1">

<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/uikit.min.css">
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/js/uikit.min.js"></script>

    <script>
        function submitForm()
        {
            var form = document.getElementById("myform");
            form.submit();
        }
    </script>
</head>

<body class="uk-height-1-1">
<div class="uk-vertical-align uk-text-center uk-height-1-1">
    <div class="uk-vertical-align-middle" style="width: 250px;">
        <form id = "myform" class="uk-panel uk-panel-box uk-form" action="${pageContext.request.contextPath}/user/login.action" method="post">
            <div class="uk-form-row">
                <input class="uk-width-1-1 uk-form-large" type="text" name = "student_name" placeholder="Username">
            </div>
            <div class="uk-form-row">
                <input class="uk-width-1-1 uk-form-large" type="password" name = "student_pass" placeholder="Password">
            </div>
            <div class="uk-form-row">
                <a class="uk-width-1-1 uk-button uk-button-primary uk-button-large" href="#" onclick="submitForm();">Login</a>
            </div>
        </form>

    </div>
</div>

</body>

</html>
