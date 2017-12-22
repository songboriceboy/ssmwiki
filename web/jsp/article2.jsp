<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/5
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns:itranswarp="http://www.itranswarp.com/" xmlns:wb="http://open.weibo.com/wb">
<!--

-->
<head>
    <meta charset="utf-8" />
    <title>java教程网</title>
    <meta name="viewport" content="width=device-width" />
    <meta name="keywords" content="javascript,html,jquery,css,mysql,java,sql,spring,mybatis,javaweb,servlet,jsp,教程,软件,编程,开发,互联网" />
    <meta name="description" content="研究互联网产品和技术，提供原创中文精品教程" />
    <meta property="x-nav" content=" /wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000 " />
    <link rel="alternate" href="/feed" title="java教程网" type="application/rss+xml" />

    <!-- BEGIN CSS COMPRESS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/codemirror.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/highlight.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/itranswarp.css" />
    <!-- END CSS COMPRESS -->
    <!--[if lt IE 9]>
    <link rel="stylesheet" href="/static/themes/default/css/ie.css" />
    <![endif]-->

    <script src="${pageContext.request.contextPath}/js/all.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/ueditor1_4_3/third-party/SyntaxHighlighter/shCore.js"></script>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/ueditor1_4_3/third-party/SyntaxHighlighter/shCoreDefault.css">
    <style>
        .x-center {
            margin: 0;
        }


        .x-center {
            margin-left: 316px;
            padding-left: 15px;
        }



    </style>

    <!-- BEGIN custom_header -->
    <script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js" type="text/javascript" charset="utf-8"></script>


    <script>
        SyntaxHighlighter.all();
    </script>
    <!-- END custom_header -->
</head>

<body>
<div class="x-goto-top">
    <div class="x-arrow"></div>
    <div class="x-stick"></div>
</div>

<div id="header" class="uk-navbar uk-navbar-attached">
    <div class="uk-container x-container">
        <div class="uk-navbar uk-navbar-attached">

            <ul class="uk-navbar-nav uk-visible-small">
                <li><a href="#0" onclick="UIkit.offcanvas.show('#x-offcanvas-left')"><i class="uk-icon-chevron-right"></i></a></li>
            </ul>

            <a href="${pageContext.request.contextPath}" class="uk-navbar-brand uk-visible-large">java教程网</a>
            <a href="${pageContext.request.contextPath}" class="uk-navbar-brand uk-hidden-large"><i class="uk-icon-home"></i></a>
            <ul id="ul-navbar" class="uk-navbar-nav uk-hidden-small">

                <c:forEach items="${tags}" var="tag">
                    <li><a href="${pageContext.request.contextPath}/article/getAllFront.action?id=0&tid=${tag.id}">${tag.tag_name}</a></li>
                </c:forEach>




            </ul>

            <ul class="uk-navbar-nav uk-visible-small">
                <li class="uk-parent" data-uk-dropdown>
                    <a href="#0"><i class="uk-icon-navicon"></i></a>
                    <div class="uk-dropdown uk-dropdown-navbar">
                        <ul class="uk-nav uk-nav-navbar">

                            <c:forEach items="${tags}" var="tag">
                                <li><a href="${pageContext.request.contextPath}/article/getAllFront.action?id=0&tid=${tag.id}">${tag.tag_name}</a></li>
                            </c:forEach>

                        </ul>
                    </div>
                </li>
            </ul>




            <div class="uk-navbar-flip">
                <ul class="uk-navbar-nav">
                    <li class="uk-parent x-display-if-signin" data-uk-dropdown>
                        <a href="#0"><i class="uk-icon-user"></i><span class="x-hidden-tiny">&nbsp;</span><span class="x-user-name x-hidden-tiny"></span></a>
                        <div class="uk-dropdown uk-dropdown-navbar">
                            <ul class="uk-nav uk-nav-navbar">
                                <li><a target="_blank" href="/me/profile"><i class="uk-icon-cogs"></i> 个人资料</a></li>
                                <li class="uk-nav-divider"></li>
                                <%--<li><a href="/auth/signout"><i class="uk-icon-power-off"></i> 登出</a></li>--%>
                            </ul>
                        </div>
                    </li>
                    <li class="x-display-if-not-signin uk-hidden-small"><a href="${pageContext.request.contextPath}/jsp/login.jsp"><i class="uk-icon-sign-in"></i> 登录</a></li>
                    <%--<li class="x-display-if-not-signin uk-visible-small"><a href="javascript:showSignin()"><i class="uk-icon-sign-in"></i></a></li>--%>
                </ul>
            </div>
        </div>
    </div>
</div><!-- // header -->

<%--<div id="main">--%>
 <%----%>
<%--</div>--%>

<div class="uk-container uk-container-center uk-margin-top">


    <div class="b10 uk-visible-small"></div>
    <hr class="uk-grid-divider uk-grid-divider1">
    <div class="uk-grid" data-uk-grid-margin="">
        <c:forEach items="${tags}" var="tag">
            <div class="uk-width-medium-1-4 thumb_hover mb-thumb uk-grid-margin">
                <div class="uk-panel uk-panel-box" title="" data-uk-tooltip="{pos:'top',animation:true}" data-cached-title="${tag.tag_name} ">
                    <div class="uk-panel-teaser">
                        <a class="uk-thumbnail uk-overlay-toggle" href="http://www.mooban.cn/original/show/32/" target="_blank">
                            <div class="uk-overlay uk-animation-hover">
                                <img src="${pageContext.request.contextPath}/upload/${tag.tag_picpath}" class="" original="${pageContext.request.contextPath}/upload/${tag.tag_picpath}" alt="${tag.tag_name}" width="100%" style="display: inline;">
                                <div class="uk-overlay-area uk-animation-scale-down"></div>
                            </div>
                        </a>
                    </div>
                    <div class="uk-panel uk-text-truncate">
                        <div class="uk-badge uk-badge-success">热门</div>
                        <a href="${pageContext.request.contextPath}/article/getAllFront.action?id=0&tid=${tag.id}" target="_blank" class="b" title="${tag.tag_name} ">${tag.tag_name}               </a>
                    </div>
                    <p class="uk-text-muted uk-text-small">
                        <span><i class="uk-icon-clock-o uk-icon-hover"></i> 2015-04-05</span>
                        <span class="uk-float-right"><i class="uk-icon-eye uk-icon-hover"></i> 10912</span>
                    </p>
                </div>
            </div>
        </c:forEach>


    </div>



</div>


<div id="footer">
    <div class="x-footer uk-container x-container">
        <hr>
        <div class="uk-grid">
            <div class="x-footer-copyright uk-width-small-1-2 uk-width-medium-1-3">
                <p>
                    <a href="/">java教程网</a>&copy;2017
                </p>
            </div>
        </div>
    </div>
</div>




</body>
</html>
