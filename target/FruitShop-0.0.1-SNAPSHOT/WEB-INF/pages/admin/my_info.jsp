<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人信息表</title>
    <link href="">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/themes/color.css">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/demo/demo.css">
	<script type="text/javascript" src="${param.request.contextPath}/jquery-easyui-1.8.8/jquery.min.js"></script>
	<script type="text/javascript" src="${param.request.contextPath}/jquery-easyui-1.8.8/jquery.easyui.min.js"></script>
</head>
<body>
 
	<table id="MyInfo_dg" title="管理员列表" class="easyui-datagrid" 
           style="width:100%; height: 450px" 
		url="${param.request.contextPath}/admin/my_list?adminId=${SESSION_ADMIN.adminId}"
			toolbar="#My_toolbar" pagination="true"
			 fitColumns="true" singleSelect="true">		 			 
		<thead>
			<tr>
			   <th field="cb" checkbox="true" align="center"></th>
				<th field="adminId" width="50">管理员编号</th>
				<th field="adminName" width="50">管理员姓名</th>
				<!-- <th field="adminPwd" width="50">密码</th> -->
				<th field="adminSex" width="50">性别</th>
				<th field="adminImage" formatter="imageFormatter" align="center" width="50">头像</th>
			    <th field="adminPhone" width="50">电话号码</th>
				<th field="adminEmail" width="50">邮箱</th>
			    <th field="adminAddress" width="50">地址</th>
				<th field="adminRole" formatter="roleFormatter" width="50">角色</th>	
			</tr>
		</thead>
	</table>
		<!-- 工具条组件 -->
	<div id="My_toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editMyInfo()">修改个人信息</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editMyPwd()">修改密码</a>
	</div>

	<!-- 修改个人信息表单  start -->
	<div id="MyInfo_dlg" class="easyui-dialog"
		style="width: 500px; height: 300px; padding: 10px 20px" closed="true"
		buttons="#MyInfo_dlg-buttons">
		<div class="ftitle">个人信息管理</div><br>
		<form id="MyInfo_fm" enctype="multipart/form-data" method="post">
			<div class="fitem">
				<label>姓名:</label> <input name="adminName" class="easyui-validatebox"
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
					 
					<select id="adminRole"  name="adminRole"  class="easyui-combobox" name="dept" style="width:300px;height:30px;" disabled="disabled">
				    <option value="0">普通管理员</option>
				    <option value="1">超级管理员</option>
				</select>	  
			</div><br>
		</form>
	</div>
	<div id="MyInfo_dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
			onclick="saveCategory()">保存</a> <a href="#" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#MyInfo_dlg').dialog('close')">取消</a>
	</div>
	<!-- 修改个人信息表单 end -->	
	
	<!-- 修改密码表单 start -->	
	<div id="MyPwd_dlg" class="easyui-dialog" style="width: 320px; height: 380px; padding: 10px 20px" closed="true"
		buttons="#MyPwd_dlg-buttons">
		<div class="ftitle">修改密码</div><br>
		<form id="MyPwd_fm"  method="post">
		
			<div class="fitem">
				<label>当前用户:</label> <input id="nowAdmin" class="easyui-textbox" disabled="disabled"
					style="width:250px;height:30px;"><br>
				<label>原密码:</label> <input id="oldPwd" class="easyui-validatebox" type="password"
					required="true" style="width:250px;height:30px;"><br>
				<label>新密码:</label> <input id="newPwd" class="easyui-validatebox" type="password"
					required="true" style="width:250px;height:30px;"><br>
				<label>确认密码:</label> <input id="checkPwd" name="adminPwd" class="easyui-validatebox" type="password"
					required="true" style="width:250px;height:30px;"><br><br>
				<font id="errorPwd" color="red"></font>
			</div>
		</form>
	</div>
	<div id="MyPwd_dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
			onclick="saveMyPwd()">保存</a> <a href="#" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#MyPwd_dlg').dialog('close')">取消</a>
	</div>
	<!-- 修改密码表单 end -->	
	
	<script type="text/javascript">
	var url;
		function editMyInfo() {
			$('#MyInfo_fm').form('clear');
			var row = $('#MyInfo_dg').datagrid('getSelected');
			if (row) {
				$('#MyInfo_dlg').dialog('open').dialog('setTitle','修改个人信息');
				$('#MyInfo_fm').form('load', row);
				url = '${pageContext.request.contextPath}/admin/edit?adminId='
						+ row.adminId;
			}
		}

		var password;
		$('#oldPwd').blur(function () {
			var oldPwd=$("#oldPwd").val();
			var nowAdmin=$('#nowAdmin').val();
			// 异步调用Ajax密码是否正确
			var adata = {
				"adminName" : nowAdmin,
				"adminPwd" : oldPwd
			}
			var data = JSON.stringify(adata);
			$.ajax({
	            type: "POST",
	            contentType: "application/json",
	            data: data,
	            url: "${pageContext.request.contextPath}/admin/checkAdminPwd",
	            success: function (res) {
	                if (res != "" && res == "success") {
	                	$('#errorPwd').text('');
	                	password = oldPwd;
	                } else {
	                	$('#errorPwd').text('原密码不正确，请重新输入！');
	                	$("#oldPwd").val('');
	                }
	            },
	            error: function () {
	            	alert("当前系统繁忙，请稍后操作！");
	            }
	        });
		})
		
		$('#newPwd').blur(function () {
			var newPwd=$("#newPwd").val();

			if(newPwd!=password){
				$('#errorPwd').text('');
			} else {
				$('#errorPwd').text('新密码不能和旧密码一致，请重新输入！');
				$("#newPwd").val('');
			}
		})
		
		$('#checkPwd').blur(function () {
			var newPwd=$("#newPwd").val();
			var checkPwd=$("#checkPwd").val();

			if(newPwd==checkPwd){
				$('#errorPwd').text('');
			} else {
				$('#errorPwd').text('两次输入的密码不一致，请重新输入！');
				$("#checkPwd").val('');
			}
		})

		function editMyPwd() {
			$('#MyPwd_fm').form('clear');
			$('#MyPwd_dlg').dialog('open').dialog('setTitle','修改密码');
			// 获取当前用户用户名
			$('#nowAdmin').textbox('setValue','${SESSION_ADMIN.adminName}');
			url = '${pageContext.request.contextPath}/admin/edit?adminId=${SESSION_ADMIN.adminId}'; 
			
		}

		function saveCategory() {
			$('#MyInfo_fm').form('submit', {
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
					$('#MyInfo_dlg').dialog('close'); // close the dialog
					$('#MyInfo_dg').datagrid('reload'); // reload the admin data
				}
			});
		}

		function saveMyPwd() {
			$('#MyPwd_fm').form('submit', {
				url : url,
				onSubmit : function() {
					return $(this).form('validate');
				},
				success : function(result) {
					var result = eval('(' + result + ')');
					if (!result.success) {
						alert('修改成功，请重新登录！');
						location.href = "${pageContext.request.contextPath}/admin/doLogout";   
					} else {
						$.messager.show({
							title : 'Info',
							msg : result.errorMsg
						});
						
					}
					$('#MyPwd_dlg').dialog('close'); // close the dialog
					$('#MyInfo_dg').datagrid('reload'); // reload the admin data
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