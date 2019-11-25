<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>17商城</title>
<link type="text/css" href="${pageContext.request.contextPath}/public/css/css.css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/js.js"></script>
<script src="${pageContext.request.contextPath}/public/js/wb.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/Area.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/AreaData_min.js" ></script>
<script type="text/javascript">
 $(function(){
	 	$(".vipNav dd:eq(1)").show();
	 	initComplexArea('seachprov', 'seachcity', 'seachdistrict', area_array, sub_array, '0', '0', '0');
	 })
</script>
</head>

<body>
 <div class="mianCont">
  <div class="top">
    <c:if test="${SESSION_USER == null}">
  	<span>您好！欢迎来到新鲜水果商城 请&nbsp;<a href="${pageContext.request.contextPath}/public/toLogin">[登录]</a>&nbsp;<a href="${pageContext.request.contextPath}/public/toReg">[注册]</a></span>
   </c:if>
   <c:if test="${SESSION_USER != null}">
   	<span>您好，${SESSION_USER.nickName}！欢迎来到新鲜水果商城&nbsp;<a href="${pageContext.request.contextPath}/public/doLogout">[退出]</a></span>
   </c:if>
   <span class="topRight">
    <a href="${pageContext.request.contextPath}/vip">我的17</a>&nbsp;| 
    <a href="${pageContext.request.contextPath}/users/carts">我的订单</a>&nbsp;| 
    <a href="${pageContext.request.contextPath}/users/vip">会员中心</a>&nbsp;|
    <a href="${pageContext.request.contextPath}/toContact">联系我们</a>
   </span>
  </div><!--top/-->
  <div class="lsg">
   <h1 class="logo"><a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/public/images/logo.png" width="217" height="90" /></a></h1>
   <form action="#" method="get" class="subBox">
    <div class="subBoxDiv">
     <input type="text" class="subLeft" />
     <input type="image" src="${pageContext.request.contextPath}/public/images/subimg.png" width="63" height="34" class="sub" />
     <div class="hotWord">
      热门搜索：
      <a href="proinfo.html">冷饮杯</a>&nbsp;
      <a href="proinfo.html">热饮杯</a> &nbsp;
      <a href="proinfo.html">纸杯</a>&nbsp;
      <a href="proinfo.html">纸巾</a>  &nbsp;
      <a href="proinfo.html">纸巾</a> &nbsp;
      <a href="proinfo.html">纸杯</a>&nbsp;
     </div><!--hotWord/-->
    </div><!--subBoxDiv/-->
   </form><!--subBox/-->
   <div class="gouwuche">
    <div class="gouCar">
     <img src="${pageContext.request.contextPath}/public/images/gouimg.png" width="19" height="20" style="position:relative;top:6px;" />&nbsp;|&nbsp;
     <strong class="red">0</strong>&nbsp;件&nbsp;|
     <strong class="red">￥ 0.00</strong> 
     <a href="${pageContext.request.contextPath}/order">去结算</a> <img src="${pageContext.request.contextPath}/public/images/youjian.jpg" width="5" height="8" />    
    </div><!--gouCar/-->
    <div class="myChunlv">
     <a href="${pageContext.request.contextPath}/vip"><img src="${pageContext.request.contextPath}/public/images/mychunlv.jpg" width="112" height="34" /></a>
    </div><!--myChunlv/-->
   </div><!--gouwuche/-->
  </div><!--lsg/-->
  <div class="pnt">
   <div class="pntLeft">
    <h2 class="Title">所有商品分类
     <ul class="InPorNav">
     <li><a href="product.html">纸杯系列</a>
      <div class="chilInPorNav">
       <a href="#">单层热饮杯</a>
       <a href="#">双层中空杯</a>
       <a href="#">瓦楞隔热杯</a>
       <a href="#">双淋膜冷饮杯</a>
       <a href="#">爆米花桶</a>
       <a href="#">纸碗</a>
       <a href="#">冰淇淋纸杯</a>
       <a href="#">PS杯盖</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="product.html">PET系列</a>
      <div class="chilInPorNav">
       <a href="#">PET透明杯</a>
       <a href="#">PET透明盖</a>
       <a href="#">PET透明沙拉盒</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="product.html">饮品杯配套系列</a>
      <div class="chilInPorNav">
       <a href="#">杯袖</a>
       <a href="#">环保纸浆杯托</a>
       <a href="#">纸杯打包袋</a>
       <a href="#">吸管</a>
       <a href="#">搅拌棒</a>
       <a href="#">杯盖</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="product.html">纸浆环保餐具系列</a>
      <div class="chilInPorNav">
       <a href="#">纸碟</a>
       <a href="#">纸碗</a>
       <a href="#">纸浆带盖汤碗</a>
       <a href="#">连体餐盒</a>
       <a href="#">分体餐盒</a>
       <a href="#">纸浆沙拉盒</a>
       <a href="#">纸托盘</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="product.html">纸餐盒系列</a>
      <div class="chilInPorNav">
       <a href="#">圆底纸餐盒</a>
       <a href="#">方底纸餐盒</a>
       <a href="#">三明治纸盒</a>
       <a href="#">蛋糕盒</a>
       <a href="#">其他纸餐盒</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="product.html">刀叉勺餐具</a>
      <div class="chilInPorNav">
       <a href="#">PS刀叉勺系列</a>
       <a href="#">PLA刀叉勺系列</a>
       <a href="#">淀粉刀叉勺系列</a>
       <a href="#">搅拌棒/吸管</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="product.html">生活用纸</a>
      <div class="chilInPorNav">
       <a href="#">餐巾纸</a>
       <a href="#">抽纸</a>
       <a href="#">卫生纸</a>
       <a href="#">擦手纸</a>
       <a href="#">其他纸类</a>
      </div><!--chilLeftNav/-->
     </li>
     <li><a href="product.html">纸袋/环保打包袋</a>
      <div class="chilInPorNav">
       <a href="#">纸袋</a>
       <a href="#">环保淀粉塑料袋</a>
       <a href="#">PLA塑料袋</a>
       <a href="#">食品袋</a>
      </div><!--chilLeftNav/-->
     </li>
    </ul><!--InPorNav/-->
    </h2>
   </div><!--pntLeft/-->
   <div class="pntRight">
    <ul class="nav">
     <li><a href="${pageContext.request.contextPath}/deng">商城首页</a></li>
     <li><a href="${pageContext.request.contextPath}/product">促销中心</a></li>
     <li><a href="${pageContext.request.contextPath}/login">会员中心</a></li>
     <li><a href="${pageContext.request.contextPath}/help">帮助中心</a></li>
     <div class="clears"></div>
     <div class="phone">TEL：021-12345678</div>
    </ul><!--nav/-->
   </div><!--pntRight/-->
   <div class="clears"></div>
  </div><!--pnt/-->
  <div class="positions">
   当前位置：<a href="${pageContext.request.contextPath}/deng">首页</a> &gt; <a href="${pageContext.request.contextPath}/vip">会员中心</a>
    &gt; <a href="#" class="posCur">我的订单</a>
  </div><!--positions/-->
  <div class="cont">
   <div class="contLeft" id="contLeft">
    <h3 class="leftTitle">会员中心</h3>
    <dl class="helpNav vipNav">
     <dt>我的主页</dt>
      <dd>
       <a href="${pageContext.request.contextPath}/vip">个人中心</a>
       <a href="${pageContext.request.contextPath}/vipOrder">我的订单</a>
      </dd>
     <dt>账户设置</dt>
      <dd>
       <a href="${pageContext.request.contextPath}/vipMy">个人信息</a>
       <a href="${pageContext.request.contextPath}/vipPwd">密码修改</a>
       <a href="${pageContext.request.contextPath}/vipAdress" class="vipCur">收货地址</a>
      </dd>
      <dt>客户服务</dt>
       <dd>
        <a href="${pageContext.request.contextPath}/vipExit">网站使用条款</a>
        <a href="${pageContext.request.contextPath}/vipTuihuo">网站免责声明</a>
        <a href="${pageContext.request.contextPath}/message">在线留言</a>
       </dd>
      
      
    </dl><!--helpNav/-->
   </div><!--contLeft/-->
   <div class="contRight">
   <h2 class="oredrName">
    收货地址
   </h2>
   <!-- 收货地址表单 -->
 <form id="addressForm" action="" method="post">
   <div class="address">
   
   <div class="addList" >
   <label><span class="red">* </span>选择地区:</label>
    	<select id="seachprov" name="seachprov" style="height:25px;width:107px" onChange="changeComplexProvince(this.value, sub_array, 'seachcity', 'seachdistrict');">
    	</select>&nbsp;&nbsp;
		<select id="seachcity" name="homecity" style="height:25px;width:107px" onChange="changeCity(this.value,'seachdistrict','seachdistrict');">
			<option>请选择</option>
		</select>&nbsp;&nbsp;
		<span id="seachdistrict_div">
			<select id="seachdistrict" style="height:25px;width:107px" name="seachdistrict">
			</select>
		</span>
    </div><!--addList--><font id="editTip" color="gray" style="margin-left:105px"></font>
    
    <div class="addList" id="inputAddress">
     <label><span class="red">* </span>详细地址:</label>
     <input type="text" name="address" id="address" required="required"/>
    </div><!--addList-->
    
    <div class="addList">
     <label><span class="red">* </span>收件人:</label>
     <input type="text" name="consignee" id="consignee" required="required"/>
    </div><!--addList-->
    
    <div class="addList">
     <label><span class="red">* </span>手机号码:</label>
     <input type="text" name="phone" id="phone" required="required"/>
     &nbsp;&nbsp;<font id="error" color="red"></font>
    </div><!--addList--> 
    
     <div class="addList" style="display: none">
     <label><span class="red">* </span>地址Id:</label>
     <input type="text" name="addressId" id="addressId" required="required" readonly="readonly"/>
    </div><!--addList--> 
    
    <div class="addList2">
     <input type="image" src="${pageContext.request.contextPath}/public/images/queren.jpg" width="100" height="32" onclick="saveAddress()" />
    </div><!--addList2/-->
   </div><!--address/-->
 </form> 
   
   <table class="vipAdress">
  
    <tr>
     <th>收货人</th>
     <th>详细地址</th>
     <th>手机号码</th>
     <th>操作</th>
    </tr>
    
    <c:if test="${addressList == null}">
	   	<tr>
	   
	     <td colspan="5">没有收货地址，请点击<span class="green add">[添加]</span></td>
	     
	    </tr>
   </c:if>
   <c:if test="${addressList != null}">
   	<c:forEach items="${addressList }" var="address" varStatus="index">
	   <tr>
	     <td>${address.consignee }</td>
	     <td>${address.address }</td>
	     <td>${address.phone }</td>
	     <td ><span class="green upd" onclick="editAddress(${address.addressId })">[修改]</span> | 
	     <span class="red" onclick="delAddress(${address.addressId })" style="cursor:pointer">[删除]</span> </td>
	   </tr>
   	</c:forEach>
   </c:if>
   		<tr>  
	     	<td colspan="5">新增收货地址，请点击<span class="green add">[添加]</span></td>
	    </tr>
   </table><!--vipAdress/-->
   </div>
   <!--contRight/-->
   <div class="clears"></div>
  </div><!--cont/-->
  <div class="inHelp">
   <div class="inHLeft">
    <h4>帮助中心</h4>
    <ul class="inHeList">
     <li><a href="${pageContext.request.contextPath}/help">购物指南</a></li>
     <li><a href="${pageContext.request.contextPath}/help">支付方式</a></li>
     <li><a href="${pageContext.request.contextPath}/help">售后服务</a></li>
     <li><a href="${pageContext.request.contextPath}/about">企业简介</a></li>
     <div class="clears"></div>
    </ul><!--inHeList/-->
   </div><!--inHLeft/-->
   <div class="inHLeft">
    <h4>会员服务</h4>
    <ul class="inHeList">
     <li><a href="${pageContext.request.contextPath}/reg">会员注册</a></li>
     <li><a href="${pageContext.request.contextPath}/login">会员登录</a></li>
     <li><a href="${pageContext.request.contextPath}/order">购物车</a></li>
     <li><a href="${pageContext.request.contextPath}/order">我的订单</a></li>
     <div class="clears"></div>
    </ul><!--inHeList/-->
   </div><!--inHLeft/-->
   <div class="inHRight">
    <h4>全国统一免费服务热线</h4>
    <div class="telBox">400-0000-0000</div>
    <div class="weibo">
    <wb:follow-button uid="2991975565" type="red_1" width="67" height="24" ></wb:follow-button>
    </div>
   </div><!--inHRight/-->
   <div class="clears"></div>
  </div><!--inHelp/-->
  <div class="footer">
   <p>
   <a href="${pageContext.request.contextPath}/toLogin">进入后台管理</a>&nbsp;|&nbsp;
   <a href="${pageContext.request.contextPath}/deng">商城首页</a>&nbsp;|&nbsp;
   <a href="${pageContext.request.contextPath}/product">促销中心</a>&nbsp;|&nbsp;
   <a href="${pageContext.request.contextPath}/order">我的订单</a>&nbsp;|&nbsp;
   <a href="${pageContext.request.contextPath}/new">新闻动态</a>&nbsp;|&nbsp;
   <a href="${pageContext.request.contextPath}/login">会员中心</a>&nbsp;|&nbsp;
   <a href="${pageContext.request.contextPath}/help">帮助中心</a>
   </p>
   <p>
    版权所有：上海17实业有限公司 版权所有  Copyright 2010-2015   沪ICP备00000000号   <a href="http://www.mycodes.net/" target="_blank">源码之家</a>   
   </p>
  </div><!--footer/-->
 </div><!--mianCont/-->
 <a href="#" class="backTop">&nbsp;</a>
 <script type="text/javascript">
var seachprov;
var seachcity;

// 编辑？
var edit = 0;

function checkSelect(){
	if(seachprov != null && seachprov != 0 && seachcity != null && seachcity != 0){
		$('#inputAddress').show();
		$('#address').val('');
	} else {
		$('#inputAddress').hide();		
	}
}

checkSelect();

$('#seachprov').change(function(){
	seachprov = $('#seachprov').val();
	seachcity = $('#seachcity').val();
	console.log(seachprov);
	checkSelect();
});

$('#seachcity').change(function(){
	seachprov = $('#seachprov').val();
	seachcity = $('#seachcity').val();
	console.log(seachcity);
	checkSelect();
}); 

//得到地区码
function getAreaID(){
	var area = 0;          
	if($("#seachdistrict").val() != "0"){
		area = $("#seachdistrict").val();                
	}else if ($("#seachcity").val() != "0"){
		area = $("#seachcity").val();
	}else{
		area = $("#seachprov").val();
	}
	return area;
}

function showAreaID() {
	//地区码
	var areaID = getAreaID();
	//地区名
	var areaName = getAreaNamebyID(areaID) ;
	// alert("您选择的地区码：" + areaID + "      地区名：" + areaName);  
	return areaName; 
}

//根据地区码查询地区名
function getAreaNamebyID(areaID){
	var areaName = "";
	if(areaID.length == 2){
		areaName = area_array[areaID];
	}else if(areaID.length == 4){
		var index1 = areaID.substring(0, 2);
		areaName = area_array[index1] + " " + sub_array[index1][areaID];
	}else if(areaID.length == 6){
		var index1 = areaID.substring(0, 2);
		var index2 = areaID.substring(0, 4);
		areaName = area_array[index1] + " " + sub_array[index1][index2] + " " + sub_arr[index2][areaID];
	}
	return areaName;
}

//.add 新增地址
$(".add").click(function(){
	$(".address").stop(true,true).slideDown();
	$('#address').val('');
	$('#phone').val('');
	$('#consignee').val('');
	$('#addressId').val('');
	$('#addressId').attr('disabled','disabled');
	$('#editTip').text('');
	edit = 0;
})
//.upd 修改地址
$(".upd").click(function(){
	$(".address").stop(true,true).slideDown();
	edit = 1;
})

$('#phone').blur(function(){
	var phone = $('#phone').val();
	var phonePattern = /^1([38][0-9]|4[579]|5[0-3,5-9]|6[6]|7[0135678]|9[89])\d{8}$/;
	if(phone.trim() == '' || !phonePattern.test(phone)){
		$('#phone').val('');
		$("#error").text("非法手机号，请重新输入！");
	} else {
		$("#error").text("");
	}
});

function delAddress(index){
	var adata = {
			"addressId" : index
		}
		var data = JSON.stringify(adata);
		console.log(data);
			$.ajax({
	            type: "POST",
	            contentType: "application/json",
	            data: data,
	            url: "${pageContext.request.contextPath}/users/address/delete",
	            success: function (res) {
	            	 if (res != "" && res == "success") {
	                	alert("删除成功！");
	                	window.location.reload();
	                } else {
	                	alert("删除失败！");
	                }
	            },
	            error: function () {
	            	alert("系统繁忙，请稍后重试！");
	            }
	        });
}

function editAddress(index){
		var adata = {
			"addressId" : index
		}
		var data = JSON.stringify(adata);
		// console.log(data);
			$.ajax({
	            type: "POST",
	            contentType: "application/json",
	            data: data,
	            url: "${pageContext.request.contextPath}/users/address/findAddress",
	            success: function (res) {
	                if (res != null) {
	                	$('#address').val(res.address);
	                	$('#phone').val(res.phone);
	                	$('#consignee').val(res.consignee);
	                	$('#addressId').val(res.addressId);
	                	$('#editTip').text('若修改地址请选择，否则不需要重新选择');
	                	$('#addressId').removeAttr('disabled');
	                	edit = 1;
	                } else {
	                	alert("什么都没有！");
	                }
	            },
	            error: function () {
	            	alert("系统繁忙，请稍后重试！");
	            }
	        }); 
}

function saveAddress() {
	var areaName = showAreaID();
	var address = $('#address').val();
	if(address.trim() == ''){
		$('#address').val(address);
	} else {
		$('#address').val(areaName + ' ' + address);
	}

	 var form = $("#addressForm");

	 if(edit == 1){
		alert("修改成功！");
		form.prop("action","${pageContext.request.contextPath}/users/address/edit");
		form.submit();
	} else {
		alert("添加成功！");
		form.prop("action","${pageContext.request.contextPath}/users/address/add");
		form.submit();
	}
}
</script>
</body>
</html>