<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>供应商列表页</title>
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
			<label for="providerName">列名名称：</label> <input class="easyui-textbox"
				type="text" name="providerName" id="proname"
				data-options="validType:'providerName'" />
		</div>
		<div style="float: left; padding: 10px 0 0 10px;">
			<a href="#" class="easyui-linkbutton" iconCls="icon-search"
				plain="true" onclick="doSearch()">查询</a>
		</div>
	</form>
	<!-- 数据列表  start -->
	<!-- 在页面中使用easy ui组件进行界面编程 ,数据表格组件 -->
	<table id="provider_dg" title="供应商列表" class="easyui-datagrid"
		style="width: 100%; height: 450px"
		url="${param.request.contextPath}/provider/list" toolbar="#provider_toolbar"
		pagination="true" fitColumns="true" 
		singleSelect="true">
		<thead>
			<tr>
				<th field="cb" checkbox="true" align="center"></th>
				<!--  field字段需要与返回数据的属性名一致 -->
				<th field="providerId" align="center">角色ID</th>
				<th field="providerName" width="50">供应商名称</th>
				<th field="providerPhone" width="50">供应商电话</th>
				<th field="providerAddress" align="center">供应商地址</th>
				<th field="providerImage" formatter="imageFormatter" align="center" width="50">供应商图片</th>
				<th field="providerStates"  formatter="statusFormatter" width="50">供应商状态</th>
				
				<th field="adminName" formatter="adminNameFormatter" width="50">管理员名称</th>
			
			</tr>
		</thead>
	</table>
	<!-- 工具条组件 -->
	<div id="provider_toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="newProvider()">新增</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editProvider()">修改</a>
		<!-- <a	href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="editStatus()">修改状态</a> -->
		<a	href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroyProvider()">删除</a>
			
					
		
		
	</div>
	<!-- 数据列表 end  -->
	
	
	<!-- 新增和修改表单  start -->
	<div id="provider_dlg" class="easyui-dialog"
		style="width: 400px; height: 400px; padding: 10px 20px" closed="true"
		buttons="#provider_dlg-buttons">
		<div class="ftitle">供应商管理</div>
		<form id="provider_fm" enctype="multipart/form-data" method="post">
			<input name="adminId"  type="hidden" value="${SESSION_ADMIN.adminId}">
			<div class="fitem">
				<label>供应商名称:</label> <input name="providerName" class="easyui-validatebox" required="true">
			</div>
			<br>
			<div class="fitem">
				<label>供应商电话:</label> <input name="providerPhone" class="easyui-validatebox" required="true">
			</div>
			<br>
			<div class="fitem">
				<label>供应商地址:</label> <input name="providerAddress" class="easyui-validatebox" required="true">
			</div>
			<br>
			<div class="fitem">
				<label>供应商图片:</label> <input name="imageFile" class="easyui-filebox">
			</div>
			<br>
			<div class="fitem">
				<label>供应商状态:</label>
				<select id="providerStates" class="easyui-combobox" name="providerStates" style="width:160px">
	                <option value="1">供货中</option>
	                <option value="0">不再供货</option>
                </select>
		<!-- <input name="providerStates" class="easyui-validatebox"  required="true">	 -->
			</div>
			<br>
			<div class="fitem">
				<label>管理员名称:</label>
				<input id="adminNames" disabled="disabled" class="easyui-textbox">
			</div>
			
		</form>
	</div>
	<div id="provider_dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
			onclick="saveProvider()">保存</a>
			 <a href="#" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#provider_dlg').dialog('close')">取消</a>
	</div>
	<!-- 新增和修改表单 end -->
	
	
	
	
	<script type="text/javascript">

		function statusFormatter(value){
			if(value==1){
				return '供货中';
			}else{
				return '不再供货';
			}
		}

		var url;
		function doSearch(){
			$('#provider_dg').datagrid('load',{
				proname: $('#proname').textbox('getValue')
			});
			url = '${pageContext.request.contextPath}/provider/list';
		}
	

		function imageFormatter(value, row, index) {
			return "<img  width='60' src='${pageContext.request.contextPath}/"+value+"'>";
		}

		//easy ui在处理多列数据时，需要使用格式化器解析数据
		function adminNameFormatter(value, row, index) {
			//value是传递进来的category对象；row是当前行数据，index是第几行数据
			//return value.categoryName;
			return row.admin.adminName;
		}

		function newProvider() {
			$('#provider_dlg').dialog('open').dialog('setTitle', '新增供货商');
			$('#provider_fm').form('clear');
			url = '${pageContext.request.contextPath}/provider/add';

			$('#adminNames').textbox('readonly',true);
			$('#adminNames').textbox('setValue','${SESSION_ADMIN.adminName}');
			//loadAdminSuccess(0);
		}

		function editProvider() {
			$('#provider_fm').form('clear');
			var row = $('#provider_dg').datagrid('getSelected');
			if (row) {
				$('#provider_dlg').dialog('open').dialog('setTitle', '修改供货商');
				$('#provider_fm').form('load', row);
				url = '${pageContext.request.contextPath}/provider/edit?providerId='
						+ row.providerId;
				
				$('#adminNames').textbox('readonly',true);
				$('#adminNames').textbox('setValue','${SESSION_ADMIN.adminName}');
				//loadAdminSuccess(row.admin.adminId);
			}
		}

		//修改状态
		function editStatus() {
			$('#provider2_fm').form('clear');
			var row = $('#provider_dg').datagrid('getSelected');
			if (row) {
				$('#provider2_dlg').dialog('open').dialog('setTitle', '修改状态');
				$('#provider2_fm').form('load', row);
				url = '${pageContext.request.contextPath}/provider/edits?providerId='
						+ row.providerId;
				loadAdminSuccess(row.admin.adminId);
			}
		}
		

		function loadAdminSuccess(admin) {
			var data = $("#adminNames").combobox("getData");
			if (data && data.length > 0) {
				if (admin == 0) {
					$("#adminNames")
							.combobox("setValue", data[0].adminId);
				} else {
					$("#adminNames").combobox("setValue", admin);
				}
			}
		}

		function saveProvider() {
			$('#provider_fm').form('submit', {
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

					$('#provider_dlg').dialog('close'); // close the dialog
					$('#provider_dg').datagrid('reload'); // reload the user data
				}
			});
		}

		//保存供货商状态
		function saveProvider2() {
			$('#provider2_fm').form('submit', {
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

					$('#provider2_dlg').dialog('close'); // close the dialog
					$('#provider_dg').datagrid('reload'); // reload the user data
				}
			});
		}

		function destroyProvider() {
			var row = $('#provider_dg').datagrid('getSelected');
			if (row) {
				$.messager
				.confirm(
			'Confirm',
			'确认删除商品?',
			function(r) {
				if (r) {
					$
				.post(
						'${pageContext.request.contextPath}/provider/delete',
						{
							providerId : row.providerId
						},
						function(result) {
							if (result.success) {
								$('#provider_dg')
										.datagrid(
												'reload'); 
							} else {
								$.messager
										.show({
											title : 'Error',
											msg : result.errorMsg
										});
							}
						}, 'json');
						}
					});
			}
		}

		
		
	</script>
	
	
	
	
	

</body>
</html>