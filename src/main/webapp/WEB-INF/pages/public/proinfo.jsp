<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>17商城</title>
<link type="text/css" href="${pageContext.request.contextPath}/public/css/css.css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/js.js"></script>
<script src="${pageContext.request.contextPath}/public/js/wb.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/public/js/MagicZoom.js" type="text/javascript"></script>
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
     <li><a href="${pageContext.request.contextPath}/">商城首页</a></li>
     <li><a href="${pageContext.request.contextPath}/toProduct">促销中心</a></li>
     <li><a href="${pageContext.request.contextPath}/login">会员中心</a></li>
     <li><a href="${pageContext.request.contextPath}/help">帮助中心</a></li>
     <div class="clears"></div>
     <div class="phone">TEL：021-12345678</div>
    </ul><!--nav/-->
   </div><!--pntRight/-->
   <div class="clears"></div>
  </div><!--pnt/-->
  <div class="positions">
   当前位置：<a href="${pageContext.request.contextPath}/">首页</a> &gt; <a href="${pageContext.request.contextPath}/vip">会员中心</a>
    &gt; <a href="#" class="posCur">我的订单</a>
  </div><!--positions/-->
  <div class="cont">
   <div class="contLeft">
    <ul class="leftPorNav">
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
   </div><!--contLeft/-->
   <div class="contRight" style="border:0;">
   <div class="proBox">
   <div id="tsShopContainer">
	<div id="tsImgS">
	 <a href="${pageContext.request.contextPath}/${fruitInfo.fruitImage}" title="Images" class="MagicZoom" id="MagicZoom">
	 <img width="300" height="300" src="${pageContext.request.contextPath}/${fruitInfo.fruitImage}" /></a></div>
	<div id="tsPicContainer">
		<div id="tsImgSArrL" onclick="tsScrollArrLeft()"></div>
		<div id="tsImgSCon">
			<ul>
				<li onclick="showPic(0)" rel="MagicZoom" class="tsSelectImg">
				<img height="42" width="42" src="${pageContext.request.contextPath}/${fruitInfo.fruitImage}" tsImgS="${pageContext.request.contextPath}/${fruitInfo.fruitImage}" /></li>
				<%-- <li onclick="showPic(1)" rel="MagicZoom"><img height="42" width="42" src="${pageContext.request.contextPath}/public/images/02.jpg" tsImgS="${pageContext.request.contextPath}/public/images/02.jpg" /></li>
				<li onclick="showPic(2)" rel="MagicZoom"><img height="42" width="42" src="${pageContext.request.contextPath}/public/images/03.jpg" tsImgS="${pageContext.request.contextPath}/public/images/03.jpg" /></li>
				<li onclick="showPic(3)" rel="MagicZoom"><img height="42" width="42" src="${pageContext.request.contextPath}/public/images/04.jpg" tsImgS="${pageContext.request.contextPath}/public/images/04.jpg" /></li>
				<li onclick="showPic(4)" rel="MagicZoom"><img height="42" width="42" src="${pageContext.request.contextPath}/public/images/05.jpg" tsImgS="${pageContext.request.contextPath}/public/images/05.jpg" /></li>
				<li onclick="showPic(5)" rel="MagicZoom"><img height="42" width="42" src="${pageContext.request.contextPath}/public/images/06.jpg" tsImgS="${pageContext.request.contextPath}/public/images/06.jpg" /></li>
				<li onclick="showPic(6)" rel="MagicZoom"><img height="42" width="42" src="${pageContext.request.contextPath}/public/images/07.jpg" tsImgS="${pageContext.request.contextPath}/public/images/07.jpg" /></li>
				<li onclick="showPic(7)" rel="MagicZoom"><img height="42" width="42" src="${pageContext.request.contextPath}/public/images/08.jpg" tsImgS="${pageContext.request.contextPath}/public/images/08.jpg" /></li>
				<li onclick="showPic(8)" rel="MagicZoom"><img height="42" width="42" src="${pageContext.request.contextPath}/public/images/09.jpg" tsImgS="${pageContext.request.contextPath}/public/images/09.jpg" /></li>
				<li onclick="showPic(9)" rel="MagicZoom"><img height="42" width="42" src="${pageContext.request.contextPath}/public/images/10.gif" tsImgS="${pageContext.request.contextPath}/public/images/10.gif" /></li>
				<li onclick="showPic(10)" rel="MagicZoom"><img height="42" width="42" src="${pageContext.request.contextPath}/public/images/11.gif" tsImgS="${pageContext.request.contextPath}/public/images/10.gif" /></li> --%>
			</ul>
		</div>
		<div id="tsImgSArrR" onclick="tsScrollArrRight()"></div>
	</div>
	<img class="MagicZoomLoading" width="16" height="16" src="${pageContext.request.contextPath}/public/images/loading.gif" alt="Loading..." />
    <script src="${pageContext.request.contextPath}/public/js/ShopShow.js"></script>
    </div><!--tsShopContainer/-->
    <div class="proBoxRight">
     <h3 class="proTitle"> ${fruitInfo.fruitName}</h3>
     <div>商品编号： ${fruitInfo.fruitId} </div>
     <div>会员价：<strong class="red">¥ ${fruitInfo.fruitPrice}</strong> </div>
     <div>单位： ${fruitInfo.fruitUnit} </div>
     <div>库存：<strong class="red">[有货] </strong> 从上海发货</div>
     <ul class="rongliang">
      <li>100ml</li>
      <li>200ml</li>
      <li>300ml</li>
      <li>400ml</li>
      <li>500ml</li>
      <div class="clears"></div>
     </ul><!--rongliang/-->
     <div class="shuliang2">
      数量： <input type="text" value="1" />
     </div><!--shuliang2/-->
     <div class="gc">
      <a href="${pageContext.request.contextPath}/order"><img src="${pageContext.request.contextPath}/public/images/goumai.png" width="117"  height="36" /></a>&nbsp;&nbsp;
      <a href="#"><img src="${pageContext.request.contextPath}/public/images/shoucang.png" width="117" height="36" /></a>
     </div><!--gc/-->    
    </div><!--proRight/-->
    <div class="clears"></div>
    </div><!--proBox/-->
    <ul class="fangyuan">
      <li>商品描述</li>
      <li>商品参数</li>
      <li>商品评论</li>
      <li>商品晒图</li>
      <div class="clears"></div>
    </ul><!--fangyuan/-->
    <div class="fangList">
    <div class="fangPar">
         乐购超市旁，未来地铁14号线沿线地段，规划中上海四大商业附中心—真如商业副中心，婚房精装电梯两房。让您一步到位<br />
    很荣幸栗见能借此机会给您问好，为您介绍此房.<br />
    超稀缺地铁双南两房，全明户型，满五唯一，业主急需资金周转特急卖。<br />
    Information of Vernal Garden 满庭芳花园 <br />
    Location:<br />
    Located close to Gubei Carrefour and the Hongqiao Airport, 15 mins drive to international schools and downtown area.<br />
    Description:<br />
    It offers a full range of accommodations including freestanding houses, semi-detached houses and condominiums. The units are very spacious, well decorated and fully furnished. Resident can enjoy a complete range of onsite <br />recreational facilities. <br />
    Facilities:<br />
    Indoor swimming door, gym, sauna, spa, squash, cafe, childrens playground, restaurant, convenience store, snooker, basketball court. <br />
    Tv Channel:<br />
    HBO，TVB，BBC，DISCOVERY，CINEMAX，
    </div><!--fangPar/-->
    <img src="${pageContext.request.contextPath}/public/images/ban1.jpg" width="756" height="310" />
    </div><!--fangList/-->
    <div class="fangList">
              商品参数
    </div><!--fangList/-->
    <!-- 商品评论版面 -->
    <div class="fangList">
       <div style="disblay:block;fload:left; font-size:20px">
        <label>商品评论</label>  
       </div>
       <br />
	     <div  style="disblay:block;fload:left;">
	         <label>评论等级:</label> <button>一级</button> <button>二级</button> <button>三级</button> <button>四级</button><button>五级</button>
	     </div>
	     <br />
	     <textarea rows="10" cols="50" style="boder:2px green">
	     </textarea>
	     <br />
	     <div>
	       <button style="color:green">提交评论</button>
	     </div>
	     <br />
	     <br />
	     
	    <div>
	      <div style="font-size:20px"> 已有评论</div>
	       <br />     
	      <div>
	        <div> 
	           <img src="${pageContext.request.contextPath}/public/images/ban1.jpg" width="50px" height="50px" border-radius="25px" />
	        
	           <label>张三</label><label> &nbsp; &nbsp; &nbsp;时间：2019-10-11</label>
	        </div>
	        <div style="with:350px;height:50px ; border: 1px solid #ccc;">
	                             评论内容：物美价廉，值得拥有
	        </div>
	      </div>
	      
	    </div>
    
     
    </div><!--fangList/-->
    <div class="fangList">
     <img src="${pageContext.request.contextPath}/public/images/rdPro1.jpg" width="132" height="129" /><br /><br />
     <img src="${pageContext.request.contextPath}/public/images/rdPro2.jpg" width="132" height="129" /><br /><br />
     <img src="${pageContext.request.contextPath}/public/images/rdPro3.jpg" width="132" height="129" /><br /><br />
     <img src="${pageContext.request.contextPath}/public/images/rdPro4.jpg" width="132" height="129" /><br /><br />
     <img src="${pageContext.request.contextPath}/public/images/rdPro5.jpg" width="132" height="129" /><br /><br />
    </div><!--fangList/-->
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
