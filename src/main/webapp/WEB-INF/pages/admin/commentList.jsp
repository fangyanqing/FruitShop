<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>评论列表页</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.8.8/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.8.8/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.8.8/themes/color.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.8.8/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.8.8/jquery.easyui.min.js"></script>
</head>
<body>
	<form id="ff" method="post">
			<div style="float: left; padding: 10px 0 0 10px;">
				<label for="commentStates">状态查询：</label>
				<select id="commentStates" class="easyui-combobox"
					name="commentStates" style="width: 200px;">
					<option value="">请选择</option>
					<option value="0">未审核</option>
					<option value="1">已审核</option>
				</select> 
				<!-- <input class="easyui-textbox"
					type="text" name="commentStates" id="proname"
					data-options="validType:'commentStates'" /> -->
			</div>
			
			<div style="float: left; padding: 10px 0 0 10px;">
				<a href="#" class="easyui-linkbutton" iconCls="icon-search"
					plain="true" onclick="doSearch()">查询</a>
			</div>

		</form>
    <!-- 数据列表  start -->
	<!-- 在页面中使用easy ui组件进行界面编程 ,数据表格组件 -->
	<table id="comment_dg" title="供应商列表" class="easyui-datagrid"
		style="width: 100%; height: 450px"
		url="${param.request.contextPath}/comment/list" toolbar="#comment_toolbar"
		pagination="true" rownumbers="true" fitColumns="true"
		singleSelect="true">
		<thead>
			<tr>
				<th field="cb" checkbox="true" align="center"></th>
				<!--  field字段需要与返回数据的属性名一致 -->
				<th field="commentId" align="center">角色ID</th>
				<th field="commentLevel" width="50">评论等级</th>
				<th field="commentText" width="50">评论内容</th>
				<th field="commentTime" width="50">评论时间</th>
				<th field="userId" formatter="userNameFormatter" width="50">用户名称</th>
				<th field="fruitId" formatter="fruitNameFormatter" width="50">水果名称</th>
				<th field="commentStates" formatter="statusFormatter" width="50">审核状态</th>
				<th field="adminName" formatter="adminNameFormatter" width="50">审核人</th>
				<th field="commentReason" width="50">审核说明</th>
			
			</tr>
		</thead>
	</table>
	
	<!-- 工具条组件 -->
	<div id="comment_toolbar">
	
		<a	href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="editStatus()">修改状态</a>

	</div>
	
	<!-- 修改状态 start-->
	<div id="comment2_dlg" class="easyui-dialog"
		style="width: 400px; height: 280px; padding: 10px 20px" closed="true"
		buttons="#comment2_dlg-buttons">
		<div class="ftitle">修改状态信息</div>
		<form id="comment2_fm" enctype="multipart/form-data" method="post">
		<input name="adminId"  type="hidden" value="${SESSION_ADMIN.adminId}">
			<div class="fitem">
				<label>评论状态:</label>
				 <select id="cc" class="easyui-combobox"
					name="commentStates" style="width: 200px;">
					<option value="0">未审核</option>
					<option value="1">已审核</option>
					<option value="-1">违规评论</option>
				</select>
			</div>
			<br>
			
			<div class="fitem">
				<label>管理员名称:</label>
				<input id="commAdmin" disabled="disabled" class="easyui-textbox">
			</div>
			<br>
			<div class="fitem">
				<label>申请说明:</label> <input name="commentReason" class="easyui-validatebox" required="true">
			</div>
			<br>
		</form>
	</div>
	
	<div id="comment2_dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
			onclick="saveComment2()">保存</a>
			 <a href="#" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#comment2_dlg').dialog('close')">取消</a>
	</div>
	<!--修改状态  end-->
	

	<script type="text/javascript">

		function statusFormatter(value){
			if(value==1){
				return '已审核';
			}else{
				return '未审核';
			}
			
		}
	 	//修改状态
		function editStatus() {
			$('#comment2_fm').form('clear');

			$('#commAdmin').textbox('readonly',true);
			$('#commAdmin').textbox('setValue','${SESSION_ADMIN.adminName}');
			
			var row = $('#comment_dg').datagrid('getSelected');
			if (row) {
				$('#comment2_dlg').dialog('open').dialog('setTitle', '修改状态');
				$('#comment2_fm').form('load', row);
				url = '${pageContext.request.contextPath}/comment/edit?commentId='
						+ row.commentId;
			}
		} 

		//模糊搜索
		var url;
		function doSearch(){
			$('#comment_dg').datagrid('load',{
				commentStates: $('#commentStates').combobox('getValue')
			});
			url = '${pageContext.request.contextPath}/comment/list';
		}
	

		function userNameFormatter(value, row, index) {
			//value是传递进来的category对象；row是当前行数据，index是第几行数据
			//return value.categoryName;
			return row.user.userName;
		}
		function fruitNameFormatter(value, row, index) {
			//value是传递进来的category对象；row是当前行数据，index是第几行数据
			//return value.categoryName;
			return row.fruit.fruitName;
		}

		//easy ui在处理多列数据时，需要使用格式化器解析数据
		function adminNameFormatter(value, row, index) {
			//value是传递进来的category对象；row是当前行数据，index是第几行数据
			//return value.categoryName;
			return row.admin.adminName;
		}


		//保存评论状态
		function saveComment2() {
			$('#comment2_fm').form('submit', {
				url : url,
				onSubmit : function() {
					return $(this).form('validate');
				},
				success : function(result) {
					var result = eval('(' + result + ')');
					if (!result.success) {
						$.messager.show({
							title : 'Error',
							msg : result.errorMsg
						});
					} else {
						$.messager.show({
							title : 'Info',
							msg : result.errorMsg
						});
					}

					$('#comment2_dlg').dialog('close'); 
					$('#comment_dg').datagrid('reload'); 
				}
			});
		}

		
	</script>

</body>
</html>