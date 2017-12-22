<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>admin</title>

    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" href="images/apple-touch-icon.png">
    <link id="data-uikit-theme" rel="stylesheet" href="${pageContext.request.contextPath}/css/uikit.docs.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/docs.css">

    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/js/uikit.min.js"></script>
    <style>
        .topic
        {
            color:white;
        }
    </style>
</head>
<body class="tm-background">

<%@ include file="header/header.jsp"%>

<div class="tm-middle">
    <div class="uk-container uk-container-center">
        <div class="uk-grid" data-uk-grid-margin>
        <%@ include file="header/sidebar.jsp"%>
        <div class="tm-main uk-width-medium-3-4">
            <article class="uk-article">
                <h1>开始使用</h1>
            </article>
        </div>
    </div>
</div>
</div>
</div>

<%@ include file="header/footer.jsp"%>

</body>
<html>