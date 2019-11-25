<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新鲜水果商城</title>
<link type="text/css" href="${pageContext.request.contextPath}/public/css/css.css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/js.js"></script>
<script src="${pageContext.request.contextPath}/public/js/wb.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(function(){
		$("#kinMaxShow").kinMaxShow();
	});
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
    <h2 class="Title">所有商品分类</h2>
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
   </div><!--pntLeft/-->
   <div class="pntRight">
    <ul class="nav">
     <li class="navCur"><a href="${pageContext.request.contextPath}/">商城首页</a></li>
     <li><a href="${pageContext.request.contextPath}/toProduct">促销中心</a></li>
     <li><a href="${pageContext.request.contextPath}/login">会员中心</a></li>
     <li><a href="${pageContext.request.contextPath}/help">帮助中心</a></li>
     <div class="clears"></div>
     <div class="phone">TEL：021-12345678</div>
    </ul><!--nav/-->
    <div class="banner">
     <div id="kinMaxShow">
      <div>
       <a href="#"><img src="${pageContext.request.contextPath}/public/images/ban1.jpg" height="360"  /></a>
      </div> 		
      <div>
       <a href="#"><img src="${pageContext.request.contextPath}/public/images/ban2.jpg" height="360"  /></a>
      </div>
      <div>
       <a href="#"><img src="${pageContext.request.contextPath}/public/images/ban3.jpg" height="360"  /></a>
      </div>
      <div>
       <a href="#"><img src="${pageContext.request.contextPath}/public/images/ban4.jpg" height="360"  /></a>
      </div>
      <div>
       <a href="#"><img src="${pageContext.request.contextPath}/public/images/ban5.jpg" height="360"  /></a>
      </div>      
     </div><!--kinMaxShow/-->
    </div><!--banner/-->
   </div><!--pntRight/-->
   <div class="clears"></div>
  </div><!--pnt/-->
  <div class="rdPro">
   <div class="rdLeft">
   
    <ul class="rdList">
    
     <li>推荐商品</li>
     <li>促销商品</li>
     <div class="clears"></div>
    </ul><!--rdList/-->
    <!-- 推荐商品 -->
    <div class="rdProBox">
		<c:forEach items="${fruitsNew}" var="fruitsNew">
    		<dl>
	      		<dt><a href="${pageContext.request.contextPath}/toProInfo?fruitId=${fruitsNew.fruitId }"><img src="${pageContext.request.contextPath}/${fruitsNew.fruitImage }" width="132" height="129" /></a></dt>
	      		<dd>${fruitsNew.fruitName }</dd>
	      		<dd class="cheng">￥ ${fruitsNew.fruitPrice } / ${fruitsNew.fruitUnit}</dd>
	     	</dl>
       </c:forEach> 
     <div class="clears"></div>
    </div><!--rdPro/-->
    
    <!-- 促销商品 -->
    <div class="rdProBox">
        <c:forEach items="${fruitPromotion}" var="fruitPromotion">
	     <dl>
		      <dt><a href="${pageContext.request.contextPath}/toProInfo?fruitId=${fruitPromotion.fruitId }"><img src="${pageContext.request.contextPath}/${fruitPromotion.fruitImage }" width="132" height="129" /></a></dt>
	      		<dd>${fruitPromotion.fruitName }</dd>
	      		<dd class="cheng">￥ ${fruitPromotion.fruitPrice } / ${fruitPromotion.fruitUnit}</dd>
	     </dl>
	     </c:forEach> 
    
        <div class="clears"></div>
    </div><!--rdPro/-->
   </div><!--rdLeft/-->
   
   <div class="rdRight">
    <img src="${pageContext.request.contextPath}/public/images/rdRight.jpg" width="221" height="254" />
   </div><!--rdRight/-->
   <div class="clears"></div>
  </div><!--rdPro/-->
  <div class="hengfu">
   <img src="${pageContext.request.contextPath}/public/images/hengfu1.jpg" width="979" height="97" />
  </div><!--hengfu/-->
  
  <div class="floor" id="floor1">
   <h3 class="floorTitle">
   1F&nbsp;&nbsp;&nbsp;&nbsp;当季新品
   <a href="proinfo.html" class="more">更多 &gt;</a>
   </h3>
   <div class="floorBox">
    <div class="floorLeft">
     <ul class="flList">
     	<c:forEach items="${allTypes}" var="allTypes" varStatus="status" begin="0" end="4">
      		<li index="${allTypes.typeId}">${allTypes.typeName}</li>
     	</c:forEach>
      <li><a href="proinfo.html">更多&gt;&gt;</a></li>
      <div class="clears"></div>
     </ul><!--flList/-->
     <div class="flImg"><img src="${pageContext.request.contextPath}/public/images/flListimg1.jpg" width="198" height="290" /></div>
    </div><!--floorLeft/-->
    
    <div class="floorRight">
    <div class="frProList">
		<c:forEach items="${findByType}" var="findByType">
	      <dl>
		      <dt><a href="${pageContext.request.contextPath}/toProInfo?fruitId=${findByType.fruitId }"><img src="${pageContext.request.contextPath}/${findByType.fruitImage }" width="132" height="129" /></a></dt>
	      		<dd>${findByType.fruitName }</dd>
	      		<dd class="cheng">￥ ${findByType.fruitPrice } / ${findByType.fruitUnit}</dd>
	     </dl>
      </c:forEach>
      <div class="clears"></div>
     </div><!--frProList-->
     
     
    </div><!--floorRight/-->
    <div class="clears"></div>
   </div><!--floorBox/-->
  </div><!--floor/-->
  
  <div class="hengfu">
   <img src="${pageContext.request.contextPath}/public/images/hengfu2.jpg" width="978" height="97" />
  </div><!--hengfu/-->
  <div class="floor" id="floor2">
   <h3 class="floorTitle">
   2F&nbsp;&nbsp;&nbsp;&nbsp;国产优选
   <a href="proinfo.html" class="more">更多 &gt;</a>
   </h3>
   <div class="floorBox">
    <div class="floorLeft">
     <ul class="flList">
      	<c:forEach items="${allProviders}" var="allProviders" varStatus="status" begin="0" end="4">
      		<li index="${allProviders.providerId}">${allProviders.providerName}</li>
     	</c:forEach>
      <li><a href="proinfo.html">更多&gt;&gt;</a></li>
      <div class="clears"></div>
     </ul><!--flList/-->
     <div class="flImg"><img src="${pageContext.request.contextPath}/public/images/flListimg2.jpg" width="198" height="290" /></div>
    </div><!--floorLeft/-->
    
    <div class="floorRight">
     <!-- 广东 -->
     <div class="frProList">
     <c:forEach items="${findByProvider}" var="findByProvider">
	      <dl>
		  	<dt><a href="${pageContext.request.contextPath}/toProInfo?fruitId=${findByProvider.fruitId }"><img src="${pageContext.request.contextPath}/${findByProvider.fruitImage }" width="132" height="129" /></a></dt>
	      	<dd>${findByProvider.fruitName }</dd>
	      	<dd class="cheng">￥ ${findByProvider.fruitPrice } / ${findByProvider.fruitUnit}</dd>
	     </dl>
      </c:forEach>
      <div class="clears"></div>
     </div><!--frProList-->
    </div><!--floorRight/-->
    <div class="clears"></div>
    
   </div><!--floorBox/-->
  </div><!--floor/-->
  
  <div class="hengfu">
   <img src="${pageContext.request.contextPath}/public/images/hengfu3.jpg" width="978" height="97" />
  </div><!--hengfu/-->
  
  <div class="floor" id="floor3">
   <h3 class="floorTitle">
   3F&nbsp;&nbsp;&nbsp;&nbsp;进口严选
   <a href="proinfo.html" class="more">更多 &gt;</a>
   </h3>
   <div class="floorBox">
    <div class="floorLeft">
     <ul class="flList">
      <li>美国</li>
      <li>越南</li>
      <li>泰国</li>
      <li>越南</li>
      <li>韩国</li>
      <li><a href="proinfo.html">更多&gt;&gt;</a></li>
      <div class="clears"></div>
     </ul><!--flList/-->
     <div class="flImg"><img src="${pageContext.request.contextPath}/public/images/flListimg3.jpg" width="198" height="290" /></div>
    </div><!--floorLeft/-->
    
    <div class="floorRight">

     <div class="frProList">
      <dl>
      <dt><a href="proinfo.html"><img src="images/rdPro4.jpg" width="132" height="129" /></a></dt>
      <dd>妙洁 一次性纸杯 8盎司228ml 100只/袋 20袋/箱</dd>
      <dd class="cheng">￥19.80/袋</dd>
     </dl>
     <div class="clears"></div>
    </div><!--frProList-->
    
    </div><!--floorRight/-->
    <div class="clears"></div>
   </div><!--floorBox/-->
  </div><!--floor/-->
  
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
   <a href="${pageContext.request.contextPath}/">商城首页</a>&nbsp;|&nbsp;
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
</body>
</html>
