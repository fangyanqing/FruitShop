<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>系统首页</title>
<!-- 下载并引入jquery easyUI -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.8.8/themes/metro-blue/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.8.8/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.8.8/themes/color.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.8.8/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.8.8/jquery.easyui.min.js"></script>

</head>

<body class="easyui-layout">
	<div id="cc" class="easyui-layout"
		style="width: 100%; heith: 100%; min-height: 600px;">
		<div data-options="region:'north',border:false" style="height: 80px;">
			<img alt="logo" src="${pageContext.request.contextPath}/images/logo1.jpg" width="350"
				style="padding: 20px 0 0 20px;">
		</div>
		
		
		<div data-options="region:'west',title:'菜单',split:true"
			style="width: 200px;">
			<div id="aa" class="easyui-accordion"
				data-options="fit:true,border:false">
				<div title="商品管理" data-options="iconCls:'icon-save',selected:true"
					style="overflow: auto; padding: 10px;">
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('水果信息','${pageContext.request.contextPath}/fruit/index')">水果信息</a><br>
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('水果类型','${pageContext.request.contextPath}/type/index')">水果类型</a><br>
				    <a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('订单管理','${pageContext.request.contextPath}/orderInfo/index')">订单管理</a><br>
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('退货管理','${pageContext.request.contextPath}/fruits2/index')">退货管理</a>
				</div>
				<div title="供应商管理" data-options="iconCls:'icon-save',selected:true"
					style="overflow: auto; padding: 10px;">
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('供应商管理','${pageContext.request.contextPath}/provider/index')">供应商管理</a>
				</div>
				<div title="评论信息管理" data-options="iconCls:'icon-save',selected:true"
					style="overflow: auto; padding: 10px;">
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('评论信息管理','${pageContext.request.contextPath}/comment/index')">评论信息管理</a>
				</div>
				<div title="资讯管理" data-options="iconCls:'icon-save',selected:true"
					style="overflow: auto; padding: 10px;">
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('资讯管理','${pageContext.request.contextPath}/notic/index')">资讯管理</a>
				</div>
				<div title="用户管理" data-options="iconCls:'icon-save',selected:true"
					style="overflow: auto; padding: 10px;">
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('会员管理','${pageContext.request.contextPath}/user/user_index')">会员管理</a><br>
					
					<a id="btn" href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('管理员管理','${pageContext.request.contextPath}/admin/admin_index')">管理员管理</a><br>
				</div>
				<div title="系统管理" data-options="iconCls:'icon-reload'"
					style="padding: 10px;">
					<a href="javascript:void(0);" class="easyui-linkbutton"
						data-options="plain:true" onclick="open_menu('管理员个人信息','${pageContext.request.contextPath}/admin/my_index')">个人信息</a>
					 <br>
					
					  <a href="${pageContext.request.contextPath}/admin/doLogout" class="easyui-linkbutton"
						data-options="plain:true">退出登录</a>	
						
						
						
				</div>
			</div>
		</div>

		<div data-options="region:'center',border:false,plain:true">
			<div id="tt" class="easyui-tabs" fit=true>
				<div title="首页" style="text-align: center; font-size: 24px;">
					<p>${SESSION_ADMIN.adminName}，欢迎来到水果信息后台管理系统！</p>
					
				</div>
			</div>
		</div>
	</div>
	<div style="height: 40px; text-align: center; font-size: 12px;">
		<p>版权所有,&copy;2016-2018</p>
	</div>

	<script type="text/javascript">
	if (window != top)  top.location.href = location.href; 
	
		function open_menu(titleName, menuUrl) {
			if ($("#tt").tabs("exists", titleName)) {
				$("#tt").tabs("select", titleName);
			} else {
				$('#tt').tabs('add', {
					title : titleName,
					href : menuUrl,
					closable : true
				});
			}
		}
	</script>

</body>
</html>