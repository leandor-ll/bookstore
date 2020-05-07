<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/css/style.css" />
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath }/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath }/js/menu.js"></script>

<script type="text/javascript"
	src="${pageContext.servletContext.contextPath }/js/n_nav.js"></script>

<script type="text/javascript"
	src="${pageContext.servletContext.contextPath }/js/select.js"></script>

<script type="text/javascript"
	src="${pageContext.servletContext.contextPath }/js/num.js">
	var jq = jQuery.noConflict();
</script>

<script type="text/javascript"
	src="${pageContext.servletContext.contextPath }/js/shade.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery-1.11.3.js"></script>
<script type="text/javascript">
jq(function(){
	jq("#ouserphone").blur(function() {
						var userphone = jq(this).val();
						var uregex = /^1(?:3\d|4[4-9]|5[0-35-9]|6[67]|7[013-8]|8\d|9\d)\d{8}$/;
						if (uregex.test(userphone)) {
							jq("#btnReg").attr("disabled", false);
						} else {
							alert("输入有误！")
							jq("#btnReg").attr("disabled", true);
						}
					})
		jq("#oaddress").blur(function() {
						var useraddress = jq(this).val();
						if (useraddress.replace(/(^\s*)|(\s*$)/g,"")=="" ) {
							alert("输入有误！")
							jq("#btnReg").attr("disabled", true);
						} else {
							jq("#btnReg").attr("disabled", false);
						}
					})
			jq("#ousername").blur(function() {
						var username = jq(this).val();
						if (username.replace(/(^\s*)|(\s*$)/g,"")=="") {
							alert("输入有误！")
							jq("#btnReg").attr("disabled", true);
						} else {
							jq("#btnReg").attr("disabled", false);
						}
					})

})
</script>

<title>博库智慧城</title>
</head>
<body>
	<!--Begin Header Begin-->
	<div class="soubg">
		<div class="sou">
			<!--Begin 所在收货地区 Begin-->
			<!--End 所在收货地区 End-->
			<span class="fr"> <c:if test="${empty(uuname)}" var="flag">
					<span class="fl">你好，请<a
						href="${pageContext.servletContext.contextPath }/login"
						style="color: #ff4e00;">登录</a>&nbsp; <a
						href="${pageContext.servletContext.contextPath }/regist"
						style="color: #ff4e00;">免费注册</a>&nbsp;|&nbsp;<a href="#">我的订单</a>&nbsp;|
					</span>
				</c:if> <c:if test="${not flag}">
					<span class="fl">你好，<a
						href="${pageContext.request.contextPath}/memberuser">${uuname}</a>&nbsp;
						<a href="${pageContext.servletContext.contextPath }/regist"
						style="color: #ff4e00;">免费注册</a>&nbsp;<a
						href="${pageContext.request.contextPath }/logout"
						style="color: #ff4e00;">注销</a>&nbsp;|&nbsp;<a
						href="${pageContext.request.contextPath }/show2">我的订单</a>&nbsp;|
					</span>
				</c:if> <span class="ss">
					<div class="ss_list">
						<a href="#">收藏夹</a>
						<div class="ss_list_bg">
							<div class="s_city_t"></div>
							<div class="ss_list_c">
								<ul>
									<li><a
										href="${pageContext.request.contextPath}/member-collect">我的收藏夹</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="ss_list">
						<a href="#">客户服务</a>
						<div class="ss_list_bg">
							<div class="s_city_t"></div>
							<div class="ss_list_c">
								<ul>
									<li><a href="#">客户服务</a></li>
									<li><a href="#">客户服务</a></li>
									<li><a href="#">客户服务</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="ss_list">
						<a href="#">网站导航</a>
						<div class="ss_list_bg">
							<div class="s_city_t"></div>
							<div class="ss_list_c">
								<ul>
									<li><a href="#">网站导航</a></li>
									<li><a href="#">网站导航</a></li>
								</ul>
							</div>
						</div>
					</div>
			</span> <span class="fl">|&nbsp;关注我们：</span> <span class="s_sh"><a
					href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span> <span
				class="fr">|&nbsp;<a href="#">手机版&nbsp;<img
						src="images/s_tel.png" align="absmiddle" /></a></span>
			</span>
		</div>
	</div>
	<div class="top">
		<div class="logo" style="margin-left: 500px">
			<a href="${pageContext.request.contextPath }/index"><img
				src="images/logo.png" /></a>
		</div>
	</div>
	<!--End Header End-->
	<!--Begin Menu Begin-->
	<div class="menu_bg">
		<div class="menu">
			<!--Begin 商品分类详情 Begin-->
			<div class="nav">
				<div class="nav_t">
					<a href="${pageContext.request.contextPath }/brandlist"
						style="color: white">全部商品</a>
				</div>
			</div>
			<!--End 商品分类详情 End-->
			<ul class="menu_r">
				<li><a href="${pageContext.request.contextPath }/index">首页</a></li>
			</ul>
			<div class="m_ad">欢迎来到博库智慧城</div>
		</div>
	</div>
	<!--End Menu End-->
	<div class="i_bg">
		<div class="content mar_20">
			<img src="images/img2.jpg" />
		</div>

		<!--Begin 第二步：确认订单信息 Begin -->
		<div class="content mar_20">
			<div class="two_bg">
				<div class="two_t">
					<span class="fr"><a
						href="${pageContext.request.contextPath }/edit">修改</a></span><font
						color="#ff4e00"><b>商品列表</b></font>
				</div>
				<table border="0" class="car_tab" style="width: 1110px;"
					cellspacing="0" cellpadding="0">
					<tr>
						<td class="car_th" width="140">序号</td>
						<td class="car_th" width="490">商品名称</td>
						<td class="car_th" width="130">商品单价</td>
						<td class="car_th" width="150">购买数量</td>
						<td class="car_th" width="150">小计</td>
					</tr>

					<c:forEach items="${cbcbList }" var="cb" varStatus="vs">
						<tr>
							<td align="center">${vs.count }</td>
							<td>
								<div class="c_s_img">
									<img src="${pageContext.request.contextPath }/upload${cb.opic}"
										width="73" height="73" />
								</div>
								<div style="margin-top: 23px; text-align: center">
									${cb.oname }</div>
							</td>
							<td align="center" style="color: #ff4e00;">${cb.oprice }</td>
							<td align="center">${cb.onumber }</td>
							<td align="center" style="color: #ff4e00;">￥${cb.oprice * cb.onumber }</td>
						</tr>
					</c:forEach>

				</table>

				<div class="two_t">
					<font color="#ff4e00"><b>收货信息</b></font>
				</div>
				<form action="${pageContext.servletContext.contextPath }/show1" method="post">
				<table border="0" class="peo_tab" style="width: 1110px;"
					cellspacing="0" cellpadding="0">
					<tr>
						<td class="p_td" width="160" style="text-align: center;">下单用户</td>
						<td width="395" title="不可更改">${uuname }</td>
					</tr>
					<tr>
						<td class="p_td" width="160" style="text-align: center;">收货人姓名</td>
						<td width="395"><input type="text" size="10" id="ousername"
							name="ousername" /></td>
					</tr>
					<tr>
						<td class="p_td" style="text-align: center;">收货人电话/手机</td>
						<td><input type="text" maxlength="11" size="10"
							id="ouserphone" name="ouserphone" /></td>
					</tr>
					<tr>
						<td class="p_td" style="text-align: center;">收货地址</td>
						<td width="395"><input type="text" size="40" id="oaddress"
							name="oaddress" /></td>
					</tr>
				</table>


				<table border="0" style="width: 900px; margin-top: 20px;"
					cellspacing="0" cellpadding="0">
					<tr height="70">
						<td align="right"><b style="font-size: 14px;"><span
								style="font-size: 22px; color: #ff4e00;"></span></b></td>
						<td align="right"><b style="font-size: 14px;">应付款金额：<span
								style="font-size: 22px; color: #ff4e00;">￥${orderPrice }</span></b>
						</td>
					</tr>
					<tr height="70">
						<td align="right"><a href="http://www.baidu.com"
							style="color: #FF3200"></a></td>
						<td align="right"><input type="submit" value="确认订单" class="log_btn" id="btnReg" disabled="disabled" title="填入信息后方可完成订单"/></td>
					</tr>
				</table>
				</form>
			</div>
		</div>
		<!--End 第二步：确认订单信息 End-->


		<!--Begin Footer Begin -->
		<div class="b_btm_bg bg_color">
			<div class="b_btm">
				<table border="0"
					style="width: 210px; height: 62px; float: left; margin-left: 75px; margin-top: 30px;"
					cellspacing="0" cellpadding="0">
					<tr>
						<td width="72"><img src="images/b1.png" width="62"
							height="62" /></td>
						<td><h2>正品保障</h2>正品行货 放心购买</td>
					</tr>
				</table>
				<table border="0"
					style="width: 210px; height: 62px; float: left; margin-left: 75px; margin-top: 30px;"
					cellspacing="0" cellpadding="0">
					<tr>
						<td width="72"><img src="images/b2.png" width="62"
							height="62" /></td>
						<td><h2>满38包邮</h2>满38包邮 免运费</td>
					</tr>
				</table>
				<table border="0"
					style="width: 210px; height: 62px; float: left; margin-left: 75px; margin-top: 30px;"
					cellspacing="0" cellpadding="0">
					<tr>
						<td width="72"><img src="images/b3.png" width="62"
							height="62" /></td>
						<td><h2>天天低价</h2>天天低价 畅选无忧</td>
					</tr>
				</table>
				<table border="0"
					style="width: 210px; height: 62px; float: left; margin-left: 75px; margin-top: 30px;"
					cellspacing="0" cellpadding="0">
					<tr>
						<td width="72"><img src="images/b4.png" width="62"
							height="62" /></td>
						<td><h2>准时送达</h2>收货时间由你做主</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="b_nav">
			<dl>
				<dt>
					<a href="#">新手上路</a>
				</dt>
				<dd>
					<a href="#">售后流程</a>
				</dd>
				<dd>
					<a href="#">购物流程</a>
				</dd>
				<dd>
					<a href="#">订购方式</a>
				</dd>
				<dd>
					<a href="#">隐私声明</a>
				</dd>
				<dd>
					<a href="#">推荐分享说明</a>
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="#">配送与支付</a>
				</dt>
				<dd>
					<a href="#">货到付款区域</a>
				</dd>
				<dd>
					<a href="#">配送支付查询</a>
				</dd>
				<dd>
					<a href="#">支付方式说明</a>
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="#">会员中心</a>
				</dt>
				<dd>
					<a href="#">资金管理</a>
				</dd>
				<dd>
					<a href="#">我的收藏</a>
				</dd>
				<dd>
					<a href="#">我的订单</a>
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="#">服务保证</a>
				</dt>
				<dd>
					<a href="#">退换货原则</a>
				</dd>
				<dd>
					<a href="#">售后服务保证</a>
				</dd>
				<dd>
					<a href="#">产品质量保证</a>
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="#">联系我们</a>
				</dt>
				<dd>
					<a href="#">网站故障报告</a>
				</dd>
				<dd>
					<a href="#">购物咨询</a>
				</dd>
				<dd>
					<a href="#">投诉与建议</a>
				</dd>
			</dl>
			<div class="b_tel_bg">
				<a href="#" class="b_sh1">新浪微博</a> <a href="#" class="b_sh2">腾讯微博</a>
				<p>
					服务热线：<br /> <span>400-123-4567</span>
				</p>
			</div>
			<div class="b_er">
				<div class="b_er_c">
					<img src="images/er.gif" width="118" height="118" />
				</div>
				<img src="images/ss.png" />
			</div>
		</div>
		<div class="btmbg">
			<div class="btm">
				备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com Copyright © 2015-2018
				尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
				<img src="images/b_1.gif" width="98" height="33" /><img
					src="images/b_2.gif" width="98" height="33" /><img
					src="images/b_3.gif" width="98" height="33" /><img
					src="images/b_4.gif" width="98" height="33" /><img
					src="images/b_5.gif" width="98" height="33" /><img
					src="images/b_6.gif" width="98" height="33" />
			</div>
		</div>
		<!--End Footer End -->
	</div>

</body>


<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>
