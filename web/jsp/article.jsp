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

<div id="main">
    <div class="x-placeholder-50"><!-- placeholder --></div>
    <div class="x-placeholder"><!-- placeholder --></div>
    <div class="uk-container x-container">
        <div class="uk-grid">
            <div class="x-body-before uk-width-1-1">

            </div>
        </div>
        <div class="uk-grid">
            <div class="uk-width-1-1">

                <div class="x-sidebar-left">
                    <div class="x-sidebar-left-top">

                    </div>
                    <div class="x-sidebar-left-content">

                        <ul class="uk-nav uk-nav-side">
                            <li class="uk-nav-header">目录</li>
                        </ul>
                        <ul class="uk-nav uk-nav-side" style="margin-right:-15px;">
                            <c:forEach items="${articles}" var="article">
                                <li style="margin-left:${article.article_content}em;">
                                    <a href="${pageContext.request.contextPath}/article/getAllFront.action?id=${article.id}&tid=${tid}">${article.text}</a>
                                </li>
                            </c:forEach>





                        </ul>
                        <div class="x-placeholder"></div>

                    </div>

                </div>



                <div class="x-center">
                    <div>

                    </div>
                    <div class="x-content" style="width:100%">

                      ${article.article_content}



                        <hr>
                        <div id="x-wiki-prev-next" class="uk-clearfix uk-margin-left uk-margin-right">
                        </div>
                        <hr>




                    </div>

                </div>
            </div>
        </div>

        <div class="uk-grid">
            <div class="x-body-after uk-width-1-1">

            </div>
        </div>
    </div>
</div>


<div id="x-offcanvas-left" class="uk-offcanvas">
    <div class="uk-offcanvas-bar">
        <div class="uk-panel">

            <ul class="uk-nav uk-nav-side">
                <li class="uk-nav-header">目录</li>
            </ul>
            <ul class="uk-nav uk-nav-side" style="margin-right:-15px;">
                <c:forEach items="${articles}" var="article">
                    <li style="margin-left:${article.article_content}em;">
                        <a href="${pageContext.request.contextPath}/article/getAllFront.action?id=${article.id}&tid=${tid}">${article.text}</a>
                    </li>
                </c:forEach>





            </ul>
            <div class="x-placeholder"></div>

        </div>
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
