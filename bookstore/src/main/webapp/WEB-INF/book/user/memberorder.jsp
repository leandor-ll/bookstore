<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/style.css" />

<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>

<script type="text/javascript" src="js/select.js"></script>

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
	<div class="m_top_bg">
		<div class="top">
			<div class="logo" style="margin-left: 500px">
				<a href="${pageContext.request.contextPath }/index"><img
					src="images/logo.png" /></a>
			</div>
			<c:if test="${checkBuyCar }" var="fla">
				<!-- 购物车有信息 -->
				<div class="i_car">
					<div class="car_t">
						<a href="${pageContext.request.contextPath}/show">购物车 [ <span>${tAmount }</span>
							]
						</a>
					</div>
					<div class="car_bg">
						<ul class="cars"
							style="height: 200px; overflow-x: hidden; overflow-y: scroll">
							<c:forEach items="${cList }" var="cartbook" varStatus="vs">
								<li>
									<div class="img">
										<a href="#"><img
											src="${pageContext.request.contextPath }/upload${cartbook.spic }"
											width="58" height="58" /></a>
									</div>
									<div class="name">
										<a href="#">${cartbook.sname }</a>
									</div>
									<div class="price">
										<font color="#ff4e00">${cartbook.sprice }</font>
										X${cartbook.snumber }
									</div>
								</li>
							</c:forEach>
						</ul>
						<div class="price_sum">
							共计&nbsp; <font color="#ff4e00">￥</font><span>${tPrice }</span>
						</div>
						<a href="${pageContext.request.contextPath}/show">
							<div
								style="height: 40px; width: 100px; background-color: #F9530A; border: 0px; text-align: center">
								<span style="font-size: 16px; color: white">去购物车结算</span>
							</div>
						</a>

						<!--End 购物车已登录 End-->
					</div>
				</div>
			</c:if>

			<!-- 购物车没信息 -->
			<c:if test="${not fla }">
				<div class="i_car">
					<div class="car_t">
						<a href="${pageContext.request.contextPath}/show">购物车 [ <span>0</span>
							]
						</a>
					</div>

				</div>
			</c:if>
		</div>
	</div>
	<!--End Header End-->
	<div class="i_bg bg_color">
		<!--Begin 用户中心 Begin -->
		<div class="m_content">
			<div class="m_left">
				<!-- 管理员显示界面 -->
				<c:if test="${uunameDentity }" var="falg">
					<div class="left_n">管理中心</div>

					<div class="left_m">
						<div class="left_m_t t_bg1">订单中心</div>
						<ul>
							<li><a href="${pageContext.request.contextPath}/show2">个人订单</a></li>
							<li><a href="${pageContext.request.contextPath}/show3">全部订单</a></li>
						</ul>
					</div>
					<div class="left_m">
						<div class="left_m_t t_bg2">会员中心</div>
						<ul>
							<li><a href="${pageContext.request.contextPath}/memberuser"
								>用户信息</a></li>
							<li><a
								href="${pageContext.request.contextPath}/member-collect"
								>我的收藏</a></li>
						</ul>
					</div>
					<div class="left_m">
						<div class="left_m_t t_bg3">账户中心</div>
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/member-money">资金管理</a></li>
						</ul>
					</div>

					<div class="left_m">
						<div class="left_m_t t_bg4">商品中心</div>
						<ul>
							<li><a href="${pageContext.request.contextPath}/emps">商品管理</a></li>
							<li><a
								href="${pageContext.request.contextPath}/salesAnalysis">销售分析</a></li>
						</ul>
					</div>
				</c:if>
				<!-- 用户显示界面 -->
				<c:if test="${not falg }">
					<div class="left_n">管理中心</div>

					<div class="left_m">
						<div class="left_m_t t_bg1">订单中心</div>
						<ul>
							<li><a href="${pageContext.request.contextPath}/show2">个人订单</a></li>
						</ul>
					</div>
					<div class="left_m">
						<div class="left_m_t t_bg2">会员中心</div>
						<ul>
							<li><a href="${pageContext.request.contextPath}/memberuser"
								>用户信息</a></li>
							<li><a
								href="${pageContext.request.contextPath}/member-collect"
								>我的收藏</a></li>
						</ul>
					</div>
					<div class="left_m">
						<div class="left_m_t t_bg3">账户中心</div>
						<ul>
							<li><a
								href="${pageContext.request.contextPath}/member-money">资金管理</a></li>
						</ul>
					</div>

				</c:if>
			</div>
			
			<div class="m_right">
				<p></p>
				<div class="mem_tit"><font color="#ff4e00"><b>我的订单</b></font></div>
				<table border="0" class="order_tab"
					style="width: 930px; text-align: center; margin-bottom: 30px;"
					cellspacing="0" cellpadding="0">
					<c:if test="${empty(orderList) }" var="ooo">
					
						<td colspan="5"><img
							src="${pageContext.request.contextPath }/images/ordernull.jpg"></td>
					</c:if>
					<c:if test="${not ooo }">
					<tr>
						<td width="15%">订单号</td>
						<td width="10%">订单总金额</td>
						<td width="10%">收货人姓名</td>
						<td width="10%">收货人电话</td>
						<td width="25%">收货地址</td>
						<td width="10%">订单状态</td>
						<td width="20%">操作</td>
					</tr>
						<c:forEach items="${ orderList}" var="prod">
							<tr>
								<td><font color="#ff4e00">${prod.orderid }</font></td>
								<td>${prod.allPrice }</td>
								<td>${prod.ousername }</td>
								<td>${prod.ouserphone }</td>
								<td>${prod.oaddress }</td>
								<c:if test="${prod.ostatus==1 }">
									<td style="color: blue">等待支付</td>
								</c:if>
								<c:if test="${prod.ostatus==2 }">
									<td style="color: green">支付成功</td>
								</c:if>
								<c:if test="${prod.ostatus==3 }">
									<td style="color: red">支付失败</td>
								</c:if>
								<td>
									<a href="${pageContext.request.contextPath }/querymyselfid?id=${prod.orderid }" d="${prod.orderid }" f="${prod.ouid }">详情</a>&nbsp;&nbsp; &nbsp;
									<a href="${pageContext.request.contextPath}/deleteMyselfOrderlist?ouid=${prod.ouid }&orderid=${prod.orderid}">删除</a>
								</td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
		</div>
		<!--End 用户中心 End-->
		<!--Begin Footer Begin -->
		<div class="b_btm_bg b_btm_c">
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
