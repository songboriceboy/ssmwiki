<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<%@ include file="../header/header.jsp"%>

<div class="tm-middle">
    <div class="uk-container uk-container-center">
        <div class="uk-grid" data-uk-grid-margin>
            <%@ include file="../header/sidebar.jsp"%>
            <div class="tm-main uk-width-medium-3-4">
                <table class="uk-table">
                    <thead>
                    <td>
                        Tag名称
                    </td>
                    <td>
                        操作
                    </td>
                    </thead>
                    <tbody>
                    <c:forEach items="${tag_lst}" var="tag">
                        <tr>
                            <td>
                                    ${tag.tag_name}
                            </td>
                            <td>
                                    <a href = "${pageContext.request.contextPath}/tag/manage_tag.action?id=${tag.id}">管理markdown</a>
                                    |<a href = "${pageContext.request.contextPath}/tag/manage_tag_baidu.action?id=${tag.id}">管理baidu_editor</a>
                                    |<a href = "${pageContext.request.contextPath}/tag/modify_tag.action?id=${tag.id}">修改</a>
                                    |<a href = "${pageContext.request.contextPath}/tag/del_tag.action?id=${tag.id}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <form action="${pageContext.request.contextPath}/tag/add_tag.action" method="post">
                    tag名称：<input type="text" name = "tag_name">
                    <input type="submit" value="新增tag">
                </form>
            </div>
        </div>
    </div>
</div>
</div>

<%@ include file="../header/footer.jsp"%>

</body>
<html>
