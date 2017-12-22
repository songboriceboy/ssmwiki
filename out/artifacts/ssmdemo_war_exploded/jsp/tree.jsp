<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>

    <script>


        $(function () {
            $('#using_json_2').jstree({ 'core' : {
                "check_callback" : true,

                'data': {
                    'url': '${pageContext.request.contextPath}/article/getAll.action',  //异步加载jstree html格式的数据地址
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

            $("#using_json_2").bind("rename_node.jstree", function (e, data) {
                console.log(data.node);
                // alert("添加？"+data.node.id);
//                alert(data.parent);
                <%--$.get('${pageContext.request.contextPath}/article/add.action', { 'id' : data.node.parent, 'text' : data.node.text })--%>
                $.post('${pageContext.request.contextPath}/article/modify.action', { 'id' : data.node.id,'parent' : data.node.parent, 'text' : data.node.text })
                        .done(function (d) {
                            alert(d.id);
                            data.instance.set_id(data.node, d.id);

                        })
                        .fail(function () {
                            data.instance.refresh();
                        });
            });
            $("#using_json_2").bind("create_node.jstree", function (e, data) {
                console.log(data.node);
                // alert("添加？"+data.node.id);
//                alert(data.parent);
                <%--$.get('${pageContext.request.contextPath}/article/add.action', { 'id' : data.node.parent, 'text' : data.node.text })--%>
                $.post('${pageContext.request.contextPath}/article/add.action', { 'article_content':data.node.parents.length,'parent' : data.node.parent, 'text' : data.node.text })
                        .done(function (d) {
                            alert(d.id);
                            data.instance.set_id(data.node, d.id);

                        })
                        .fail(function () {
                            data.instance.refresh();
                        });
            });

            $("#using_json_2").bind("delete_node.jstree", function (e, data) {
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

        });
    </script>
</head>
<body>
<div class="col-md-4 col-sm-8 col-xs-8">
    <button type="button" class="btn btn-success btn-sm" onclick="demo_create();"><i class="glyphicon glyphicon-asterisk"></i> Create</button>
    <button type="button" class="btn btn-warning btn-sm" onclick="demo_rename();"><i class="glyphicon glyphicon-pencil"></i> Rename</button>
    <button type="button" class="btn btn-danger btn-sm" onclick="demo_delete();"><i class="glyphicon glyphicon-remove"></i> Delete</button>
</div>

<div id="using_json_2"></div>
</body>
</html>