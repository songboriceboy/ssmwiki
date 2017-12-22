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
    <title>Python教程 - 廖雪峰的官方网站</title>
    <meta name="viewport" content="width=device-width" />
    <meta name="keywords" content="javascript,node,jquery,git,python,java,sql,linux,ios,android,教程,软件,编程,开发,运维,云计算,网络,互联网" />
    <meta name="description" content="研究互联网产品和技术，提供原创中文精品教程" />
    <meta property="x-nav" content=" /wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000 " />
    <link rel="alternate" href="/feed" title="廖雪峰的官方网站" type="application/rss+xml" />

    <meta property="og:type" content="article" />
    <meta property="og:url" content="http://www.liaoxuefeng.com/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000" />
    <meta property="og:title" content="Python教程" />
    <meta property="og:description" content="小白的Python新手教程，基于最新的Python 3.5！" />
    <meta property="og:image" content="http://www.liaoxuefeng.com/files/attachments/001431608955727f25be118770e460fad1296261e01213d000/l" />

    <!-- BEGIN CSS COMPRESS -->
    <link rel="stylesheet" href="../css/codemirror.css" />
    <link rel="stylesheet" href="../css/highlight.css" />
    <link rel="stylesheet" href="../css/itranswarp.css" />
    <!-- END CSS COMPRESS -->
    <!--[if lt IE 9]>
    <link rel="stylesheet" href="/static/themes/default/css/ie.css" />
    <![endif]-->

    <script src="/static/themes/default/js/all.js"></script>

    <script id="tplComment" type="text/plain">
        <div class="uk-comment">
            <div class="uk-comment-header" style="margin-bottom:0">
                <a target="_blank" href="/user/{ user.id }"><img class="uk-comment-avatar uk-border-circle x-avatar" src="{ user.image_url }" width="50" height="50" alt=""></a>
                <h4 class="uk-comment-title"><a target="_blank" href="/discuss/{ board_id }/{ id }">{ name }</a></h4>
                <div class="uk-comment-meta"><a target="_blank" href="/user/{ user.id }">{ user.name }</a> created at { created_at.toSmartDate() }, Last updated at { updated_at.toSmartDate() }</div>
            </div>
            <div class="uk-comment-body x-auto-content">
                { content|safe }
            </div>
        </div>
    </script>

    <script id="tplCommentReply" type="text/plain">
        <div class="uk-comment">
            <div class="uk-comment-header" style="margin-bottom:0">
                <a target="_blank" href="/user/{ user.id }"><img class="uk-comment-avatar uk-border-circle x-avatar" src="{ user.image_url }" width="50" height="50" alt=""></a>
                <div class="uk-comment-meta"><a target="_blank" href="/user/{ user.id }">{ user.name }</a></div>
                <div class="uk-comment-meta">Created at { created_at.toSmartDate() }, Last updated at { updated_at.toSmartDate() }</div>
            </div>
            <div class="uk-comment-body x-auto-content">
                { content|safe }
            </div>
        </div>
    </script>

    <script id="tplCommentInfo" type="text/plain">
        <li>
            <div class="x-comment-info">
                <hr>
                <a target="_blank" class="uk-button uk-button-small" href="/discuss/{ board_id }/{ id }"><i class="uk-icon-list-ul"></i> View Full Discuss</a>
                &nbsp;
                <a target="_blank" class="uk-button uk-button-small" href="/discuss/{ board_id }/{ id }#reply"><i class="uk-icon-reply"></i> Reply This Topic</a>
            </div>
        </li>
    </script>

    <script id="tplCommentArea" type="text/plain">
        <div class="x-display-if-signin">
            <p><button id="comment-make-button" type="button" class="uk-button uk-button-primary"><i class="uk-icon-comment"></i> 发表评论</button></p>
            <form id="comment-form" class="uk-form" style="display:none;">
                <fieldset>
                    <div class="uk-alert uk-alert-danger" style="display:none"></div>
                    <div class="uk-form-row">
                        <label>标题:</label>
                    </div>
                    <div class="uk-form-row">
                        <input type="text" name="name" maxlength="100" style="width:100%">
                    </div>
                    <div class="uk-form-row">
                        <label>内容:</label>
                    </div>
                    <div class="uk-form-row x-textarea">
                    </div>
                    <div class="uk-form-row">
                        <button type="submit" class="uk-button uk-button-primary"><i class="uk-icon-check"></i> 发布</button>
                        &nbsp;&nbsp;
                        <button type="button" class="uk-button x-cancel"><i class="uk-icon-close"></i> 取消</button>
                    </div>
                </fieldset>
            </form>
        </div>
    </script>

    <style id="x-doc-style">

        .x-display-if-signin { display: none; }

    </style>
    <script>
        var g_time = parseFloat('1483625382650');
        var g_signins = [{"id":"weibo","icon":"weibo","name":"使用新浪微博登录"}];
        //
        var g_user = null;
        //
    </script>







    <style>
        .x-wiki-visible {
            display: block;
        }
    </style>

    <script>
        loadComments('0014316089557264a6b348958f449949df42a6d3a2e542c000');

        var
                comment_type = 'wiki',
                comment_ref_id = '0014316089557264a6b348958f449949df42a6d3a2e542c000',
                comment_tag = 'python';

        function onAuthSuccess() {
            initCommentArea(comment_type, comment_ref_id, comment_tag);
        }

        $(function () {
            if (g_user !== null) {
                initCommentArea(comment_type, comment_ref_id, comment_tag);
            }
        });

        $(function () {
            var
                    current = $('#0014316089557264a6b348958f449949df42a6d3a2e542c000'),
                    prev = current.prev().find('a'),
                    next = current.next().find('a'),
                    L = [];
            current.addClass('uk-active');
            $('#off-0014316089557264a6b348958f449949df42a6d3a2e542c000').addClass('uk-active');
            L.push('<div class="uk-clearfix uk-margin-left uk-margin-right">');
            if (prev.length > 0) {
                L.push('<span class="uk-float-left"><i class="uk-icon-chevron-left"></i> <a href="');
                L.push(prev.attr('href'));
                L.push('">');
                L.push(encodeHtml(prev.text()));
                L.push('</a></span>');
            }
            if (next.length > 0) {
                L.push('<span class="uk-float-right"><a href="');
                L.push(next.attr('href'));
                L.push('">');
                L.push(encodeHtml(next.text()));
                L.push('</a> <i class="uk-icon-chevron-right"></i></span>')
            }
            L.push('</div>');
            $('#x-wiki-prev-next').html(L.join(''));
        });
    </script>


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
        // git: add app link:
        $(function() {
            if (location.pathname.indexOf('/wiki/0013739516305929606dd18361248578c67b8067c8c017b000')===0) {
                $('.x-wiki-info').parent().css('position', 'relative').append('<a href="https://itunes.apple.com/cn/app/git-jiao-cheng/id876420437" target="_blank" style="display:block;width:135px;height:40px;position:absolute;right:10px;top:10px;"><img src="/static/img/download-on-the-app-store.png" /></a>');
            }
            // add new:
            $('#ul-navbar a[href="/webpage/java"]').parent().append('<img style="position:absolute;right:-10px;top:3px;z-index:999" src="/files/attachments/001477919415261ebc91072244149e0ab69f60ae2abe39f000/l">');
        });
    </script>

    <script>
        // python 3: add 2.7 link:
        $(function() {
            if (location.pathname.indexOf('/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000')===0) {
                $('.x-wiki-info').parent().css('position', 'relative').append('<a href="/wiki/001374738125095c955c1e6d8bb493182103fac9270762a000" target="_blank" style="display:block;position:absolute;right:10px;top:10px;">2.7旧版教程</a>');
            }
        });
    </script>

    <script>
        // python 2.7: add py3 link:
        $(function() {
            if (location.pathname.indexOf('/wiki/001374738125095c955c1e6d8bb493182103fac9270762a000')===0) {
                $('#main .x-container').prepend('<div class="uk-alert uk-alert-danger">您目前正在学习的2.7版本的Python教程已过期，请立刻前往最新的Python 3 教程：<a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000" class="uk-button uk-button-success">我要学 Python 3</a></div>');
            }
        });
    </script>

    <script>
        // the ad:
        $(function() {
            var _a_pros = [
                {
                    id: 'zhufeng',
                    href: 'http://www.zhufengpeixun.cn/customize/node/index.html',
                    img: '/files/attachments/0014836214192874d51988d2bf544e5bfecae1c63fafa5f000/0'
                },
                {
                    id: 'maiziedu',
                    href: 'http://www.maizitime.com/pages/adpc/python.html?yy=lxfpy',
                    img: '/files/attachments/001468226657174e6b109d28e84442798a2a4451e7b2dea000/0'
                },
                {
                    id: 'xitu',
                    href: 'http://gold.xitu.io/welcome?utm_source=liaoxuefeng&utm_medium=banner&utm_content=gaoshou&utm_campaign=q3_personal',
                    img: '/files/attachments/00146917760141137418dc990d3459d99ea875458da0ea4000/0'
                },
                {
                    id: 'julyedu',
                    href: 'https://www.julyedu.com/course/getDetail/52?source=lxf',
                    img: '/files/attachments/001481933824671ed85b81402b241ef9e6e9716f888fab2000/0'
                }
            ];

            var _b_pros = {
                id: 'julyedu',
                href: 'https://www.julyedu.com/course/getDetail/54?source=lxf',
                img: '/files/attachments/0014819338317037950e01f10654851b5a01b577f0de094000/0'
            };

            var _c_pros = {
                id: 'badou',
                href: 'http://www.badouxueyuan.cn/read/',
                img: '/files/attachments/001480933090560a0eac37026724ae8b0b5eae3d4df8d82000/0'
            };

            $('div.x-promo-b').html('<div style="width:300px;height:600px"><a target="_blank" href="' + _b_pros.href + '" onclick="_hmt.push([\'_trackEvent\', \'' + _b_pros.id + '\', \'click\', \'clicked\']);"><img src="' + _b_pros.img + '" style="width:300px;height:600px"></a></div>' + '<div style="width:300px;height:250px"><a target="_blank" href="' + _c_pros.href + '" onclick="_hmt.push([\'_trackEvent\', \'' + _c_pros.id + '\', \'click\', \'clicked\']);"><img src="' + _c_pros.img + '" style="width:300px;height:250px"></a></div>');

            var i, s = '';
            for (i=0; i<_a_pros.length; i++) {
                s = s + '<div style="width:336px;height:280px;float:left;"><a target="_blank" href="' + _a_pros[i].href + '" onclick="_hmt.push([\'_trackEvent\', \'' + _a_pros[i].id + '\', \'click\', \'clicked\']);"><img src="' + _a_pros[i].img + '" style="width:336px;height:280px"></a></div>';
            }
            if (location.pathname.indexOf('/wiki/')===0 || location.pathname.indexOf('/article/')===0) {
                s = s + '<div style="clear: both;"></div>';
                $('.x-wiki-content').after(s);
                $('.x-article-content').after(s);
            }
            else {
                $('#the-promos').prepend(s);
            }
        });
    </script>

    <script>
        // add share:
        $(function() {
            if (location.pathname.indexOf('/wiki/')===0) {
                $('.x-wiki-content').find('a[href^=http]').attr('target', '_blank');
                if (!window.hurry) {
                    $('.x-wiki-content').after('<h3>感觉本站内容不错，读后有收获？</h3><p><a target="_blank" href="/webpage/donate" class="uk-button uk-button-primary"><i class="uk-icon-cny"></i> 我要小额赞助，鼓励作者写出更好的教程</a></p><h3>还可以分享给朋友</h3><p><wb:share-button appkey="1391944217" addition="full" type="button" ralateUid="1658384301" picture_search="false" pic="' + $('meta[property="og:image"]').attr('content') + '"></wb:share-button></p>');
                } else {
                    $('.x-wiki-content').after('<h3>等待时间太久？</h3><p><a target="_blank" href="/webpage/donate" class="uk-button uk-button-primary"><i class="uk-icon-cny"></i> 我要催促作者更新教程</a></p><h3>还可以分享给朋友</h3><p><wb:share-button appkey="1391944217" addition="full" type="button" ralateUid="1658384301" picture_search="false" pic="' + $('meta[property="og:image"]').attr('content') + '"></wb:share-button></p>');
                }
            }
            if (location.pathname.indexOf('/discuss/')===0) {
                var r = parseQueryString();
                if (!r.page || r.page==='1') {
                    $('div.x-content>div.uk-comment:first div.uk-comment-body').append('<hr><p class="uk-text-muted">想要问题快速得到解答？分享给朋友试试：</p><p><wb:share-button appkey="1391944217" addition="full" type="button" ralateUid="1658384301" picture_search="false"></wb:share-button></p>');
                }
            }
        });
    </script>

    <script>
        // article: add share:
        $(function() {
            if (location.pathname.indexOf('/article/')===0) {
                $('.x-article-content').find('a[href^=http]').attr('target', '_blank');
                $('.x-article-content').after('<h3>感觉本站内容不错，读后有收获？</h3><p><a target="_blank" href="/webpage/donate" class="uk-button uk-button-primary"><i class="uk-icon-cny"></i> 我要小额赞助，鼓励作者写出更好的文章</a></p><h3>还可以分享给朋友</h3><p><wb:share-button appkey="1391944217" addition="full" type="button" ralateUid="1658384301" picture_search="false" pic="' + $('meta[property="og:image"]').attr('content') + '"></wb:share-button></p>');
            }
        });
    </script>

    <script>
        // all:
        $(function() {
            $('.x-footer-copyright').find('p').append('<br>由<a target="_blank" href="http://s.click.taobao.com/t?e=m%3D2%26s%3DuVSSwb68TEYcQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAouhd4loqGpDWNI3LssOJ1ZIW%2FH7aX8LI9nQCCjrrrN3wYAeXhmRFOHMh3DDj7e5Hudn1BbglxZYxUhy8exlzcpAFEHVckI7b93srg%2FL%2FeD3keUEnoKELDlWYetMiZZgV%2BSx6OrKqagyklzFeKMz7Cd4Qek9OyREefaKWlxOHSq5XF%2B87KN7TKeiZ%2BQMlGz6FQ%3D%3D">阿里云</a>托管<br><a href="#0" onclick="location.assign(decodeURIComponent(\'moc.36104%fxlksaA3%otliam\'.split(\'\').reverse().join(\'\')))">广告合作</a>');
            $('.x-footer').append('<hr><div style="text-align:center"><p>友情链接: <a href="http://www.shi-ci.com" target="_blank">中华诗词</a> - <a href="http://s.click.taobao.com/t?e=m%3D2%26s%3DjPaT%2Fmi2tL4cQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAlFz4nQbUpKuV%2FZ67c680w5IW%2FH7aX8LI9nQCCjrrrN3wYAeXhmRFOHMh3DDj7e5Hudn1BbglxZYxUhy8exlzcq9AmARIwX9K%2BnbtOD3UdznPV1H2z0iQv9NkKVMHClW0QbMqOpFMIvnvjQXzzpXdTHGJe8N%2FwNpGw%3D%3D" target="_blank">阿里云</a> - <a href="http://mitpress.mit.edu/sicp/full-text/book/book.html" target="_blank">SICP</a> - <a href="http://www.4clojure.com/" target="_blank">4clojure</a></p></div>');
        });
    </script>

    <script>
        // tongji:
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?2efddd14a5f2b304677462d06fb4f964";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

    <script>
        $(function() {
            var x = document.createElement('script');
            x.src = '/static/js/underscore.js';
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(x, s);
        });
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

            <a href="/" class="uk-navbar-brand uk-visible-large">廖雪峰的官方网站</a>
            <a href="/" class="uk-navbar-brand uk-hidden-large"><i class="uk-icon-home"></i></a>
            <ul id="ul-navbar" class="uk-navbar-nav uk-hidden-small">

                <li><a href="/category/0013738748415562fee26e070fa4664ad926c8e30146c67000">编程</a></li>

                <li><a href="/category/0013738748248885ddf38d8cd1b4803aa74bcda32f853fd000">读书</a></li>

                <li><a href="/webpage/java">Java教程</a></li>

                <li><a href="/wiki/001434446689867b27157e896e74d51a89c25cc8b43bdb3000">JavaScript教程</a></li>

                <li><a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000">Python教程</a></li>

                <li><a href="/wiki/0013739516305929606dd18361248578c67b8067c8c017b000">Git教程</a></li>

                <li><a href="/discuss">问答</a></li>

                <li><a href="/webpage/donate">赞助</a></li>

            </ul>

            <ul class="uk-navbar-nav uk-visible-small">
                <li class="uk-parent" data-uk-dropdown>
                    <a href="#0"><i class="uk-icon-navicon"></i></a>
                    <div class="uk-dropdown uk-dropdown-navbar">
                        <ul class="uk-nav uk-nav-navbar">

                            <li><a href="/category/0013738748415562fee26e070fa4664ad926c8e30146c67000">编程</a></li>

                            <li><a href="/category/0013738748248885ddf38d8cd1b4803aa74bcda32f853fd000">读书</a></li>

                            <li><a href="/webpage/java">Java教程</a></li>

                            <li><a href="/wiki/001434446689867b27157e896e74d51a89c25cc8b43bdb3000">JavaScript教程</a></li>

                            <li><a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000">Python教程</a></li>

                            <li><a href="/wiki/0013739516305929606dd18361248578c67b8067c8c017b000">Git教程</a></li>

                            <li><a href="/discuss">问答</a></li>

                            <li><a href="/webpage/donate">赞助</a></li>

                        </ul>
                    </div>
                </li>
            </ul>


            <!--
                            <div class="uk-navbar-content x-hidden-tiny">
                                <form id="form-search" class="uk-form uk-margin-remove uk-display-inline-block">
                                    <div class="uk-form-icon">
                                        <i class="uk-icon-search"></i>
                                        <input type="text" placeholder="Search">
                                    </div>
                                </form>
                            </div>
            -->

            <div class="uk-navbar-flip">
                <ul class="uk-navbar-nav">
                    <li class="uk-parent x-display-if-signin" data-uk-dropdown>
                        <a href="#0"><i class="uk-icon-user"></i><span class="x-hidden-tiny">&nbsp;</span><span class="x-user-name x-hidden-tiny"></span></a>
                        <div class="uk-dropdown uk-dropdown-navbar">
                            <ul class="uk-nav uk-nav-navbar">
                                <li><a target="_blank" href="/me/profile"><i class="uk-icon-cogs"></i> 个人资料</a></li>
                                <li class="uk-nav-divider"></li>
                                <li><a href="/auth/signout"><i class="uk-icon-power-off"></i> 登出</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="x-display-if-not-signin uk-hidden-small"><a href="javascript:showSignin()"><i class="uk-icon-sign-in"></i> 登录</a></li>
                    <li class="x-display-if-not-signin uk-visible-small"><a href="javascript:showSignin()"><i class="uk-icon-sign-in"></i></a></li>
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
                                    <a href="#">${article.text}</a>
                                </li>
                            </c:forEach>





                        </ul>
                        <div class="x-placeholder"></div>

                    </div>
                    <div class="x-sidebar-left-bottom">
                        <h3>关于作者</h3>
                        <iframe width="100%" height="90" class="share_self"  frameborder="0" scrolling="no" src="http://widget.weibo.com/weiboshow/index.php?language=&width=0&height=550&fansRow=2&ptype=1&speed=0&skin=5&isTitle=0&noborder=0&isWeibo=0&isFans=0&uid=1658384301&verifier=078cedea&colors=0593d3,ffffff,666666,0593d3,0477ab&dpc=1"></iframe>

                        <div class="x-promo-b" style="width:100%;overflow-x:hidden;margin-bottom:5px"></div>

                        <div style="width:100%;overflow-x:hidden;">
                            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- 300x600-lxf -->
                            <ins class="adsbygoogle"
                                 style="display:inline-block;width:300px;height:600px"
                                 data-ad-client="ca-pub-6727358730461554"
                                 data-ad-slot="4769867116"></ins>
                            <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div>

                        <div style="width:100%;overflow-x:hidden;">
                            <script type="text/javascript">
                                /*300x250 @baidu*/
                                var cpro_id = "u2060917";
                            </script>
                            <script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script>
                        </div>

                    </div>
                </div>



                <div class="x-center">
                    <div>

                    </div>
                    <div class="x-content" style="width:100%">

                        <h4>Python教程</h4>
                        <div class="x-wiki-info"><span>阅读: 3668660</span></div>
                        <hr>
                        <div class="x-wiki-content">
                            <p>这是小白的Python新手教程，具有如下特点：</p>
                            <h1 id="-python-3-">中文，免费，零起点，完整示例，基于最新的Python 3版本。</h1>
                            <p>Python是一种计算机程序设计语言。你可能已经听说过很多种流行的编程语言，比如非常难学的C语言，非常流行的Java语言，适合初学者的Basic语言，适合网页编程的JavaScript语言等等。</p>
                            <p>那Python是一种什么语言？</p>
                            <p>首先，我们普及一下编程语言的基础知识。用任何编程语言来开发程序，都是为了让计算机干活，比如下载一个MP3，编写一个文档等等，而计算机干活的CPU只认识机器指令，所以，尽管不同的编程语言差异极大，最后都得“翻译”成CPU可以执行的机器指令。而不同的编程语言，干同一个活，编写的代码量，差距也很大。</p>
                            <p>比如，完成同一个任务，C语言要写1000行代码，Java只需要写100行，而Python可能只要20行。</p>
                            <p>所以Python是一种相当高级的语言。</p>
                            <p>你也许会问，代码少还不好？代码少的代价是运行速度慢，C程序运行1秒钟，Java程序可能需要2秒，而Python程序可能就需要10秒。</p>
                            <p>那是不是越低级的程序越难学，越高级的程序越简单？表面上来说，是的，但是，在非常高的抽象计算中，高级的Python程序设计也是非常难学的，所以，高级程序语言不等于简单。</p>
                            <p>但是，对于初学者和完成普通任务，Python语言是非常简单易用的。连Google都在大规模使用Python，你就不用担心学了会没用。</p>
                            <p>用Python可以做什么？可以做日常任务，比如自动备份你的MP3；可以做网站，很多著名的网站包括YouTube就是Python写的；可以做网络游戏的后台，很多在线游戏的后台都是Python开发的。总之就是能干很多很多事啦。</p>
                            <p>Python当然也有不能干的事情，比如写操作系统，这个只能用C语言写；写手机应用，只能用Swift/Objective-C（针对iPhone）和Java（针对Android）；写3D游戏，最好用C或C++。</p>
                            <p>如果你是小白用户，满足以下条件：</p>
                            <ul>
                                <li>会使用电脑，但从来没写过程序；</li>
                                <li>还记得初中数学学的方程式和一点点代数知识；</li>
                                <li>想从编程小白变成专业的软件架构师；</li>
                                <li>每天能抽出半个小时学习。</li>
                            </ul>
                            <p>不要再犹豫了，这个教程就是为你准备的！</p>
                            <p>准备好了吗？</p>
                            <p><img src="/files/attachments/00138676512923004999ceca5614eb2afc5c0efdd2e4640000/0" alt="challenge-accepted"></p>
                            <h3 id="-">关于作者</h3>
                            <p><a href="http://weibo.com/liaoxuefeng">廖雪峰</a>，十年软件开发经验，业余产品经理，精通Java/Python/Ruby/Scheme/Objective C等，对开源框架有深入研究，著有《Spring 2.0核心技术与最佳实践》一书，多个业余开源项目托管在<a href="https://github.com/michaelliao">GitHub</a>，欢迎微博交流：</p>
                            <p><a href="http://weibo.com/u/1658384301?s=6uyXnP" target="_blank"><img border="0" src="http://service.t.sina.com.cn/widget/qmd/1658384301/078cedea/2.png"/></a></p>

                        </div>
                        <hr>
                        <div id="x-wiki-prev-next" class="uk-clearfix uk-margin-left uk-margin-right">
                        </div>
                        <hr>

                        <div class="x-anchor"><a name="comments"></a></div>

                        <h3>评论</h3>

                        <ul id="x-comment-list" class="uk-comment-list">
                        </ul>

                        <h3>发表评论</h3>

                        <div class="x-display-if-not-signin">
                            <p><button type="button" class="uk-button" onclick="showSignin()"><i class="uk-icon-signin"></i> Sign In to Make a Comment</button></p>
                        </div>

                        <div id="x-comment-area"></div>


                    </div>
                    <div>
                        <div id="the-promos" class="uk-clearfix" style="margin:15px 0">

                            <div style="width:336px;height:280px;float:left;">
                                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                <!-- lxf-336x280 -->
                                <ins class="adsbygoogle"
                                     style="display:inline-block;width:336px;height:280px"
                                     data-ad-client="ca-pub-6727358730461554"
                                     data-ad-slot="8492060710"></ins>
                                <script>
                                    (adsbygoogle = window.adsbygoogle || []).push({});
                                </script>
                            </div>

                            <div style="width:336px;height:280px;float:left;">
                                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                <!-- lxf-336x280 -->
                                <ins class="adsbygoogle"
                                     style="display:inline-block;width:336px;height:280px"
                                     data-ad-client="ca-pub-6727358730461554"
                                     data-ad-slot="8492060710"></ins>
                                <script>
                                    (adsbygoogle = window.adsbygoogle || []).push({});
                                </script>
                            </div>

                            <div style="width:336px;height:280px;float:left;">
                                <script type="text/javascript">
                                    /*336x280 @baidu*/
                                    var cpro_id = "u2068816";
                                </script>
                                <script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script>
                            </div>

                            <div style="width:336px;height:280px;float:left;">
                                <script type="text/javascript">
                                    /*336x280 @baidu*/
                                    var cpro_id = "u2068816";
                                </script>
                                <script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script>
                            </div>


                        </div>

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
            <ul class="uk-nav uk-nav-side">
                <li id="off-0014316089557264a6b348958f449949df42a6d3a2e542c000"><a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000">Python教ss程</a></li>

                <li id="off-001431608990315a01b575e2ab041168ff0df194698afac000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431608990315a01b575e2ab041168ff0df194698afac000">Python简介</a>
                </li>

                <li id="off-0014316090478912dab2a3a9e8f4ed49d28854b292f85bb000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014316090478912dab2a3a9e8f4ed49d28854b292f85bb000">安装Python</a>
                </li>

                <li id="off-00143161198846783e33de56d4041058c3dfc7e44ee1203000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143161198846783e33de56d4041058c3dfc7e44ee1203000">Python解释器</a>
                </li>

                <li id="off-001431611988455689d4c116b2c4ed6aec000776c00ed52000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431611988455689d4c116b2c4ed6aec000776c00ed52000">第一个Python程序</a>
                </li>

                <li id="off-0014316399410395f704750ee9440228135925a6ca1dad8000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014316399410395f704750ee9440228135925a6ca1dad8000">使用文本编辑器</a>
                </li>

                <li id="off-001432523496782e0946b0f454549c0888d05959b99860f000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432523496782e0946b0f454549c0888d05959b99860f000">Python代码运行助手</a>
                </li>

                <li id="off-001431643484137e38b44e5925440ec8b1e4c70f800b4e2000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431643484137e38b44e5925440ec8b1e4c70f800b4e2000">输入和输出</a>
                </li>

                <li id="off-001431658427513eef3d9dd9f7c48599116735806328e81000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431658427513eef3d9dd9f7c48599116735806328e81000">Python基础</a>
                </li>

                <li id="off-001431658624177ea4f8fcb06bc4d0e8aab2fd7aa65dd95000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431658624177ea4f8fcb06bc4d0e8aab2fd7aa65dd95000">数据类型和变量</a>
                </li>

                <li id="off-001431664106267f12e9bef7ee14cf6a8776a479bdec9b9000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431664106267f12e9bef7ee14cf6a8776a479bdec9b9000">字符串和编码</a>
                </li>

                <li id="off-0014316724772904521142196b74a3f8abf93d8e97c6ee6000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014316724772904521142196b74a3f8abf93d8e97c6ee6000">使用list和tuple</a>
                </li>

                <li id="off-001431675624710bb20e9734ef343bbb4bd64bcd37d4b52000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431675624710bb20e9734ef343bbb4bd64bcd37d4b52000">条件判断</a>
                </li>

                <li id="off-001431676242561226b32a9ec624505bb8f723d0027b3e7000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431676242561226b32a9ec624505bb8f723d0027b3e7000">循环</a>
                </li>

                <li id="off-00143167793538255adf33371774853a0ef943280573f4d000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143167793538255adf33371774853a0ef943280573f4d000">使用dict和set</a>
                </li>

                <li id="off-00143167832686474803d3d2b7d4d6499cfd093dc47efcd000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143167832686474803d3d2b7d4d6499cfd093dc47efcd000">函数</a>
                </li>

                <li id="off-0014316784721058975e02b46cc45cb836bb0827607738d000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014316784721058975e02b46cc45cb836bb0827607738d000">调用函数</a>
                </li>

                <li id="off-001431679203477b5b364aeba8c4e05a9bd4ec1b32911e2000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431679203477b5b364aeba8c4e05a9bd4ec1b32911e2000">定义函数</a>
                </li>

                <li id="off-001431752945034eb82ac80a3e64b9bb4929b16eeed1eb9000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431752945034eb82ac80a3e64b9bb4929b16eeed1eb9000">函数的参数</a>
                </li>

                <li id="off-001431756044276a15558a759ec43de8e30eb0ed169fb11000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431756044276a15558a759ec43de8e30eb0ed169fb11000">递归函数</a>
                </li>

                <li id="off-0014317568446245b3e1c8837414168bcd2d485e553779e000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014317568446245b3e1c8837414168bcd2d485e553779e000">高级特性</a>
                </li>

                <li id="off-001431756919644a792ee4ead724ef7afab3f7f771b04f5000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431756919644a792ee4ead724ef7afab3f7f771b04f5000">切片</a>
                </li>

                <li id="off-0014317793224211f408912d9c04f2eac4d2af0d5d3d7b2000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014317793224211f408912d9c04f2eac4d2af0d5d3d7b2000">迭代</a>
                </li>

                <li id="off-001431779637539089fd627094a43a8a7c77e6102e3a811000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431779637539089fd627094a43a8a7c77e6102e3a811000">列表生成式</a>
                </li>

                <li id="off-0014317799226173f45ce40636141b6abc8424e12b5fb27000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014317799226173f45ce40636141b6abc8424e12b5fb27000">生成器</a>
                </li>

                <li id="off-00143178254193589df9c612d2449618ea460e7a672a366000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143178254193589df9c612d2449618ea460e7a672a366000">迭代器</a>
                </li>

                <li id="off-0014317848428125ae6aa24068b4c50a7e71501ab275d52000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014317848428125ae6aa24068b4c50a7e71501ab275d52000">函数式编程</a>
                </li>

                <li id="off-0014317849054170d563b13f0fa4ce6ba1cd86e18103f28000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014317849054170d563b13f0fa4ce6ba1cd86e18103f28000">高阶函数</a>
                </li>

                <li id="off-0014317852443934a86aa5bb5ea47fbbd5f35282b331335000" style="margin-left:3em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014317852443934a86aa5bb5ea47fbbd5f35282b331335000">map/reduce</a>
                </li>

                <li id="off-001431821084171d2e0f22e7cc24305ae03aa0214d0ef29000" style="margin-left:3em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431821084171d2e0f22e7cc24305ae03aa0214d0ef29000">filter</a>
                </li>

                <li id="off-0014318230588782cac105d0d8a40c6b450a232748dc854000" style="margin-left:3em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014318230588782cac105d0d8a40c6b450a232748dc854000">sorted</a>
                </li>

                <li id="off-001431835236741e42daf5af6514f1a8917b8aaadff31bf000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431835236741e42daf5af6514f1a8917b8aaadff31bf000">返回函数</a>
                </li>

                <li id="off-001431843456408652233b88b424613aa8ec2fe032fd85a000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431843456408652233b88b424613aa8ec2fe032fd85a000">匿名函数</a>
                </li>

                <li id="off-0014318435599930270c0381a3b44db991cd6d858064ac0000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014318435599930270c0381a3b44db991cd6d858064ac0000">装饰器</a>
                </li>

                <li id="off-00143184474383175eeea92a8b0439fab7b392a8a32f8fa000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143184474383175eeea92a8b0439fab7b392a8a32f8fa000">偏函数</a>
                </li>

                <li id="off-0014318447437605e90206e261744c08630a836851f5183000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014318447437605e90206e261744c08630a836851f5183000">模块</a>
                </li>

                <li id="off-001431845183474e20ee7e7828b47f7b7607f2dc1e90dbb000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431845183474e20ee7e7828b47f7b7607f2dc1e90dbb000">使用模块</a>
                </li>

                <li id="off-00143186362353505516c5d4e38456fb225c18cc5b54ffb000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143186362353505516c5d4e38456fb225c18cc5b54ffb000">安装第三方模块</a>
                </li>

                <li id="off-0014318645694388f1f10473d7f416e9291616be8367ab5000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014318645694388f1f10473d7f416e9291616be8367ab5000">面向对象编程</a>
                </li>

                <li id="off-001431864715651c99511036d884cf1b399e65ae0d27f7e000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431864715651c99511036d884cf1b399e65ae0d27f7e000">类和实例</a>
                </li>

                <li id="off-0014318650247930b1b21d7d3c64fe38c4b5a80d4469ad7000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014318650247930b1b21d7d3c64fe38c4b5a80d4469ad7000">访问限制</a>
                </li>

                <li id="off-001431865288798deef438d865e4c2985acff7e9fad15e3000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431865288798deef438d865e4c2985acff7e9fad15e3000">继承和多态</a>
                </li>

                <li id="off-001431866385235335917b66049448ab14a499afd5b24db000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431866385235335917b66049448ab14a499afd5b24db000">获取对象信息</a>
                </li>

                <li id="off-0014319117128404c7dd0cf0e3c4d88acc8fe4d2c163625000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014319117128404c7dd0cf0e3c4d88acc8fe4d2c163625000">实例属性和类属性</a>
                </li>

                <li id="off-00143186738532805c392f2cc09446caf3236c34e3f980f000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143186738532805c392f2cc09446caf3236c34e3f980f000">面向对象高级编程</a>
                </li>

                <li id="off-00143186739713011a09b63dcbd42cc87f907a778b3ac73000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143186739713011a09b63dcbd42cc87f907a778b3ac73000">使用__slots__</a>
                </li>

                <li id="off-00143186781871161bc8d6497004764b398401a401d4cce000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143186781871161bc8d6497004764b398401a401d4cce000">使用@property</a>
                </li>

                <li id="off-0014318680104044a55f4a9dbf8452caf71e8dc68b75a18000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014318680104044a55f4a9dbf8452caf71e8dc68b75a18000">多重继承</a>
                </li>

                <li id="off-0014319098638265527beb24f7840aa97de564ccc7f20f6000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014319098638265527beb24f7840aa97de564ccc7f20f6000">定制类</a>
                </li>

                <li id="off-00143191235886950998592cd3e426e91687cdae696e64b000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143191235886950998592cd3e426e91687cdae696e64b000">使用枚举类</a>
                </li>

                <li id="off-0014319106919344c4ef8b1e04c48778bb45796e0335839000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014319106919344c4ef8b1e04c48778bb45796e0335839000">使用元类</a>
                </li>

                <li id="off-001431913726557e5e43e1ee8d54ee486bddc3f607afb75000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431913726557e5e43e1ee8d54ee486bddc3f607afb75000">错误、调试和测试</a>
                </li>

                <li id="off-00143191375461417a222c54b7e4d65b258f491c093a515000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143191375461417a222c54b7e4d65b258f491c093a515000">错误处理</a>
                </li>

                <li id="off-001431915578556ad30ab3933ae4e82a03ee2e9a4f70871000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431915578556ad30ab3933ae4e82a03ee2e9a4f70871000">调试</a>
                </li>

                <li id="off-00143191629979802b566644aa84656b50cd484ec4a7838000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143191629979802b566644aa84656b50cd484ec4a7838000">单元测试</a>
                </li>

                <li id="off-0014319170285543a4d04751f8846908770660de849f285000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014319170285543a4d04751f8846908770660de849f285000">文档测试</a>
                </li>

                <li id="off-001431917590955542f9ac5f5c1479faf787ff2b028ab47000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431917590955542f9ac5f5c1479faf787ff2b028ab47000">IO编程</a>
                </li>

                <li id="off-001431917715991ef1ebc19d15a4afdace1169a464eecc2000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431917715991ef1ebc19d15a4afdace1169a464eecc2000">文件读写</a>
                </li>

                <li id="off-001431918785710e86a1a120ce04925bae155012c7fc71e000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431918785710e86a1a120ce04925bae155012c7fc71e000">StringIO和BytesIO</a>
                </li>

                <li id="off-001431925324119bac1bc7979664b4fa9843c0e5fcdcf1e000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431925324119bac1bc7979664b4fa9843c0e5fcdcf1e000">操作文件和目录</a>
                </li>

                <li id="off-00143192607210600a668b5112e4a979dd20e4661cc9c97000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143192607210600a668b5112e4a979dd20e4661cc9c97000">序列化</a>
                </li>

                <li id="off-0014319272686365ec7ceaeca33428c914edf8f70cca383000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014319272686365ec7ceaeca33428c914edf8f70cca383000">进程和线程</a>
                </li>

                <li id="off-001431927781401bb47ccf187b24c3b955157bb12c5882d000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431927781401bb47ccf187b24c3b955157bb12c5882d000">多进程</a>
                </li>

                <li id="off-00143192823818768cd506abbc94eb5916192364506fa5d000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143192823818768cd506abbc94eb5916192364506fa5d000">多线程</a>
                </li>

                <li id="off-001431928972981094a382e5584413fa040b46d46cce48e000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431928972981094a382e5584413fa040b46d46cce48e000">ThreadLocal</a>
                </li>

                <li id="off-0014319292979766bd3285c9d6b4942a8ea9b4e9cfb48d8000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014319292979766bd3285c9d6b4942a8ea9b4e9cfb48d8000">进程 vs. 线程</a>
                </li>

                <li id="off-001431929340191970154d52b9d484b88a7b343708fcc60000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431929340191970154d52b9d484b88a7b343708fcc60000">分布式进程</a>
                </li>

                <li id="off-00143193331387014ccd1040c814dee8b2164bb4f064cff000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143193331387014ccd1040c814dee8b2164bb4f064cff000">正则表达式</a>
                </li>

                <li id="off-0014319347182373b696e637cc04430b8ee2d548ca1b36d000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014319347182373b696e637cc04430b8ee2d548ca1b36d000">常用内建模块</a>
                </li>

                <li id="off-001431937554888869fb52b812243dda6103214cd61d0c2000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431937554888869fb52b812243dda6103214cd61d0c2000">datetime</a>
                </li>

                <li id="off-001431953239820157155d21c494e5786fce303f3018c86000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431953239820157155d21c494e5786fce303f3018c86000">collections</a>
                </li>

                <li id="off-001431954588961d6b6f51000ca4279a3415ce14ed9d709000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431954588961d6b6f51000ca4279a3415ce14ed9d709000">base64</a>
                </li>

                <li id="off-001431955007656a66f831e208e4c189b8a9e9f3f25ba53000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001431955007656a66f831e208e4c189b8a9e9f3f25ba53000">struct</a>
                </li>

                <li id="off-0014319556588648dd1fb0047a34d0c945ee33e8f4c90cc000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014319556588648dd1fb0047a34d0c945ee33e8f4c90cc000">hashlib</a>
                </li>

                <li id="off-00143200162233153835cfdd1a541a18ddc15059e3ddeec000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143200162233153835cfdd1a541a18ddc15059e3ddeec000">itertools</a>
                </li>

                <li id="off-001478651770626de401ff1c0d94f379774cabd842222ff000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001478651770626de401ff1c0d94f379774cabd842222ff000">contextlib</a>
                </li>

                <li id="off-001432002075057b594f70ecb58445da6ef6071aca880af000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432002075057b594f70ecb58445da6ef6071aca880af000">XML</a>
                </li>

                <li id="off-0014320023122880232500da9dc4a4486ad00426f081c15000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014320023122880232500da9dc4a4486ad00426f081c15000">HTMLParser</a>
                </li>

                <li id="off-001432688314740a0aed473a39f47b09c8c7274c9ab6aee000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432688314740a0aed473a39f47b09c8c7274c9ab6aee000">urllib</a>
                </li>

                <li id="off-001432002680493d1babda364904ca0a6e28374498d59a7000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432002680493d1babda364904ca0a6e28374498d59a7000">常用第三方模块</a>
                </li>

                <li id="off-0014320027235877860c87af5544f25a8deeb55141d60c5000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014320027235877860c87af5544f25a8deeb55141d60c5000">PIL</a>
                </li>

                <li id="off-001432712108300322c61f256c74803b43bfd65c6f8d0d0000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432712108300322c61f256c74803b43bfd65c6f8d0d0000">virtualenv</a>
                </li>

                <li id="off-00143200341926302f99cf6f6414dca9dfaaf6e5a25a5b1000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143200341926302f99cf6f6414dca9dfaaf6e5a25a5b1000">图形界面</a>
                </li>

                <li id="off-0014320037274136d31bd9979d648cd822375394e29a871000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014320037274136d31bd9979d648cd822375394e29a871000">网络编程</a>
                </li>

                <li id="off-0014320037768360d53e4e935ca4a1f96eed1c896ad1217000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014320037768360d53e4e935ca4a1f96eed1c896ad1217000">TCP/IP简介</a>
                </li>

                <li id="off-001432004374523e495f640612f4b08975398796939ec3c000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432004374523e495f640612f4b08975398796939ec3c000">TCP编程</a>
                </li>

                <li id="off-001432004977916a212e2168e21449981ad65cd16e71201000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432004977916a212e2168e21449981ad65cd16e71201000">UDP编程</a>
                </li>

                <li id="off-001432005156604f38836be1707453eb025ce8c3079978d000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432005156604f38836be1707453eb025ce8c3079978d000">电子邮件</a>
                </li>

                <li id="off-001432005226355aadb8d4b2f3f42f6b1d6f2c5bd8d5263000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432005226355aadb8d4b2f3f42f6b1d6f2c5bd8d5263000">SMTP发送邮件</a>
                </li>

                <li id="off-0014320098721191b70a2cf7b5441deb01595edd8147196000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014320098721191b70a2cf7b5441deb01595edd8147196000">POP3收取邮件</a>
                </li>

                <li id="off-001432010325987131e75bf6b3543429a2975f88ce8ffa9000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432010325987131e75bf6b3543429a2975f88ce8ffa9000">访问数据库</a>
                </li>

                <li id="off-001432010494717e1db78cd172e4d52b853e7fd38d6985c000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432010494717e1db78cd172e4d52b853e7fd38d6985c000">使用SQLite</a>
                </li>

                <li id="off-0014320107391860b39da6901ed41a296e574ed37104752000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014320107391860b39da6901ed41a296e574ed37104752000">使用MySQL</a>
                </li>

                <li id="off-0014320114981139589ac5f02944601ae22834e9c521415000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014320114981139589ac5f02944601ae22834e9c521415000">使用SQLAlchemy</a>
                </li>

                <li id="off-0014320118765877e93ecea4e6449acb157e9efae8b40b6000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014320118765877e93ecea4e6449acb157e9efae8b40b6000">Web开发</a>
                </li>

                <li id="off-001432011939547478fd5482deb47b08716557cc99764e0000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432011939547478fd5482deb47b08716557cc99764e0000">HTTP协议简介</a>
                </li>

                <li id="off-0014320122322996f770fbf5da84ead84a1731e1dde129f000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014320122322996f770fbf5da84ead84a1731e1dde129f000">HTML简介</a>
                </li>

                <li id="off-001432012393132788f71e0edad4676a3f76ac7776f3a16000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432012393132788f71e0edad4676a3f76ac7776f3a16000">WSGI接口</a>
                </li>

                <li id="off-001432012745805707cb9f00a484d968c72dbb7cfc90b91000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432012745805707cb9f00a484d968c72dbb7cfc90b91000">使用Web框架</a>
                </li>

                <li id="off-0014320129740415df73bf8f81e478982bf4d5c8aa3817a000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014320129740415df73bf8f81e478982bf4d5c8aa3817a000">使用模板</a>
                </li>

                <li id="off-00143208573480558080fa77514407cb23834c78c6c7309000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143208573480558080fa77514407cb23834c78c6c7309000">异步IO</a>
                </li>

                <li id="off-001432090171191d05dae6e129940518d1d6cf6eeaaa969000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432090171191d05dae6e129940518d1d6cf6eeaaa969000">协程</a>
                </li>

                <li id="off-001432090954004980bd351f2cd4cc18c9e6c06d855c498000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432090954004980bd351f2cd4cc18c9e6c06d855c498000">asyncio</a>
                </li>

                <li id="off-00144661533005329786387b5684be385062a121e834ac7000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00144661533005329786387b5684be385062a121e834ac7000">async/await</a>
                </li>

                <li id="off-0014320981492785ba33cc96c524223b2ea4e444077708d000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014320981492785ba33cc96c524223b2ea4e444077708d000">aiohttp</a>
                </li>

                <li id="off-001432170876125c96f6cc10717484baea0c6da9bee2be4000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432170876125c96f6cc10717484baea0c6da9bee2be4000">实战</a>
                </li>

                <li id="off-001432170937506ecfb2f6adf8e4757939732f3e32b781c000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432170937506ecfb2f6adf8e4757939732f3e32b781c000">Day 1 - 搭建开发环境</a>
                </li>

                <li id="off-00143217133614028a244ea855b40a586b551c616d3b2c9000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143217133614028a244ea855b40a586b551c616d3b2c9000">Day 2 - 编写Web App骨架</a>
                </li>

                <li id="off-0014323389656575142d0bcfeec434e9639a80d3684a7da000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014323389656575142d0bcfeec434e9639a80d3684a7da000">Day 3 - 编写ORM</a>
                </li>

                <li id="off-001432338991719a4c5c42ef08e4f44ad0f293ad728a27b000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432338991719a4c5c42ef08e4f44ad0f293ad728a27b000">Day 4 - 编写Model</a>
                </li>

                <li id="off-001432339008728d0ddbe19ee594980be3f0644a9371894000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432339008728d0ddbe19ee594980be3f0644a9371894000">Day 5 - 编写Web框架</a>
                </li>

                <li id="off-001432339034336cbf72acd43354d72831461e3871d9f2e000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432339034336cbf72acd43354d72831461e3871d9f2e000">Day 6 - 编写配置文件</a>
                </li>

                <li id="off-001432339095180ce91c53cdab841bfa9c342a297b886fe000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432339095180ce91c53cdab841bfa9c342a297b886fe000">Day 7 - 编写MVC</a>
                </li>

                <li id="off-001432339124159f00f6ab876c44349a3fd8eb26d0c291e000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432339124159f00f6ab876c44349a3fd8eb26d0c291e000">Day 8 - 构建前端</a>
                </li>

                <li id="off-0014323391480651a75b5fda4cb4c789208191682fc2c70000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014323391480651a75b5fda4cb4c789208191682fc2c70000">Day 9 - 编写API</a>
                </li>

                <li id="off-001432339169382f45b9bd7b45d47ceb3e2b42846e0e991000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432339169382f45b9bd7b45d47ceb3e2b42846e0e991000">Day 10 - 用户注册和登录</a>
                </li>

                <li id="off-00143233918656129f4ad3ac29e4f728dc72b5d2368215a000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143233918656129f4ad3ac29e4f728dc72b5d2368215a000">Day 11 - 编写日志创建页</a>
                </li>

                <li id="off-001432339210950e063b4795d574036bc5dcf0c2449bc52000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432339210950e063b4795d574036bc5dcf0c2449bc52000">Day 12 - 编写日志列表页</a>
                </li>

                <li id="off-001432339228196a8eb6fb8832b48b5aa0d740346536ead000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432339228196a8eb6fb8832b48b5aa0d740346536ead000">Day 13 - 提升开发效率</a>
                </li>

                <li id="off-001432339247097eea476bf61f8496092cc1b663eae1848000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432339247097eea476bf61f8496092cc1b663eae1848000">Day 14 - 完成Web App</a>
                </li>

                <li id="off-0014323392805925d5b69ddad514511bf0391fe2a0df2b0000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014323392805925d5b69ddad514511bf0391fe2a0df2b0000">Day 15 - 部署Web App</a>
                </li>

                <li id="off-001432339330096121ae7e38be44570b7fbd0d8faae26f6000" style="margin-left:2em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/001432339330096121ae7e38be44570b7fbd0d8faae26f6000">Day 16 - 编写移动App</a>
                </li>

                <li id="off-00143278155868605a65e244e6642dfa533753e6338ab5b000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/00143278155868605a65e244e6642dfa533753e6338ab5b000">FAQ</a>
                </li>

                <li id="off-0014323396477522f8ff26917934f53b49559ab4dc5eab2000" style="margin-left:1em;">
                    <a href="/wiki/0014316089557264a6b348958f449949df42a6d3a2e542c000/0014323396477522f8ff26917934f53b49559ab4dc5eab2000">期末总结</a>
                </li>

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
                    <a href="/">廖雪峰的官方网站</a>&copy;2015
                    <br>
                    Powered by <a href="http://js.itranswarp.com" target="_blank">iTranswarp.js</a>
                </p>
            </div>
            <div class="uk-width-small-1-2 uk-width-medium-1-3 x-hidden-tiny">
                <a href="/feed" target="_blank" class="uk-icon-button uk-icon-rss" data-uk-tooltip title="Subscribe the RSS"></a>
                <a href="https://github.com/michaelliao/itranswarp.js" target="_blank" class="uk-icon-button uk-icon-github" data-uk-tooltip title="View source code on GitHub"></a>
                <a href="https://twitter.com/liaoxuefeng" target="_blank" class="uk-icon-button uk-icon-twitter" data-uk-tooltip title="Follow author on Twitter"></a>
                <a href="http://www.weibo.com/liaoxuefeng" target="_blank" class="uk-icon-button uk-icon-weibo uk-visible-large uk-hidden-medium" data-uk-tooltip title="Follow author on Weibo"></a>
            </div>
            <div class="uk-width-medium-1-3 uk-hidden-small">
                <p>
                    <a href="https://github.com/michaelliao/itranswarp.js/issues" target="_blank">Feedback</a>
                    <br>
                    <a href="https://github.com/michaelliao/itranswarp.js/blob/master/LICENSE" target="_blank">License</a>
                </p>
            </div>
        </div>
    </div>
</div>

<div id="modal-signin" class="uk-modal">
    <div class="uk-modal-dialog">
        <a class="uk-modal-close uk-close"></a>
        <div class="uk-modal-header">
            <h2>Please Sign In</h2>
        </div>
        <p>You can sign in directly without register:</p>

        <h3><a href="/auth/from/weibo"><i class="uk-icon-weibo"></i> 使用新浪微博登录</a></h3>

        <p>You need authorize to allow connect to your social passport for the first time.</p>
    </div>
</div>

<div id="oldBrowser">
    <div class="uk-alert uk-alert-danger" data-uk-alert>
        <a href="#0" class="uk-alert-close uk-close"></a>
        <p>
            WARNING: You are using an old browser that does not support HTML5.
            Please choose a modern browser (<a href="http://www.google.com/chrome" target="_blank">Chrome</a> / <a href="http://www.mozilla.org/firefox/" target="_blank">Firefox</a> / <a href="http://www.apple.com/safari/" target="_blank">Sarafi</a>) to get a good experience.
        </p>
    </div>
</div>
</body>
</html>
