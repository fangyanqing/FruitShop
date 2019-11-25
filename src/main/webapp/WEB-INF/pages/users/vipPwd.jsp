<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>17商城</title>
<link type="text/css" href="${pageContext.request.contextPath}/public/css/css.css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/js.js"></script>
<script src="${pageContext.request.contextPath}/public/js/wb.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
 $(function(){
	 $(".vipNav dd:eq(1)").show();
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
       <a href="${pageContext.request.contextPath}/vipPwd" class="vipCur">密码修改</a>
       <a href="${pageContext.request.contextPath}/vipAdress">收货地址</a>
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
    修改密码
    </h2>
    
    <form id="pwdForm" method="post">
    <div class="address" style="display:block">
    <div class="addList">
     <label>原密码:</label>
     <input type="password" id="oldPwd" />
     &nbsp;&nbsp;<font color="red" id="errorPwd1"></font>
    </div><!--addList-->
    <div class="addList">
     <label>新密码:</label>
     <input type="password" class="vipPwd1" id="newPwd" />
     &nbsp;&nbsp;<font color="red" id="errorPwd2"></font>
    </div><!--addList-->
    <div class="addList">
     <label>确认密码:</label>
     <input type="password" class="vipPwd2" id="checkPwd" name="userPwd" />
     &nbsp;&nbsp;<font color="red" id="errorPwd3"></font>
    </div><!--addList-->
     <div class="addList">
     <input type="hidden" id="userId" name="userId" value="${SESSION_USER.userId}"/>
    </div><!--addList-->
    <div class="addList2">
     <input type="image" src="${pageContext.request.contextPath}/public/images/baocun.png" width="79" height="30" class="vipSub" />
    </div><!--addList2/-->
   </div><!--address/-->
   </form>
   
   </div><!--contRight/-->
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
	var password;

	var flag1=0;
	var flag2=0;
	var flag3=0;
	
		$('#oldPwd').blur(function () {
			var oldPwd=$("#oldPwd").val();
			var nowUser='${SESSION_USER.userName}';
			// 异步调用Ajax密码是否正确
			var adata = {
				"userName" : nowUser,
				"userPwd" : oldPwd
			}
			var data = JSON.stringify(adata);
			$.ajax({
	            type: "POST",
	            contentType: "application/json",
	            data: data,
	            url: "${pageContext.request.contextPath}/user/checkUserPwd",
	            success: function (res) {
	                if (res != "" && res == "success") {
	                	$('#errorPwd1').text('');
	                	password = oldPwd;
	                	flag1=1;
	                } else {
	                	$('#errorPwd1').text('原密码不正确，请重新输入！');
	                	$("#oldPwd").val('');
	                	flag1=0;
	                }
	            },
	            error: function () {
	            	alert("当前系统繁忙，请稍后操作！");
	            }
	        });
		})
		
	$('#newPwd').blur(function () {
			var newPwd=$("#newPwd").val();

			if(newPwd.length < 6 || newPwd.length > 14){
				$('#errorPwd2').text('密码长度应为6~14位！');
				flag2=0;
			} else {
				if(newPwd!=password){
					$('#errorPwd2').text('');
					flag2=1;
				} else {
					$('#errorPwd2').text('新密码不能和旧密码一致，请重新输入！');
					$("#newPwd").val('');
					flag2=0;
				}
			}
		})
		
		$('#checkPwd').blur(function () {
			var newPwd=$("#newPwd").val();
			var checkPwd=$("#checkPwd").val();

			if(newPwd==checkPwd){
				$('#errorPwd3').text('');
				flag3=1;
			} else {
				$('#errorPwd3').text('两次输入的密码不一致，请重新输入！');
				$("#checkPwd").val('');
				flag3=0;
			}
		})
		
		$(".vipSub").click(function(){
			if(flag1 == 1 && flag2 == 1 && flag3 == 1) {
				
				 var form = $("#pwdForm");
		         form.prop("action","${pageContext.request.contextPath}/user/edit_password");
		         form.submit();
				
			} else {
				alert('错误，无法修改！');
			}
		})
		
</script>
</body>
</html>