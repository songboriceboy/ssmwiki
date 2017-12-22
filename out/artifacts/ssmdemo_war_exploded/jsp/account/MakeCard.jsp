<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 16-12-16
  Time: 下午1:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/account/make_card.action" method="post">
    卡号：<input type="text" name = "card_no">
    <input type="submit" value="开卡">
</form>

</body>
</html>
