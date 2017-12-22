<%--
  Created by IntelliJ IDEA.
  User: ttc
  Date: 16-12-14
  Time: 下午3:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="tm-sidebar uk-width-medium-1-4 uk-hidden-small">
    <ul class="tm-nav uk-nav" data-uk-nav>
        <li class="uk-nav-header">教室管理</li>
        <li class="uk-active"><a href="${pageContext.request.contextPath}/classroom/list_classroom.action">教室列表</a></li>
        <li class="uk-nav-header">博文管理</li>
        <li><a href="${pageContext.request.contextPath}/article/show_all_articles.action">博文列表</a></li>
        <li><a href="${pageContext.request.contextPath}/article/PublishArticle.action">发表博文</a></li>
        <li class="uk-nav-header">用户管理</li>
        <li><a href="${pageContext.request.contextPath}/user/upload.action">上传头像</a></li>
    </ul>

</div>
