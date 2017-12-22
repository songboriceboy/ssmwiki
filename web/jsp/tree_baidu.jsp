

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
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" href="images/apple-touch-icon.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/editor-md-master/css/editormd.css" />--%>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>--%>
    <%--<script src="${pageContext.request.contextPath}/editor-md-master/jquery.min.js"></script>--%>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor1_4_3/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor1_4_3/ueditor.all.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor1_4_3/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/ueditor1_4_3/third-party/jquery-1.10.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/uikit.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>

    <script>

        var ue = null;
        $(function () {

//            alert("hello");
            ue = UE.getEditor('editor');

            var content = '${article.content}';
            //判断ueditor 编辑器是否创建成功
//            ue.addListener("ready", function () {

//                ue.setContent(content);

//            });
            $('#title_tree').jstree({ 'core' : {
                "check_callback" : true,

                'data': {
                    'url': '${pageContext.request.contextPath}/article/getAll.action?tid=${tid}',  //异步加载jstree html格式的数据地址
                    'data': function (node) {
                        return { 'id': node.id };
                    }
                }
            },

                "types" : {
                    "#" : {
                        "max_children" : 1,
                        "max_depth" : 4,
                        "valid_children" : ["root"]
                    },
                    "root" : {
                        "icon" : "/static/3.3.3/assets/images/tree_icon.png",
                        "valid_children" : ["default"]
                    },
                    "default" : {
                        "valid_children" : ["default","file"]
                    },
                    "file" : {
                        "icon" : "glyphicon glyphicon-file",
                        "valid_children" : []
                    }
                },

                "plugins": ["thems", "html_data", "ui", "crrm", "cookies", "dnd", "search", "types", "hotkeys", "contextmenu"]



            });

            <%--testEditor = editormd("test-editormd", {--%>
                <%--width   : "90%",--%>
                <%--height  : 640,--%>
                <%--syncScrolling : "single",--%>
                <%--path    : "${pageContext.request.contextPath}/editor-md-master/lib/",--%>
                <%--htmlDecode: "style,script,iframe",  // you can filter tags decode--%>
                <%--emoji: true,--%>
                <%--tocm:true ,    // Using [TOCM]--%>
                <%--tocContainer: "#custom-toc-container", // 自定义 ToC 容器层--%>
                <%--tocDropdown:true,--%>
                <%--taskList: true,--%>
                <%--tex: true,  // 默认不解析--%>
                <%--flowChart: true,  // 默认不解析--%>
                <%--sequenceDiagram: true, // 默认不解析--%>
                <%--saveHTMLToTextarea : true--%>
            <%--});--%>
            var tree = $("#title_tree");
            tree.bind("loaded.jstree", function (event, data) {
                tree.jstree("open_all");
            });
            tree.bind("refresh.jstree", function (event, data) {
                tree.jstree("open_all");
            });
            $("#title_tree").bind("move_node.jstree", function (e, data) {
                console.log('move_node');
                console.log(data.node);
                $.post('${pageContext.request.contextPath}/article/move.action', { 'tagid':${tid},'id' : data.node.id,'parent' : data.node.parent, 'text' : data.node.text, 'article_content':data.node.parents.length })
                        .done(function (d) {
                            alert(d.id);
                            data.instance.set_id(data.node, d.id);

                        })
                        .fail(function () {
                            data.instance.refresh();
                        });
            });

            $("#title_tree").bind("activate_node.jstree", function (e, data) {
                console.log(data.node);

                $.getJSON('${pageContext.request.contextPath}/article/open_article.action', { 'tagid':${tid},'id' : data.node.id,'parent' : data.node.parent, 'text' : data.node.text })
                        .done(function (article) {

                            if(article != null)
                            {

                                ue.setContent(article.article_content);
                              //  testEditor.setMarkdown(article.mark_content);
                                $("#title").val(data.node.text);
                                $("#aid").val(article.id);
                                $("#nodeid").val(data.node.id);
                            }
                            else
                            {
                              //  testEditor.setMarkdown("");
                                ue.setContent("");
                                $("#title").val(data.node.text);
                                $("#aid").val(0);
                                $("#nodeid").val(data.node.id);
                            }


                        })
                        .fail(function () {
                            data.instance.refresh();
                        });
            });

            $("#title_tree").bind("rename_node.jstree", function (e, data) {
                console.log(data.node);
                // alert("添加？"+data.node.id);
//                alert(data.parent);
                <%--$.get('${pageContext.request.contextPath}/article/add.action', { 'id' : data.node.parent, 'text' : data.node.text })--%>
                $.post('${pageContext.request.contextPath}/article/modify.action', { 'tagid':${tid},'id' : data.node.id,'parent' : data.node.parent, 'text' : data.node.text })
                        .done(function (d) {
                            alert(d.id);
                            data.instance.set_id(data.node, d.id);

                        })
                        .fail(function () {
                            data.instance.refresh();
                        });
            });
            $("#title_tree").bind("create_node.jstree", function (e, data) {
                console.log(data.node);
                // alert("添加？"+data.node.id);
//                alert(data.parent);
                <%--$.get('${pageContext.request.contextPath}/article/add.action', { 'id' : data.node.parent, 'text' : data.node.text })--%>
                $.post('${pageContext.request.contextPath}/article/add.action', { 'tagid':${tid}, 'article_content':data.node.parents.length,'parent' : data.node.parent, 'text' : data.node.text })
                        .done(function (d) {
                            alert(d.id);
                            data.instance.set_id(data.node, d.id);

                        })
                        .fail(function () {
                            data.instance.refresh();
                        });
            });

            $("#title_tree").bind("delete_node.jstree", function (e, data) {
                console.log(data.node);
                // alert("添加？"+data.node.id);
//                alert(data.parent);
                <%--$.get('${pageContext.request.contextPath}/article/add.action', { 'id' : data.node.parent, 'text' : data.node.text })--%>
                $.post('${pageContext.request.contextPath}/article/del.action', { 'id' : data.node.id,'text' : data.node.text })
                        .done(function (d) {
                            alert(d.id);
                            data.instance.set_id(data.node, d.id);

                        })
                        .fail(function () {
                            data.instance.refresh();
                        });
            });

            $("#submit").click(function () {
                var param = $("#article_form").serialize();
                $.post('${pageContext.request.contextPath}/article/save_article_baidu.action', param)
                        .done(function (article) {
                                if(article.id >= 0)
                                alert("ok");
                        })
                        .fail(function () {
                            data.instance.refresh();
                        });
            })

        });
    </script>
</head>
<body class="tm-background">

<%@ include file="header/header.jsp"%>

<div class="tm-middle">
    <div class="uk-container uk-container-center">
        <div class="uk-grid" data-uk-grid-margin>
            <%@ include file="header/titletree.jsp"%>
            <div class="tm-main uk-width-medium-3-4">

                <div>
                    <form action="${pageContext.request.contextPath}/article/add_or_modify_article.action" method="post"
                          target="_blank" id = "article_form">
                        <h1>完整demo</h1>
                        <input type="hidden" name="id" value="" id = "aid">
                        <input type="hidden" name="nodeid" value="" id = "nodeid">

                        标题： <input type="text" name="article_title" value="" id = "title">

                        <%--<div class="editormd" id="test-editormd">--%>



                            <%--<textarea class="editormd-markdown-textarea" name="mark_content" id = "mark_content"></textarea>--%>
                            <%--<!-- html textarea 需要开启配置项 saveHTMLToTextarea == true -->--%>
                            <%--&lt;%&ndash;<textarea class="editormd-html-textarea" name="article_content"></textarea>&ndash;%&gt;--%>

                        <%--</div>--%>
                        <script id="editor" type="text/plain" style="width:1024px;height:500px;">
                        </script>
                        <input type="button" value="保存博文" id = "submit">
                    </form>

                </div>


            </div>
        </div>
    </div>
</div>
</div>

<%@ include file="header/footer.jsp"%>
<script src="${pageContext.request.contextPath}/editor-md-master/editormd.min.js"></script>
<script src="${pageContext.request.contextPath}/js/uikit.min.js"></script>
</body>
<html>
