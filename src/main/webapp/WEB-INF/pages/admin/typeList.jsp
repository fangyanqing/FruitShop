<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<title>商品类型列表</title>
    <link href="">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/themes/color.css">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/demo/demo.css">
	<script type="text/javascript" src="${param.request.contextPath}/jquery-easyui-1.8.8/jquery.min.js"></script>
	<script type="text/javascript" src="${param.request.contextPath}/jquery-easyui-1.8.8/jquery.easyui.min.js"></script>
</head>
<body>
    <table id="category_dg" title="分类列表" class="easyui-datagrid" style="width:700px;height:500px" fit="true"
			url="${param.request.contextPath}/admin/typeList"
			toolbar="#category_toolbar" pagination="true"
			rownumbers="false" fitColumns="true" singleSelect="true">
		<thead>
			<tr>
			   <th field="cb" checkbox="true" align="center"></th>
				<th field="typeId" width="50">类型编号</th>
				<th field="typeName" width="50">类型名称</th>
				<th field="s" formatter="imageFormatter" align="center"
					width="50">类型图片</th>
			</tr>
		</thead>
	</table>
	
	<div id="category_toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newCategory()">新增</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editCategory()">修改</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyCategory()">删除</a>
	</div>

	
	<!-- 新增和修改表单  start -->
	<div id="category_dlg" class="easyui-dialog"
		style="width: 400px; height: 280px; padding: 10px 20px" closed="true"
		buttons="#category_dlg-buttons">
		<div class="ftitle">水果类型息管理</div>
		<form id="category_fm" enctype="multipart/form-data" method="post">
			<div class="fitem">
				<label>类型名称:</label> <input name="typeName" class="easyui-validatebox"
					required="true">
			</div>
			<div class="fitem">
				<label>类型图片:</label> <input name="imageFile"  class="easyui-filebox">
			</div>
		</form>
	</div>
	<div id="category_dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
			onclick="saveCategory()">保存</a> <a href="#" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#category_dlg').dialog('close')">取消</a>
	</div>
	<!-- 新增和修改表单 end -->
	
	
	<script type="text/javascript">
		function newCategory() {
			$('#category_dlg').dialog('open').dialog('setTitle', '新增商品');
			$('#category_fm').form('clear');
			url = '${pageContext.request.contextPath}/type/add';
			
		}

		function editCategory() {
			$('#category_fm').form('clear');
			var row = $('#category_dg').datagrid('getSelected');
			if (row) {
				$('#category_dlg').dialog('open').dialog('setTitle', '修改商品');
				$('#category_fm').form('load', row);
				url = '${pageContext.request.contextPath}/type/edit?typeId='
						+ row.typeId;
				
			}
		}
		
		function saveCategory() {
			$('#category_fm').form('submit', {
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

					$('#category_dlg').dialog('close'); // close the dialog
					$('#category_dg').datagrid('reload'); // reload the user data
				}
			});
		}
		
		function destroyCategory() {
			var row = $('#category_dg').datagrid('getSelected');
			if (row) {
				$.messager
						.confirm(
								'Confirm',
								'确认删除商品?',
								function(r) {
									if (r) {
										$
										.post(
										'${pageContext.request.contextPath}/type/delete',
										{
											typeId : row.typeId
										},
										function(result) {
											if (result.success) {
												$('#category_dg')
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

		function imageFormatter(value, row, index) {
			return "<img  width='60' src='${pageContext.request.contextPath}/"+row.typeImage+"'>";
		}
	</script>

</body>
</html>