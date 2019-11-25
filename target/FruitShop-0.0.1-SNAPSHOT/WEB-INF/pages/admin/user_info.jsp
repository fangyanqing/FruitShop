<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>会员信息表</title>
    <link href="">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/themes/color.css">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/demo/demo.css">
	<script type="text/javascript" src="${param.request.contextPath}/jquery-easyui-1.8.8/jquery.min.js"></script>
	<script type="text/javascript" src="${param.request.contextPath}/jquery-easyui-1.8.8/jquery.easyui.min.js"></script>
</head>
<body>
  <form id="ff" method="post">
			<div style="float: left; padding: 0px 0 0 5px;">
				<label for="userName"></label> <input class="easyui-textbox"
				prompt="按名字和昵称"	type="text" name="userName" id="userName" 
					data-options="validType:'userName'" />
			</div>
			<div style="float: left; padding: 0px 0 0 5px;">
				<a href="#" class="easyui-linkbutton" iconCls="icon-search"
					plain="true" onclick="doSearch()">查询</a>
			</div>
	</form>
    <table id="user_dg" title="会员列表" class="easyui-datagrid" 
           style="width:100%; height: 450px" 
			url="${param.request.contextPath}/user/user_list"
			 pagination="true"
			 fitColumns="true" singleSelect="true">
			 
		<thead>
			<tr>
			   <th field="cb" checkbox="true" align="center"></th>
				<th field="userId" width="50">会员编号</th>
				<th field="userName" width="50">会员姓名</th>
				<th field="nickName" width="50">昵称</th>
				<!-- <th field="userPwd" width="50">密码</th> -->
				<th field="userSex" width="30">性别</th>
				<th field="userImage" formatter="imageFormatter" align="center"
					width="50">头像</th>
			    <th field="userPhone" width="50">电话号码</th>
				<th field="userEmail" width="50">邮箱</th>
			    <th field="userAddress" width="50">地址</th>					
			</tr>
		</thead>
	</table>

	<!-- 新增和修改表单  start -->
	<div id="user_dlg" class="easyui-dialog"
		style="width: 400px; height: 280px; padding: 10px 20px" closed="true"
		buttons="#user_dlg-buttons">
		<div class="ftitle">管理员息管理</div>
		<form id="user_fm" enctype="multipart/form-data" method="post">
			<div class="fitem">
				<label>管理员名称:</label> <input name="userName" class="easyui-validatebox"
					required="true">
			</div>
			<div class="fitem">
				<label>管理员电话:</label> <input name="userPhone" class="easyui-validatebox"
					required="true">
			</div>
			<div class="fitem">
				<label>邮箱:</label> <input name="userEmail" class="easyui-validatebox"
					required="true">
			</div>
			<div class="fitem">
				<label>头像:</label> <input name="imageFile"  class="easyui-filebox">
			</div>
		</form>
	</div>
	<div id="user_dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
			onclick="saveCategory()">保存</a> <a href="#" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#user_dlg').dialog('close')">取消</a>
	</div>
	<!-- 新增和修改表单 end -->
	
	<script type="text/javascript">

	//模糊搜索
	var url;
	function doSearch(){
		$('#user_dg').datagrid('load',{
			userName: $('#userName').textbox('getValue')
		});
		url = '${pageContext.request.contextPath}/user/user_list';
	}

		
		function imageFormatter(value, row, index) {
			return "<img  width='60' src='${pageContext.request.contextPath}/"+value+"'>";
		}
	</script>

</body>
</html>