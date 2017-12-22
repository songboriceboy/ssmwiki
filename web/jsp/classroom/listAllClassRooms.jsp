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
                        教室名称
                    </td>
                    <td>
                        容纳人数
                    </td>
                    <td>
                        操作
                    </td>
                    </thead>
                    <tbody>
                    <c:forEach items="${classroom_lst}" var="classroom">
                        <tr>
                            <td>
                                    ${classroom.classroom_name}
                            </td>
                            <td>
                                    ${classroom.hold_student_num}
                            </td>
                            <td>
                                    <a href = "${pageContext.request.contextPath}/classroom/modify_classroom.action?id=${classroom.id}">修改</a>
                                    |<a href = "${pageContext.request.contextPath}/classroom/del_classroom.action?id=${classroom.id}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <form action="${pageContext.request.contextPath}/classroom/add_classroom.action" method="post">
                    教室名称：<input type="text" name = "classroom_name">
                    容纳人数：<input type="text" name = "hold_student_num">
                    <input type="submit" value="新增教室">
                </form>
            </div>
        </div>
    </div>
</div>
</div>

<%@ include file="../header/footer.jsp"%>

</body>
<html>
