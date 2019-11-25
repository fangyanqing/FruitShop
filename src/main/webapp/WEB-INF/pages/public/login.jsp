<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户登录</title>
<link type="text/css" href="${pageContext.request.contextPath}/public/css/css.css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/js.js"></script>
</head>

<body style=" background:#FFF;">
 <div class="loginLogo">
  <div class="logoMid">
   <h1 class="logo" style="height:71px;padding-top:10px;"><a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/public/images/loginLogo.jpg" width="241" height="71" /></a></h1>
   <div class="loginReg">
    还没有会员账号?&nbsp;<a href="${pageContext.request.contextPath}/public/toReg">免费注册</a>
   </div><!--loginReg/-->
  </div><!--logoMid/-->
 </div><!--loginLogo/-->
 <div class="loginBox">
  <div class="loginLeft">
   <img src="${pageContext.request.contextPath}/public/images/logoinimg.jpg" width="716" height="376" />
  </div><!--loginLeft/-->
  <form action="${pageContext.request.contextPath}/public/doLogin" method="post" class="loginRight">
   <h2>会员登录</h2>
   
   <h3>用户名</h3>
   <input type="text" name="userName" class="name" />
   
   <h3>密码</h3>
   <input type="password" name="userPwd" class="pwd" />
   
   <div class="zhuangtai">
    <input type="checkbox" checked="checked" /> 下次自动登录
   </div><!--zhuangtai/-->
   
   <div class="subs">
    <input type="image" src="${pageContext.request.contextPath}/public/images/sub.jpg" class="submit" />
   </div>
  </form><!--loginRight/-->
  <div class="clears"></div>
 </div><!--loginBox/-->
</body>
</html>
