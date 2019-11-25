<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
<title>用户注册</title>
<link type="text/css" href="${pageContext.request.contextPath}/public/css/css.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/css/verify.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/js.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/public/js/verify.js" ></script>

</head>

<body style=" background:#FFF;">
 <div class="loginLogo">
  <div class="logoMid">
   <h1 class="logo" style="height:71px;padding-top:10px;"><a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/public/images/loginLogo.jpg" width="241" height="71" /></a></h1>
   <div class="loginReg">
    已拥有会员账号?&nbsp;<a href="${pageContext.request.contextPath}/public/toLogin">登录</a>
   </div><!--loginReg/-->
  </div><!--logoMid/-->
 </div><!--loginLogo/-->
 <div class="loginBox">
  <img src="${pageContext.request.contextPath}/public/images/chengnuo.jpg" width="295" height="393" class="chengnuo" />
  <form id="regForm" action="${pageContext.request.contextPath}/public/doReg" method="post" class="reg">
   <div class="regList">
    <label><span class="red">*</span> 用户名</label>
    <input id="regUser" type="text" name="userName"/> <span id="regUserTip" style="color:#999;">请输入用户名</span>
   </div><!--用户名/-->

   <div class="regList">
    <label><span class="red">*</span> 登录密码</label>
    <input id="regPwd" type="password" name="userPwd" /> <span id="regPwdTip" style="color:#999;">请输入密码</span>
   </div><!--密码/-->
   
   <div class="regList">
    <label><span class="password">*</span> 确认密码</label>
    <input id="regCheckPwd" type="password" name="checkPwd" /> <span id="regCheckPwdTip" style="color:#999;">请确认密码</span>
   </div><!--密码/-->
   
   <div class="regList">
   <label><span class="red">*</span> 验证码</label>
    <%--  <input type="text" class="yanzheng" /><img src="${pageContext.request.contextPath}/public/images/yanzheng.jpg" width="103" height="38" /> --%>
     <div id="m"></div>
   </div><!--regList/-->
   <div class="xieyi">
    <input id="regCheckbox" type="checkbox" /> 我已经阅读并同意<a href="#">《用户注册协议》</a>
   </div><!--协议/-->
   <div class="reg">
    <input id="check-btn" type="image" src="${pageContext.request.contextPath}/public/images/reg.jpg" width="284" height="34" class="regSub"/>
   </div><!--reg/-->
  </form><!--reg/-->
  <div class="clears"></div>
 </div><!--loginBox/-->
 
  <!--这个验证码的作用是在放图片的位置设置一个div标签,然后js绑定这个标签就行了-->
<script type="text/javascript">
//注册验证
var userName = 0;
var userPwd = 0;

$("#regUser").blur(function () {
	var regUser=$("#regUser").val();
	if(regUser.trim() == "" || regUser.length < 8 || regUser.length > 16) {
		// 错误提示
		$("#regUserTip").css("color","red");
		$("#regUserTip").text("用户名长度应为8~16位！");
	} else {
		// 异步调用Ajax判断用户名
		var adata = {
			"userName" : regUser
		}
		var data = JSON.stringify(adata);
		console.log(data);
		$.ajax({
            type: "POST",
            contentType: "application/json",
            data: data,
            url: "${pageContext.request.contextPath}/public/checkUserName",
            success: function (res) {
                if (res != "" && res == "success") {
                	// 改变样式
                	$("#regUserTip").css("color","green");
            		$("#regUserTip").text("用户名可以使用！");
            		userName = 1;
                } else {
                	$("#regUserTip").css("color","red");
            		$("#regUserTip").text("用户名已被占用！");
            		userName = 0;
                }
            },
            error: function () {
            	alert("出错了！");
            }
        });
	}
})

$("#regPwd").blur(function () {
	var pwd1=$("#regPwd").val();
	if(pwd1.trim() == "" || pwd1.length < 6 || pwd1.length > 14) {
		// 错误提示
		$("#regPwdTip").css("color","red");
		$("#regPwdTip").text("密码长度应为6~14位！");
	} else {
		$("#regPwdTip").css("color","green");
		$("#regPwdTip").text("√");
	}
})

$("#regCheckPwd").blur(function () {
	var pwd1=$("#regPwd").val();
	var pwd2=$("#regCheckPwd").val();
	
	if(pwd1!==pwd2){
		$("#regCheckPwdTip").css("color","red");
		$("#regCheckPwdTip").text("密码不一致，请重新输入！");
		$("#regCheckPwd").val("");
	} else {
		$("#regCheckPwdTip").css("color","green");
		$("#regCheckPwdTip").text("√");
		userPwd = 1;
	}
})

$(".regSub").click(function(){
		return false;
})

 $('#m').codeVerify({
 	type : 1,
 	width : '103px',
 	height : '33px',
 	fontSize : '20px',
    codeLength : 4,
    btnId : 'check-btn',
    ready : function() { },
    success : function() {
    	if($('#regCheckbox').is(':checked')) {
        	if(userName == 1 && userPwd == 1){
        		alert('注册成功！');
        		$('#regForm').submit();
            } else {
            	alert('请按要求完成注册！');
            }
    	} else {
    		alert('请选择同意协议！');
        }
    },
    error : function() {
    	if($('#regCheckbox').is(':checked') && userName == 1 && userPwd == 1) {
    		alert('验证码不正确！');
    	}
    }
});     


</script>
</body>
</html>
