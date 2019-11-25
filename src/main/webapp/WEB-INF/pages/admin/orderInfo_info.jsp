<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单信息表</title>
    <link href="">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/themes/color.css">
	<link rel="stylesheet" type="text/css" href="${param.request.contextPath}/jquery-easyui-1.8.8/demo/demo.css">
	<script type="text/javascript" src="${param.request.contextPath}/jquery-easyui-1.8.8/jquery.min.js"></script>
	<script type="text/javascript" src="${param.request.contextPath}/jquery-easyui-1.8.8/jquery.easyui.min.js"></script>
</head>
<body>
			 
	    <table id="orderInfo_dg" title="订单列表" class="easyui-datagrid" 
           style="width:100%; height: 450px" 
		url="${param.request.contextPath}/orderInfo/orderInfo_list"
			toolbar="#orderInfo_toolbar" pagination="true"
			 fitColumns="true" singleSelect="true">		 			 
		<thead>
			<tr>
			   <th field="cb" checkbox="true" align="center"></th>
				<th field="orderId" formatter="orderIdFormatter" width="20">编号</th>
				<th field="fruitName" width="50">商品名称</th>
				<th field="price" width="20">单价</th>
				<th field="orderNum" width="20">数量</th>
				<th field="orderSum" formatter="orderSumFormatter" width="20">总价</th>
				<th field="consignee" formatter="consigneeFormatter" width="50">收货人</th>
				<th field="phone" formatter="phoneFormatter" width="50">联系电话</th>
				<th field="address" formatter="addressFormatter" width="140">收货地址</th>
				<th field="createTime" formatter="createTimeFormatter" width="80">下单时间</th>
				<th field="orderState" formatter="orderStateFormatter" width="30">状态</th>
				<th field="tips" width="50">备注</th>
			</tr>
		</thead>
	</table>
		<!-- 工具条组件 -->
	<div id="orderInfo_toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="addOrderInfo()">查看详细</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editOrderInfo()">修改</a>
    	<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="destroyOrderInfo()">删除</a>

	</div>

	<!-- 新增和修改表单  start -->
	<div id="orderInfo_dlg" class="easyui-dialog" style="width: 600px; height: 500px; padding: 10px 20px" closed="true" buttons="#orderInfo_dlg-buttons">
		<div class="ftitle">订单管理</div><br>
		<form id="orderInfo_fm" method="post">
			<div class="fitem">
				<label>明细编号:</label> <input name="oInfoId" class="easyui-textbox" required="true" style="width:82%">
			</div>
			<br>
			<div class="fitem">
				<label>商品名称:</label> <input name="fruitName" class="easyui-textbox" required="true" style="width:82%">
			</div>
			<br>
			<div class="fitem">
				<label>商品单价:</label> <input name="price" class="easyui-textbox" required="true">&nbsp;&nbsp;&nbsp;&nbsp;
				<label>商品数量:</label> <input name="orderNum" class="easyui-textbox" required="true">
			</div>
			<br>
			<div class="ftitle">买家信息</div><br>
			<div class="fitem">
				<label>收货姓名:</label> <input id="consignee" name="orders.address.consignee" class="easyui-textbox" >&nbsp;&nbsp;&nbsp;&nbsp;
				<label>联系电话:</label> <input id="phone" name="orders.address.phone" class="easyui-textbox" >
			</div>
			<br>
			<div class="fitem">
				<label>收货地址:</label> <input id="address" name="orders.address.address" class="easyui-textbox" style="width:82%">
			</div>
			<br>
			<div class="ftitle">订单详情</div><br>
			<div class="fitem">
				<label>所属编号:</label> <input id="orderId" name="orders.orderId" class="easyui-textbox" style="width:82%">
			</div>
			<br>
			<div class="fitem">
				<label>下单时间:</label> <input id="createTime" name="orders.createTime" class="easyui-textbox" >&nbsp;&nbsp;&nbsp;&nbsp;
				<label>支付时间:</label> <input id="payTime" name="orders.payTime" class="easyui-textbox" >
			</div>
			<br>
			<div class="fitem">
				<label>发货时间:</label> <input id="deliverTime" name="orders.deliverTime" class="easyui-textbox" >&nbsp;&nbsp;&nbsp;&nbsp;
				<label>收货时间:</label> <input id="receiverTime" name="orders.receiverTime" class="easyui-textbox" >
			</div>
			<br>
			<div class="ftitle">状态详细</div><br>
			<div class="fitem">
				<label>订单状态:</label> 
				<select id="orderState" name="orders.orderState" class="easyui-combobox" style="width:82%">
					<option value="2">已发货</option>
					<option value="-1">已失效</option>
				</select>
			</div>
			<br>
			<div class="fitem">
				<label>订单备注:</label> <input name="tips" class="easyui-textbox" style="width:82%">
			</div>
		</form>
	</div>
	<div id="orderInfo_dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok"
			onclick="saveCategory()">保存</a> <a href="#" class="easyui-linkbutton"
			iconCls="icon-cancel"
			onclick="javascript:$('#orderInfo_dlg').dialog('close')">取消</a>
	</div>
	<!-- 新增和修改表单 end -->	
	<script type="text/javascript">

	function setVal(){
		var row = $('#orderInfo_dg').datagrid('getSelected');
		$('#consignee').textbox('setValue', row.orders.address.consignee);
		$('#phone').textbox('setValue', row.orders.address.phone);
		$('#address').textbox('setValue', row.orders.address.address);
		$('#orderId').textbox('setValue', row.orders.orderId);
		$('#createTime').textbox('setValue', row.orders.createTime);
		$('#payTime').textbox('setValue', row.orders.payTime);
		$('#deliverTime').textbox('setValue', row.orders.deliverTime);
		$('#receiverTime').textbox('setValue', row.orders.receiverTime);
		$('#orderState').combobox('setValue', row.orders.orderState);
		if(row.orders.orderState == -1){
			$('#orderState').combobox('setText', '已失效');
		}
		if(row.orders.orderState == 0){
			$('#orderState').combobox('setText', '未付款');
		}
		if(row.orders.orderState == 1){
			$('#orderState').combobox('setText', '已付款');
		}
		if(row.orders.orderState == 2){
			r$('#orderState').combobox('setText', '已发货');
		}
		if(row.orders.orderState == 3){
			$('#orderState').combobox('setText', '已收货');
		}
		
	}

	

	//模糊搜索
	var url;
	
		function addOrderInfo() {
			$('#orderInfo_dlg').dialog('open').dialog('setTitle', '新增');
			$('#orderInfo_fm').form('clear');
			url = '${pageContext.request.contextPath}/orderInfo/add';
			loadCategorySuccess(0);
		}
		
		function editOrderInfo() {
			$('#orderInfo_fm').form('clear');
			var row = $('#orderInfo_dg').datagrid('getSelected');
				if (row) {
					setVal();
					$('#orderInfo_dlg').dialog('open').dialog('setTitle','修改');
					$('#orderInfo_fm').form('load', row);
					url = '${pageContext.request.contextPath}/orderInfo/edit?oInfoId='
							+ row.oInfoId;
				}
			
		}

		function destroyOrderInfo() {
			var row = $('#orderInfo_dg').datagrid('getSelected');

				if (row) {
					$.messager.confirm(
					'Confirm', '确认删除?',function(r) {
					if (r) {
						$.post(
						'${pageContext.request.contextPath}/admin/orderInfo/delete',
						{
							oInfoId : row.oInfoId},function(result) {
							if (result.success) {
								$('#orderInfo_dg').datagrid(
									'reload'); // reload the orderInfo data
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
		
		function saveCategory() {
			$('#orderInfo_fm').form('submit', {
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
					$('#orderInfo_dlg').dialog('close'); // close the dialog
					$('#orderInfo_dg').datagrid('reload'); // reload the orderInfo data
				}
			});
		}

		function orderIdFormatter(value, row, index) {
			return row.orders.orderId;
		}
		

		function addressFormatter(value, row, index) {
			return row.orders.address.address;
		}

		function consigneeFormatter(value, row, index) {
			return row.orders.address.consignee;
		}

		function phoneFormatter(value, row, index) {
			return row.orders.address.phone;
		}

		function createTimeFormatter(value, row, index) {
			return row.orders.createTime;
		}

		function orderStateFormatter(value, row, index) {
			var state = row.orders.orderState;
			if(state == -1){
				return "已失效";
			}
			if(state == 0){
				return "未付款";
			}
			if(state == 1){
				return "已付款";
			}
			if(state == 2){
				return "已发货";
			}
			if(state == 3){
				return "已收货";
			}
		}
		

		function orderSumFormatter(value, row, index) {
			return row.price * row.orderNum;
		}
		
	</script>

</body>
</html>