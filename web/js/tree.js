var tree = {
	zTree : null,
	max : null,
	setting : {
		view : {
			selectedMulti : false,
			addHoverDom : function(treeId, treeNode){
				var sObj = $("#" + treeNode.tId + "_span");
				if (treeNode.editNameFlag || $("#addBtn_"+treeNode.tId).length>0) return;
				var addStr = "<span class='button add' id='addBtn_" + treeNode.tId + "' title='添加' onfocus='this.blur();'></span>";
				sObj.after(addStr);
				var btn = $("#addBtn_"+treeNode.tId);
				if (btn) btn.bind("click", function(){
					var parameter = {
						mid:++tree.max,
						pid:treeNode.mid,
						name:"新节点 " + tree.max
					};
					tree.zTree.addNodes(treeNode, parameter);
					/**
					 * 处理添加节点
					 */
					$.post("menuitem/insert",parameter);
					return false;
				});
			},
			removeHoverDom : function(treeId, treeNode){
				$("#addBtn_"+treeNode.tId).unbind().remove();
			}
		},
		data : {
			simpleData : {
				enable : true,
				idKey : "mid",
				pIdKey : "pid"
			}
		},
		edit : {
			editNameSelectAll : true,
			enable :true,
			removeTitle : "删除",
			renameTitle : "修改",
			drag : {
				autoExpandTrigger : false,
				isMove : false,
				isCopy : false,
				prev : false,
				next : false,
				inner : false
			}
		},
		callback : {
			beforeRename : function(treeId, treeNode, newName, isCancel){
				if(newName.trim().length == 0){
					alert("名称不能为空或空格！");
					return false;
				}
				return window.confirm("确定将 " + treeNode.name + " 修改为 " + newName + " 吗？");
			},
			onRename : function(event, treeId, treeNode, isCancel){
				/**
				 * 处理更改名称
				 */
				var parameter = {
					mid : treeNode.mid,
					name : treeNode.name
				};
				$.post("menuitem/update", parameter);
			},
			beforeRemove : function(treeId, treeNode){
				return window.confirm("确定删除 " + treeNode.name + " 及其所有子节点吗？");
			},
			onRemove : function(event, treeId, treeNode){
				/**
				 * 处理删除节点信息
				 */
				var parameter = {
					mid : treeNode.mid
				};
				$.post("menuitem/deleteById", parameter);
				var nodes = tree.zTree.transformToArray(treeNode.children);
				$.each(nodes,function(index,node){
					var parameter = {
						mid : node.mid
					};
					$.post("menuitem/deleteById", parameter);
				});
			}
		}
	},
	loadTree : function() {
		$.post("article/getAll", null, function(data) {
			tree.zTree = $.fn.zTree.init($("#tree"), tree.setting, data);
		});
		// $.post("menuitem/getMax", null, function(data) {
		// 	tree.max = data;
		// });
	}
};
$(document).ready(function() {
	tree.loadTree();
});