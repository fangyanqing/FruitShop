<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HEAD id=Head1>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<title>登录——水果信息管理系统</title>
<STYLE type=text/css>
BODY {
	FONT-SIZE: 12px;
	COLOR: #ffffff;
	FONT-FAMILY: 宋体
}

TD {
	FONT-SIZE: 12px;
	COLOR: #ffffff;
	FONT-FAMILY: 宋体
}
</STYLE>
<META content="MSHTML 6.00.6000.16809" name=GENERATOR>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.8.8/jquery.min.js"></script>
</HEAD>
<body  style="background:url(${pageContext.request.contextPath}/images/bg2.jpg)">
<TABLE cellSpacing=0 cellPadding=0 width=900 align=center border=0>
	<TBODY>
		<TR>
			<TD style="HEIGHT: 105px" >
			<h1 style="font-size:50px">水果信息管理系统</h1>
				</TD>
		</TR>
		<TR>
			<TD bgcolor="#7ae44c"
				height=300>
				<TABLE height=300 cellPadding=0 width=900 border=0>
					<TBODY>
						<TR>
							<TD colSpan=2 height=35></TD>
						</TR>
						<TR>
							<TD width=360></TD>
							<TD>
								<form id="condition" name="condition" method="post" action="${pageContext.request.contextPath}/admin/login">
									<TABLE cellSpacing=0 cellPadding=2 border=0>
										<TBODY>
											<TR>
												<TD style="HEIGHT: 28px" width=80>登 录 名：</TD>
												<TD style="HEIGHT: 28px" width=150><INPUT id="adminName"
													style="WIDTH: 130px" name="adminName"
													value="${admin.adminName}"></TD>
											</TR>
											<TR>
												<TD style="HEIGHT: 28px">登录密码：</TD>
												<TD style="HEIGHT: 28px"><INPUT id="adminPwd"
													style="WIDTH: 130px" type=password name="adminPwd"
													value="${admin.daminPwd}"></TD>
											</TR>
											<TR>
												<TD style="HEIGHT: 18px"></TD>
												<TD style="HEIGHT: 18px"></TD>
												<TD style="HEIGHT: 18px"></TD>
											</TR>
											<TR>
												<TD align="left"><image id=btn
														style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px"
														src="${pageContext.request.contextPath}/images/login_button.gif"
														onclick="javascript:checkLogin();return false;">
													<td align="center"><image
															style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px"
															src="${pageContext.request.contextPath}/images/reset.jpg"
															onclick="resetValue();return false;"></td>
													<TD style="HEIGHT: 28px">&nbsp;</TD>
											</TR>
											<tr height="10">
												<td width="40%" align="center" colspan="2"><font
													color="red" size="5" id="cw" name="cw"></font></td>
											</tr>
											<tr>
												<td></td>
											</tr>
											</TD>
											</TR>
										</TBODY>
									</TABLE>
								</form>
							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</TD>
		</TR>
		<TR>
			<TD></TD>
		</TR>
	</TBODY>
</TABLE>
</DIV>
</BODY>
</HTML>
<script>

  if (window != top)  top.location.href = location.href; 

	function resetValue() {
		$('#adminName').val("");
		$('#adminPwd').val("");
		$("#cw").text("");
	}
	
	function checkLogin() {
		var adminName = $('#adminName').val();
		var adminPwd = $('#adminPwd').val();
		if(adminName == null || adminName == "") {
			$("#cw").text("请输入用户名！");
			return;
		} else if(adminPwd == null || adminPwd == "") {
			$("#cw").text("请输入密码！");
			return;
		} else {
			$('#condition').submit();
		}
	}
</script>
<script type="text/javascript">
	if('${errorMsg}' != '') {
		$("#cw").text('${errorMsg}');
	}
</script>
