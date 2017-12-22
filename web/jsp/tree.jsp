

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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/editor-md-master/css/editormd.css" />
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>--%>
    <script src="${pageContext.request.contextPath}/editor-md-master/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/uikit.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>

    <script>

        var testEditor = null;
        $(function () {

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

            /*  testEditor = editormd("test-editormd", {
             width   : "90%",
             height  : 640,
             syncScrolling : "single",
             path    : "${pageContext.request.contextPath}/editor-md-master/lib/",
             htmlDecode: "style,script,iframe",  // you can filter tags decode
             emoji: true,
             tocm:true ,    // Using [TOCM]
             tocContainer: "#custom-toc-container", // 自定义 ToC 容器层
             tocDropdown:true,
             taskList: true,
             tex: true,  // 默认不解析
             flowChart: true,  // 默认不解析
             sequenceDiagram: true, // 默认不解析
             saveHTMLToTextarea : true
             });*/

            var testEditor = editormd({
                id: "test-editormd",
//                height: 840,
                width   : "90%",
                height  : 640,
                path: "${pageContext.request.contextPath}/editor-md-master/lib/",
                toolbarIcons: function () {
                    // Or return editormd.toolbarModes[name]; // full, simple, mini
                    // Using "||" set icons align right.
                    return ["undo", "redo", "|", "bold", "hr", "|", "preview", "watch", "|", "fullscreen", "info", "testIcon", "testIcon2", "file", "faicon", "||", "watch", "fullscreen", "preview", "testIcon"]
                },
                //toolbar  : false,             // 关闭工具栏
                codeFold: true,
                searchReplace: true,
                saveHTMLToTextarea: true,      // 保存 HTML 到 Textarea
                htmlDecode: "style,script,iframe|on*",            // 开启 HTML 标签解析，为了安全性，默认不开启
                emoji: true,
                taskList: true,
                tocm: true,          // Using [TOCM]
                tex: true,                      // 开启科学公式 TeX 语言支持，默认关闭
                //previewCodeHighlight : false,  // 关闭预览窗口的代码高亮，默认开启
                flowChart: true,                // 疑似 Sea.js与 Raphael.js 有冲突，必须先加载 Raphael.js ，Editor.md 才能在 Sea.js 下正常进行；
                sequenceDiagram: true,          // 同上
                //dialogLockScreen : false,      // 设置弹出层对话框不锁屏，全局通用，默认为 true
                //dialogShowMask : false,     // 设置弹出层对话框显示透明遮罩层，全局通用，默认为 true
                //dialogDraggable : false,    // 设置弹出层对话框不可拖动，全局通用，默认为 true
                //dialogMaskOpacity : 0.4,    // 设置透明遮罩层的透明度，全局通用，默认值为 0.1
                //dialogMaskBgColor : "#000", // 设置透明遮罩层的背景颜色，全局通用，默认为 #fff
                imageUpload: true,
                imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                imageUploadURL: "{:url('api/uploader/uploadEditorImg?pic_type=10')}",
                onload: function () {
                    this.on('paste', function () {
                        console.log(1);
                    });
                }
            });

            /**
             * 咱贴上传图片
             */
            $("#test-editormd").on('paste', function (ev) {
                var data = ev.clipboardData;
                var items = (event.clipboardData || event.originalEvent.clipboardData).items;
                for (var index in items) {
                    var item = items[index];
                    if (item.kind === 'file') {
                        var blob = item.getAsFile();
                        var reader = new FileReader();
                        reader.onload = function (event) {
                            var base64 = event.target.result;
                            //ajax上传图片
                            $.post("${pageContext.request.contextPath}/article/uploadimg.action",{base:base64}, function (res) {
                                // layer.msg(ret.msg);
                                var ret = JSON.parse(res);
                                if (ret.code === 1) {
                                    //新一行的图片显示
                                    testEditor.insertValue("\n![" + "image.png" + "](${pageContext.request.contextPath}/" + ret.path + ")");
                                }
                            });
                        }; // data url!
                        var url = reader.readAsDataURL(blob);
                    }
                }
            });




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


                                testEditor.setMarkdown(article.mark_content);
                                $("#title").val(data.node.text);
                                $("#aid").val(article.id);
                                $("#nodeid").val(data.node.id);
                            }
                            else
                            {
                                testEditor.setMarkdown("");

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
                $.post('${pageContext.request.contextPath}/article/save_article.action', param)
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

                        <div class="editormd" id="test-editormd">



                            <textarea class="editormd-markdown-textarea" name="mark_content" id = "mark_content"></textarea>
                            <!-- html textarea 需要开启配置项 saveHTMLToTextarea == true -->
                            <%--<textarea class="editormd-html-textarea" name="article_content"></textarea>--%>

                        </div>
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
