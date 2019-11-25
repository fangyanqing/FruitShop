<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员信息表</title>
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
				<input class="easyui-textbox"
				prompt="按名字"	type="text" name="adminName" id="adminName" 
					data-options="validType:'adminName'" />
			</div>
					
			<div style="float: left; padding: 0px 0 0 5px;">
				<select id="adminSex" class="easyui-combobox" name="adminSex" style="width:160px">
					<option value="">-----请选择性别-----</option>
	                <option value="男">男</option>
	                <option value="女">女</option>
                </select>
			</div>
			
			<div style="float: left; padding: 0px 0 0 5px;">
				<select id="adminRole" class="easyui-combobox" name="adminRole" style="width:160px">
					<option value="">-----请选择身份-----</option>
	                <option value="1">超级管理员</option>
	                <option value="0">普通管理员</option>
                </select>
			</div>
			
			<div style="float: left; padding: 0px 0 0 5px;">
				<a href="#" class="easyui-linkbutton" iconCls="icon-search"
					plain="true" onclick="doSearch()">查询</a>
			</div>
	</form>
			 
	    <table id="admin_dg" title="管理员列表" class="easyui-datagrid" 
           style="width:100%; height: 450px" 
		url="${param.request.contextPath}/admin/admin_list"
			toolbar="#admin_toolbar" pagination="true"
			 fitColumns="true" singleSelect="true">		 			 
		<thead>
			<tr>
			   <th field="cb" checkbox="true" align="center"></th>
				<th field="adminId" width="50">管理员编号</th>
				<th field="adminName" width="50">管理员姓名</th>
				<!-- <th field="adminPwd" width="50">密码</th> -->
				<th field="adminSex" width="50">性别</th>
				<th field="adminImage" formatter="imageFormatter" align="center"
					width="50">头像</th>
			    <th field="adminPhone" width="50">电话号码</th>
				<th field="adminEmail" width="50">邮箱</th>
			    <th field="adminAddress" width="50">地址</th>
				<th field="adminRole" formatter="roleFormatter" width="50">角色</th>	
			</tr>
		</thead>
	</table>
		<!-- 工具条组件 -->
	<div id="admin_toolbar">
		<c:if test="${SESSION_ADMIN.adminRole == 0}">
			 <a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="javascript:$.messager.show({title:'Error',msg:'权限不够！'});">新增</a>
			 <a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="javascript:$.messager.show({title:'Error',msg:'权限不够！'});">修改</a>
              <a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="javascript:$.messager.show({title:'Error',msg:'权限不够！'});">删除</a>
		</c:if>
		<c:if test="${SESSION_ADMIN.adminRole == 1}">
			  <a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="addAdmin()">新增</a>
			 <a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editAdmin()">修改</a>
              <a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroyAdmin()">删除</a>
		</c:if>
		  
			
			
	</div>

	<!-- 新增和修改表单  start -->
	<div id="admin_dlg" class="easyui-dialog"
		style="width: 500px; height: 300px; padding: 10px 20px" closed="true"
		buttons="#admin_dlg-buttons">
		<div class="ftitle">管理员息管理</div><br>
		<form id="admin_fm" enctype="multipart/form-data" method="post">
			<div class="fitem">
				<label>姓名:</label> <input name="adminName" class="easyui-validatebox"
					required="true" style="width:300px;height:30px;">
			</div><br>
			
				<div class="fitem">
				<label>密码:</label> <input name="adminPwd" class="easyui-validatebox"
					required="true" style="width:300px;height:30px;">
			</div><br>
			
				<div class="fitem">
				<label>性别:</label> <!-- <input name="adminSex" class="easyui-validatebox"
					required="true" style="width:300px;height:30px;"> -->
				<select id="adminSex"  name="adminSex"  class="easyui-combobox" style="width:300px;height:30px;">
				    <option value="男">男</option>
				    <option value="女">女</option>
				</select>
			</div><br>
			
			<div class="fitem">
				<label>电话:</label> <input name="adminPhone" class="easyui-validatebox"
					required="true"  style="width:300px;height:30px;">
			</div><br>
			
			<div class="fitem">
				<label>邮箱:</label> <input name="adminEmail" class="easyui-validatebox"
					required="true"  style="width:300px;height:30px;">
			</div><br>
			
			<div class="fitem">
				<label>地址:</label> <input name="adminAddress" class="easyui-validatebox"
					required="true" style="width:300px;height:30px;">
			</div><br>
			
			<div class="fitem">
				<label>头像:</label> <input name="imageFile"  class="easyui-filebox" style="width:300px;height:30px;">
			</div><br>
			
		   <div class="fitem">
				<label>角色:</label> 
			<!-- 	<input name="adminRole" class="easyui-validatebox"
					required="true"  readonly="true"
					 style="width:300px;height:30px;"> -->
					 
					<select id="adminRole"  name="adminRole"  class="easyui-combobox" name="dept" style="width:300px;height:30px;">
				   <option value="0">普通管理员</option>
				    <option value="1">超级管理员</option>
				</select>	  
			</div><br>
		</form>
	</div>
	<div id="admin_dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
			onclick="saveCategory()">保存</a> <a href="#" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#admin_dlg').dialog('close')">取消</a>
	</div>
	<!-- 新增和修改表单 end -->	
	<script type="text/javascript">

	//模糊搜索
	var url;
	function doSearch(){
		$('#admin_dg').datagrid('load',{
			adminName: $('#adminName').textbox('getValue'),
			adminRole: $('#adminRole').combobox('getValue'),
			adminSex: $('#adminSex').combobox('getValue')
		});
		url = '${pageContext.request.contextPath}/admin/admin_list';
	}
		function addAdmin() {
			$('#admin_dlg').dialog('open').dialog('setTitle', '新增');
			$('#admin_fm').form('clear');
			url = '${pageContext.request.contextPath}/admin/add';
			loadCategorySuccess(0);
		}
		function editAdmin() {
			$('#admin_fm').form('clear');
			var row = $('#admin_dg').datagrid('getSelected');
			
			if(row.adminId == '${SESSION_ADMIN.adminId}'){
				$.messager.show({
					title : 'Error',
					msg : '请勿在此修改自己的信息，修改信息请到系统管理-个人信息中修改！'
				});
			} else {
				if (row) {
					$('#admin_dlg').dialog('open').dialog('setTitle','修改');
					$('#admin_fm').form('load', row);
					url = '${pageContext.request.contextPath}/admin/edit?adminId='
							+ row.adminId;
				}
			}
			
			
		}

		function destroyAdmin() {
			var row = $('#admin_dg').datagrid('getSelected');
			if(row.adminId == '${SESSION_ADMIN.adminId}'){
				$.messager.show({
					title : 'Error',
					msg : '不能把自己删了！'
				});
			} else {
				if (row) {
					$.messager.confirm(
					'Confirm', '确认删除?',function(r) {
					if (r) {
						$.post(
						'${pageContext.request.contextPath}/admin/delete',
						{
							adminId : row.adminId},function(result) {
							if (result.success) {
								$('#admin_dg').datagrid(
									'reload'); // reload the admin data
								} else {
									$.messager.show({ // show error message
									title : 'Error',
									msg : result.errorMsg
									});
								}
							}, 'json');
						}
					});
				}
			}

		}
		
		function saveCategory() {
			$('#admin_fm').form('submit', {
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
					$('#admin_dlg').dialog('close'); // close the dialog
					$('#admin_dg').datagrid('reload'); // reload the admin data
				}
			});
		}
		function imageFormatter(value, row, index) {
			return "<img  width='60' src='${pageContext.request.contextPath}/"+value+"'>";
		}

		function roleFormatter(value, row, index){
			if(row.adminRole == 1) {
				return "超级管理员";
			} else {
				return "普通管理员";
			}
		}
	</script>

</body>
</html>