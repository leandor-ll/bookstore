<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>
<script type="text/javascript" src="js/jquery.bxslider_e88acd1b.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript" src="js/select.js"></script>
<script type="text/javascript" src="js/lrscroll.js"></script>
<script type="text/javascript" src="js/iban.js"></script>
<script type="text/javascript" src="js/fban.js"></script>
<script type="text/javascript" src="js/f_ban.js"></script>
<script type="text/javascript" src="js/mban.js"></script>
<script type="text/javascript" src="js/bban.js"></script>
<script type="text/javascript" src="js/hban.js"></script>
<script type="text/javascript" src="js/tban.js"></script>
<script type="text/javascript" src="js/lrscroll_1.js"></script>

<style type="text/css">
	#code:hover {
		cursor: pointer;
	}
	#code{
		height: 40px;
		padding-left: 25px;
		padding-top: 30px;
	}
	#di{
	}
</style>

<script type="text/javascript">
	$(function(){		
		$("#di").css({"display":"none","color":"red"});
		
		 $("#upassword").blur(function(){
			//获取当前文本框的值
			var upassword = $(this).val();
			var patrn=/^(\w){6,20}$/;  
			if(patrn.test(upassword)){
				//密码可用
				$("#spanOnePassword").text("密码可用").css("color","lightgreen");
			}else{
				//密码不可用
				$("#spanOnePassword").text("密码不可用，只能输入6-20个字母、数字、下划线").css("color","red");
				$("#btnReg").attr("disabled",true);
			}
			$("#upassword1").blur(function(){
				//获取当前文本框的值
				var upassword1 = $(this).val();
				var patrn=/^(\w){6,20}$/;  
				if(patrn.test(upassword1)&&upassword1==upassword){
					//密码可用
					$("#spanTwoPassword").text("密码可用").css("color","lightgreen");
				}else{
					if(patrn.test(upassword1)){
						//密码不可用
						$("#spanTwoPassword").text("两次密码不一致").css("color","red");
						$("#btnReg").attr("disabled",true);
					}else{
						//密码不可用
						$("#spanTwoPassword").text("密码不可用，只能输入6-20个字母、数字、下划线").css("color","red");
						$("#btnReg").attr("disabled",true);	
					}
				}
			})
		}) 
		$("#uIDcard").blur(function(){
			var uidcard = $(this).val();
			var uregex = /^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
			if(uregex.test(uidcard)){
				//身份证号码可用
				$("#spanUIDCard").text("身份证号码正确").css("color","lightgreen");
			}else{
				//身份证号码不可用
				$("#spanUIDCard").text("身份证号码不正确").css("color","red");
				$("#btnReg").attr("disabled",true);	
			}
		})
		
		$("#checkedcode").blur(function(){
			var checkcode = $(this).val();
			$.post("${pageContext.request.contextPath}/registCodeCheck",
					{"ucode":checkcode},
					function(data){
				if(data.res){
					$("#btnReg").attr("disabled",false);
				}else{
						$("#code").attr("src", "${pageContext.request.contextPath }/cc?a=" + new Date().getTime());
						$("#btnReg").attr("disabled",true);
						$("#di").show();
				}
			},"json")
		})
	})
</script>

<script src="${pageContext.request.contextPath }/js/jquery-1.11.3.js"></script>
<script type="text/javascript">
	$(function() {
		$("#code").click(function() {
			$(this).attr("src", "${pageContext.request.contextPath }/cc?a=" + new Date().getTime());
		});
	});
</script>

<title>找回密码</title>
</head>
<body>
	<!--Begin Header Begin-->
	<div class="soubg">
		<div class="sou">
			<span class="fr"> <span class="fl">你好，欢迎 <a href="#">注册</a>&nbsp;
					&nbsp;
			</span> <span class="fl">|&nbsp;关注我们：</span> <span class="s_sh"><a href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span> <span
				class="fr">|&nbsp;<a href="#">手机版&nbsp;<img
						src="images/s_tel.png" align="absmiddle" /></a></span>
			</span>
		</div>
	</div>
	<div class="log_bg">
		<div class="top">
			<div class="logo">
				<a href="${pageContext.servletContext.contextPath }/index"><img src="images/logo.png" /></a>
			</div>
		</div>
		<div class="regist">
			<div class="log_img">
				<img src="images/l_img.png" width="611" height="425" />
			</div>
			<div class="reg_c">
				<form action="${pageContext.servletContext.contextPath }/updataPassword" method="post">
					<table border="0"
						style="width: 420px; font-size: 14px; margin-top: 20px;"
						cellspacing="0" cellpadding="0">
						<tr height="50" valign="top">
							<td width="95">&nbsp;</td>
							<td><span class="fl" style="font-size: 24px;" >修改密码</span> <span
								class="fr">不改了，<a
									href="${pageContext.servletContext.contextPath }/login"
									style="color: #ff4e00;">我直接登录</a></span></td>
						</tr>
						
						<tr height="50">
							<td align="right"><font color="#ff4e00">*</font>&nbsp;用户名
							&nbsp;</td>
							<td>
								<span id="spanUsername" ></span>
								<input type="text" value="您的用户名" class="l_user" name="uname" id="uname"/>
							</td>
						</tr>
							
						<tr height="85">
							<td align="right">
								<font color="#ff4e00">*</font>&nbsp;身份证号 &nbsp;
							</td>
							<td>
								<span id="spanUIDCard" ></span>
								<input type="text" value="" class="l_num" name="uIDcard" id="uIDcard" />
							</td>
						</tr>

						<tr height="50">
							<td align="right">
								<font color="#ff4e00">*</font>&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;
							</td>
							<td>
								<span id="spanOnePassword" ></span>
								<input type="password" title="只能输入6-20个字母、数字、下划线 " class="l_pwd" name="upassword" id="upassword"/>
							</td>
						</tr>
						
						<tr height="90">
							<td align="right">
								<font color="#ff4e00">*</font>&nbsp;确认密码&nbsp;
							</td>
							<td>
								<span id="spanTwoPassword" ></span>
								<input type="password" value="" class="l_pwd" name="upassword1" id="upassword1" />
							</td>
						</tr>
					
						<tr height="30">
							<td align="right"><font color="#ff4e00">*</font>&nbsp;验证码
								&nbsp;</td>
							<td>
								<span id="spancode" ></span>
								<input type="text" value="" class="l_ipt" id="checkedcode" name="checkedcode"/> 
								<img src="${pageContext.request.contextPath }/cc" title="看不清？点击更换验证码" name="code" id="code">
								<span id="di" name="di">输入错误</span>
							</td>
						</tr>
						
						<tr height="70">
							<td>&nbsp;</td>
							<td><input type="submit" value="修改" class="log_btn" id="btnReg" disabled="disabled"/></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	<div class="btmbg">
		<div class="btm">
			备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com Copyright © 2015-2018
			购书网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
			<img src="images/b_1.gif" width="98" height="33" /><img
				src="images/b_2.gif" width="98" height="33" /><img
				src="images/b_3.gif" width="98" height="33" /><img
				src="images/b_4.gif" width="98" height="33" /><img
				src="images/b_5.gif" width="98" height="33" /><img
				src="images/b_6.gif" width="98" height="33" />
		</div>
	</div>
</body>
</html>
