<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>资讯列表页</title>
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
	<style type="text/css">
		/* input{
			width：50px;
			height:50px;
		} */
	</style>
</head>
<body>
	<table id="news_dg" title="资讯列表" class="easyui-datagrid"
		style="width: 100%; height: 450px"
		url="${param.request.contextPath}/admin/news" toolbar="#news_toolbar"
		pagination="true" rownumbers="true" fitColumns="true"
		singleSelect="true">
		<thead>
			<tr>
				<th field="cb" checkbox="true" align="center"></th>
				<!--  field字段需要与返回数据的属性名一致 -->
				<th field="newsId" align="center">资讯编号</th>
				<th field="newsTitle"  width="50">资讯标题</th>
				<th field="content"  width="50">资讯内容</th>
				<th field="time" width="50">发布时间</th>
				<!-- 如果一个对象的值需要显示多列，field属性的名称不能相同，formatter的方法名字也不能相同	 -->						
				<th field="adminName" formatter="adminFormatter" width="50">发布人</th>
								
			</tr>
		</thead>
	</table>
	<!-- 工具条组件 -->
	<div id="news_toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="newNews()">新增</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editNews()">修改</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroyNews()">删除</a>						 				
	</div>
	<!-- 数据列表 end  -->
	<!-- 新增和修改表单  start -->
	<div id="news_dlg" class="easyui-dialog"
		style="width: 300px; height: 280px; padding: 10px 20px" closed="true"
		buttons="#news_dlg-buttons">
		<div class="ftitle">资讯管理</div>
		<form id="news_fm" enctype="multipart/form-data" method="post">
			<input name="adminId"  type="hidden" value="${SESSION_ADMIN.adminId}">
			<div class="fitem">
				<label>资讯标题:</label> <input name="newsTitle" class="easyui-validatebox"
					required="true">
			</div>
			<div class="fitem">
				<label>资讯内容:</label> <input name="content" class="easyui-validatebox"
					required="true">
			</div>
			<div class="fitem">
				<label>发布时间:</label> <input name="time" id="dt" type="text">
			</div>
			 <div class="fitem">
				<label>发 布 人:</label> <%-- <input id="newsAdmin"
					name="admin.adminId" class="easyui-combobox"
					data-options="valueField:'adminId',textField:'adminName',
					url:'${param.request.contextPath}/admin/listAll'"> --%>					
					<input id="newsAdmin" disabled="disabled" class="easyui-textbox">
					
			</div> 	
						
		</form>
	</div>
	<div id="news_dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
			onclick="saveNews()">保存</a> <a href="#" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#news_dlg').dialog('close')">取消</a>
	</div>
	<!-- 新增和修改表单 end -->
	<script type="text/javascript">

		$('#dt').datetimebox({
		    value: '3/4/2010 2:3',
		    required: true,
		    showSeconds: false
		});
		function adminFormatter(value, row, index) {
			//value是传递进来的category对象；row是当前行数据，index是第几行数据
			//return value.categoryName;
			return row.admin.adminName;
			
		}
		
		function newNews() {
			$('#news_dlg').dialog('open').dialog('setTitle', '新增资讯信息');
			$('#news_fm').form('clear');
			url = '${pageContext.request.contextPath}/notic/add';
			
			$('#newsAdmin').textbox('readonly',true);
			$('#newsAdmin').textbox('setValue','${SESSION_ADMIN.adminName}');
		}

		
		function saveNews() {
			$('#news_fm').form('submit', {
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

					$('#news_dlg').dialog('close'); // close the dialog
					$('#news_dg').datagrid('reload'); // reload the user data
				}
			});
		}
		
		function editNews() {
			$('#news_fm').form('clear');
			var row = $('#news_dg').datagrid('getSelected');
			if (row) {
				$('#news_dlg').dialog('open').dialog('setTitle', '修改出租信息');
				$('#news_fm').form('load', row);
				url = '${pageContext.request.contextPath}/notic/edit?newsId='
						+ row.newsId;

				
				$('#newsAdmin').textbox('readonly',true);
				//$('#newsAdmin').textbox('setValue','${SESSION_ADMIN.adminId}');
				$('#newsAdmin').textbox('setValue','${SESSION_ADMIN.adminName}');
			}
		}
		
		function destroyNews() {
			var row = $('#news_dg').datagrid('getSelected');
			if (row) {
				$.messager
						.confirm(
								'Confirm',
								'确认删除?',
								function(r) {
									if (r) {
										$
												.post(
														'${pageContext.request.contextPath}/notic/delete',
														{
															newsId : row.newsId
														},
														function(result) {
															if (result.success) {
																$('#news_dg')
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