<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>产品列表页</title>
<!-- 下载并引入jquery easyUI -->
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
			<div style="float: left; padding: 0px 0 0 5px;">
			<label>水果名称:</label> 
				<input class="easyui-textbox"
					type="text" name="fruitName" id="fruitName" 
					data-options="validType:'fruitName'" />
			</div>
					
			<div style="float: left; padding: 0px 0 0 5px;">
			<label>类型名称:</label> 
                <input id="fruitsType"
					name="type.typeId" class="easyui-combobox"
					data-options="valueField:'typeId',textField:'typeName',
					url:'${param.request.contextPath}/admin/typelist11'">
			</div>
			
			<div style="float: left; padding: 0px 0 0 5px;">
				<!-- <select id="adminRole" class="easyui-combobox" name="adminRole" style="width:160px">
					<option value="">-----请选择供应商-----</option>
	                <option value="1">超级管理员</option>
	                <option value="0">普通管理员</option>
                </select> -->
                <label>供货商名称:</label> <input id="fruitsProvider"
					name="provider.providerId" class="easyui-combobox"
					data-options="valueField:'providerId',textField:'providerName',
					url:'${param.request.contextPath}/provider/list11'">
			</div>
			<div style="float: left; padding: 0px 0 0 5px;">
				<select id="fruitStates" class="easyui-combobox" name="fruitStates" style="width:160px">
					<option value="">-----请选择状态-----</option>
	                <option value="1">已上架</option>
	                <option value="0">已下架</option>
                </select>
			</div>
			
			<div style="float: left; padding: 0px 0 0 5px;">
				<a href="#" class="easyui-linkbutton" iconCls="icon-search"
					plain="true" onclick="doSearch()">查询</a>
			</div>
	</form>			
					
	<table id="fruits_dg" title="商品列表" class="easyui-datagrid"  style="width: 100%; height: 450px"
		url="${param.request.contextPath}/fruit/list" toolbar="#fruits_toolbar"
		pagination="true" rownumbers="false" fitColumns="true"
		singleSelect="true">
		
		<thead>
			<tr>
				<th field="cb" checkbox="true" align="center"></th>
				<!--  field字段需要与返回数据的属性名一致 -->
				<th field="fruitId" align="center">水果编号</th>
				<th field="fruitName" width="50">水果名称</th>
				<th field="fruitImage" formatter="imageFormatter" align="center"
					width="50">水果图片</th>
			    <th field="fruitPrice" width="50">水果价格</th>
				<th field=fruitUnit width="50">水果单位</th>
				<th field="putawayTime" width="50">上架时间</th>
				<!-- 在列表中显示多表关联数据，需要使用格式化器进行解析数据 -->
				<!-- 如果一个对象的值需要显示多列，field属性的名称不能相同，formatter的方法名字也不能相同 -->
				<th field="typeName" formatter="typeFormatter" width="50">水果类型</th>
				<th field="providerName" formatter="providerFormatter" width="50">供货商名称</th>
				<th field="adminName" formatter="adminFormatter" width="50">管理员</th>
				<th field="fruitStates" formatter="fruitFormatter" width="50">水果状态</th>
			</tr>
		</thead>
	</table>
	<!-- 工具条组件 -->
	<div id="fruits_toolbar">
		    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newFruits()">新增</a> 
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editFruits()">修改</a> 
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyFruits()">删除</a>
		
	</div>
	<!-- 数据列表 end  -->
	<!-- 新增和修改表单  start -->
	<div id="fruits_dlg" class="easyui-dialog"
		style="width: 400px; height: 480px; padding: 10px 20px" closed="true"
		buttons="#fruits_dlg-buttons">
		<div class="ftitle">商品信息管理</div>
		<form id="fruits_fm" enctype="multipart/form-data" method="post" >
			<div class="fitem">
				<label>水果名称:</label> <input name="fruitName"
					class="easyui-validatebox" required="true">
			</div>
			<br>
			<div class="fitem">
				<label>水果图片:</label> <input name="imageFile" class="easyui-filebox">
			</div>
			<br>
			<div class="fitem">
				<label>水果价格:</label> <input name="fruitPrice" class="easyui-validatebox"
					required="true">
			</div>
			<br>
			<div class="fitem">
				<label>水果单位:</label> <input name="fruitUnit" class="easyui-validatebox"
					required="true">
			</div>
			<br>
			<div class="fitem">
				<label>上架时间:</label> <input name="putawayTime" class="easyui-datebox" required="required"
					>
			</div>
			<br>
			
			<div class="fitem">
				<label>水果类型:</label> <input id="fruitsType"
					name="type.typeId" class="easyui-combobox"
					data-options="valueField:'typeId',textField:'typeName',
					url:'${param.request.contextPath}/admin/typelist11'">
			</div>
			<br>
			<div class="fitem">
				<label>供货商名称:</label> <input id="fruitsProvider"
					name="provider.providerId" class="easyui-combobox"
					data-options="valueField:'providerId',textField:'providerName',
					url:'${param.request.contextPath}/provider/list11'">
			</div>
			<br>
			<div class="fitem">
				<label>管理员:</label>
					<input id="fruitAdmin" disabled="disabled" class="easyui-textbox">
			</div>
			<br>
			<div class="fitem">
				<label>水果状态:</label> <!-- <input name="fruitStates" id="fruitStates" class="easyui-validatebox" required="true"> -->
				<select name="fruitStates" id="fruitStates" class="easyui-validatebox" style="width:160px">
				   <option value="1">已上架</option>
	               <option value="0">已下架</option>
				</select>
				   
			</div>
		</form>
	</div>
	<div id="fruits_dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
			onclick="saveFruits()">保存</a> <a href="#" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#fruits_dlg').dialog('close')">取消</a>
	</div>
	<!-- 新增和修改表单 end -->
	
	
	<script type="text/javascript">
		function imageFormatter(value, row, index) {
			return "<img  width='60' src='${pageContext.request.contextPath}/"+row.fruitImage+"'>";
		}

		
		//easy ui在处理多列数据时，需要使用格式化器解析数据
		function typeFormatter(value, row, index) {
			//value是传递进来的category对象；row是当前行数据，index是第几行数据
			//return value.categoryName;
			return row.type.typeName;
		}

		
		function providerFormatter(value, row, index) {
			//value是传递进来的category对象；row是当前行数据，index是第几行数据
			//return value.categoryName;
			return row.provider.providerName;
		}
		function adminFormatter(value, row, index) {
			//value是传递进来的category对象；row是当前行数据，index是第几行数据
			//return value.categoryName;
			return row.admin.adminName;
		}

		function fruitFormatter(value){
			if(value==1){
				return '已上架';
			}else{
				return '已下架';
			}
		}

		//模糊搜索--根据名称查询
		 var url;
		function doSearch(){
			$('#fruits_dg').datagrid('load',{
				fruitName: $('#fruitName').textbox('getValue'),
				fruitStates: $('#fruitStates').combobox('getValue'),
				typeId : $('#fruitsType').combobox('getValue'),
				providerId : $('#fruitsProvider').combobox('getValue')

			});
			url = '${pageContext.request.contextPath}/fruit/list';
		}  

		function newFruits() {
			$('#fruits_dlg').dialog('open').dialog('setTitle', '新增商品');
			$('#fruits_fm').form('clear');
			
			loadTypeSuccess(0);
			loadProviderIdSuccess(0);
			
			$('#fruitAdmin').textbox('readonly',true);
			$('#fruitAdmin').textbox('setValue','${SESSION_ADMIN.adminName}');
			
			url = '${pageContext.request.contextPath}/fruit/add';
			
		}

		function editFruits() {
			$('#fruits_fm').form('clear');
			var row = $('#fruits_dg').datagrid('getSelected');
			if (row) {
				loadTypeSuccess(row.type.typeId);
				loadProviderIdSuccess(row.provider.providerId)
				$('#fruitAdmin').textbox('readonly',true);
				$('#fruitAdmin').textbox('setValue','${SESSION_ADMIN.adminName}');
				
				$('#fruits_dlg').dialog('open').dialog('setTitle', '修改商品');
				$('#fruits_fm').form('load', row);
				url = '${pageContext.request.contextPath}/fruit/edit?fruitId='
						+ row.fruitId;
			}
		}

		//下拉列表反选的方法--水果类型
		function loadTypeSuccess(type) {
			var data = $("#fruitsType").combobox("getData");
			if (data && data.length > 0) {
				if (type == 0) {
					$("#fruitsType")
							.combobox("setValue", data[0].typeId);
				} else {
					$("#fruitsType").combobox("setValue", type);
				}
			}
		}
		//下拉列表反选的方法--供应商
		function loadProviderIdSuccess(provider) {
			var data = $("#fruitsProvider").combobox("getData");
			if (data && data.length > 0) {
				if (provider == 0) {
					$("#fruitsProvider")
							.combobox("setValue", data[0].providerId);
				} else {
					$("#fruitsProvider").combobox("setValue",provider);
				}
			}
		}
		function saveFruits() {
			$('#fruits_fm').form('submit', {
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

					$('#fruits_dlg').dialog('close'); // close the dialog
					$('#fruits_dg').datagrid('reload'); // reload the user data
				}
			});
		}

		function destroyFruits() {
			var row = $('#fruits_dg').datagrid('getSelected');
			if (row) {
				$.messager
						.confirm(
								'Confirm',
								'确认删除商品?',
								function(r) {
									if (r) {
										$
										.post(
										'${pageContext.request.contextPath}/fruit/delete',
										{
											fruitId : row.fruitId
										},
										function(result) {
											if (result.success) {
												$('#fruits_dg')
														.datagrid(
																'reload'); // reload the user data
											} else {
												$.messager
														.show({ // show error message
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