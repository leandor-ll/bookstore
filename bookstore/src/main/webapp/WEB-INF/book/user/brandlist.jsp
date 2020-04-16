<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>
<script type="text/javascript" src="js/jquery.bxslider_e88acd1b.js"></script>

<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>

<script type="text/javascript" src="js/lrscroll_1.js"></script>


<script type="text/javascript" src="js/n_nav.js"></script>
<script type="text/javascript" src="js/milk_ban.js"></script>
<script type="text/javascript" src="js/paper_ban.js"></script>
<script type="text/javascript" src="js/baby_ban.js"></script>
<script type="text/javascript">
	$(function() {
		$("#all").css("cursor", " pointer")
	})
</script>

<script src="${pageContext.request.contextPath }/js/jquery-1.11.3.js"></script>
<script type="text/javascript">
	$(function() {
		$(".j_car")
				.click(
						function() {
							var uuname = "${uuname}";
							var uubookid = $(this).attr("d");
							$
									.post(
											"${pageContext.request.contextPath}/addBuyCar",
											{
												"sbid" : uubookid,
												"suid" : uuname
											},
											function(data) {
												if (data.result) {
													alert("添加成功");
													window.location
															.replace(window.location.href);
												} else {
													alert("您尚未登录，请登录");
													window.location.href = "${pageContext.request.contextPath}/login";
												}
											}, "json")
						})
	})
</script>
<script type="text/javascript">
	$(function() {
		
			$(".ss").click(function() {
				var uuname = "${uuname}";
				if(${empty(uuname)}){
							alert("您尚未登录，请登录");
							window.location.href = "${pageContext.request.contextPath}/login";
				}
				var uubookid = $(this).attr("d");
					$.post("${pageContext.request.contextPath}/addCollect",
						{
						"sbid" : uubookid,
						"suid" : uuname
						},function(data) {
							if (data.result) {
								alert("添加成功");
								}
								else{
									alert("删除成功");
								}}, "json")
							})
	})
</script>

<title>网上书店</title>

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
						style="color: #ff4e00;">免费注册</a>&nbsp; |&nbsp;<a href="#">我的订单</a>&nbsp;|
					</span>
				</c:if> <c:if test="${not flag}">
					<span class="fl">你好，<a
						href="${pageContext.request.contextPath}/memberuser">${uuname}</a>&nbsp;
						<a href="${pageContext.servletContext.contextPath }/regist"
						style="color: #ff4e00;">免费注册</a>&nbsp;<a
						href="${pageContext.request.contextPath }/logout"
						style="color: #ff4e00;">注销</a>&nbsp;|&nbsp;<a
						href="${pageContext.request.contextPath}/show2">我的订单</a>&nbsp;|
					</span>
				</c:if> <span class="ss">
					<div class="ss_list">
						<a >收藏夹</a>
						<div class="ss_list_bg">
							<div class="s_city_t"></div>
							<div class="ss_list_c">
								<ul>
									<li><a href="${pageContext.request.contextPath}/Member_Collect">我的收藏夹</a></li>
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
		<div class="logo">
			<a href="${pageContext.request.contextPath }/index"><img
				src="images/logo.png" /></a>
		</div>
		<div class="search">
			<form action="${pageContext.request.contextPath }/brandlist">
				<input type="text" name="bname" value="${param.bname }" class="s_ipt" />
				<input type="submit" value="搜索" class="s_btn" />
			</form>
			<span class="fl"><a href="#">趣味物理学</a><a href="#">Python编程</a><a
				href="#">算法导论</a><a href="#">零基础学C语言</a><a href="#">牛津高阶</a><a
				href="#">小王子</a></span>
		</div>

		<!-- 购物车显示信息 -->
		<c:if test="${empty(uuname) }" var="flag">
			<div class="i_car">
				<div class="car_t">
					购物车 [ <span>0</span> ]
				</div>
				<div class="car_bg" style="width: 27 0px; height: 90px;">
					<!--Begin 购物车未登录 Begin-->
					<div
						style="text-align: center; margin-left: 5px; font-size: 16px; margin-top: 20px">
						请 <a href="${pageContext.request.contextPath}/login"
							style="color: #FF3200"> 登录</a> 后查询购物车
					</div>
					<!--End 购物车未登录 End-->
					<!--Begin 购物车已登录 Begin-->

					<div class="price_a">
						<a href="#">去购物车结算</a>
					</div>
					<!--End 购物车已登录 End-->
				</div>
			</div>
		</c:if>
		<c:if test="${not flag }">
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
		</c:if>
	</div>
	<!--End Header End-->
	<!--Begin Menu Begin-->
	<div class="menu_bg">
		<div class="menu">
			<!--Begin 商品分类详情 Begin-->
			<div class="nav">
				<div class="nav_t" id="all">全部商品分类</div>
			</div>
			<!--End 商品分类详情 End-->
			<ul class="menu_r">
				<li><a href="${pageContext.request.contextPath }/index">首页</a></li>
				<c:forEach items="${cMapList}" var="product">
					<li id="caca"><a
						href="${pageContext.request.contextPath }/brandlist?pageNum=1&bname=${param.bname }&bcategory=${product['cid']}">
							${product['category']} </a></li>
				</c:forEach>
			</ul>
			<div class="m_ad">知识改变命运！</div>
		</div>
	</div>
	<!--End Menu End-->
	<div class="i_bg">
		<div class="postion">
			<span class="fl">全部 ></span>
		</div>
		<div class="content mar_20">
			<c:if test="${empty(uuname) }" var="flag">
				<div class="l_history">
					<div class="his_t">
						<span class="fl">浏览历史</span> <span class="fr"></span>
					</div>
					<ul>
						<li style="text-align: center"><a
							href="${pageContext.request.contextPath}/login"
							style="color: #FF3200">登录</a>后才能留下足迹哦！</li>
					</ul>
				</div>
			</c:if>
			<c:if test="${not flag }">
				<div class="l_history">
					<div class="his_t">
						<span class="fl">浏览历史</span> <span class="fr" id="emptyCookie"></span>
					</div>
					<ul class="history">
						<c:forEach items="${cookieProductList }" var="cookieProduct"
							varStatus="vs">
							<li>
								<div class="img">
									  <a href="${pageContext.request.contextPath}/product?bid=${cookieProduct['bid']}">
									 <img src="${pageContext.request.contextPath }/upload${cookieProduct['bpic']}"
										width="185" height="162" /></a>
								</div>
								<div class="name">
									 <a href="${pageContext.request.contextPath}/product?bid=${cookieProduct['bid']}">${cookieProduct['bname'] }</a>
								</div>
								<div class="price">
									<font>￥<span>${cookieProduct['bprice'] }</span></font> &nbsp;
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</c:if>
			<div class="l_list">
				<table border="0"
					style="width: 100%; margin-bottom: 30px; border: 1px solid #eaeaea;"
					cellspacing="0" cellpadding="0">
					<tr valign="top">
						<td width="248"><div class="brand_img">
								<img src="images/brand5.jpg" width="226" height="108" />
							</div></td>
						<td class="td_b" style="padding: 15px 40px;">所有分类<br /> <a
							href="#" class="now">香水（10）</a> <a href="#">彩妆套装（2）</a><a
							href="#">洁面（1）</a><a href="#">精华（1）</a><a href="#">化妆水（2）</a><a
							href="#">嫩肤（3）</a>
						</td>
					</tr>
				</table>
				<div class="list_t">
					<span class="fr" style="font-size: 15px">共发现<span
						style="color: #FF3200">${pageInfo.total }</span>件商品
					</span>
				</div>
				<div class="list_c">

					<ul class="cate_list">
						<c:forEach items="${pageInfo.list }" var="bra">
							<li>
								<div class="img">
									<a href="${pageContext.request.contextPath}/product?bid=${bra.bid}"> <img
										src="${pageContext.request.contextPath }/upload${bra.bpic }"
										width="210" height="185" /></a>
								</div>
								<div class="price">
									<font>￥<span>${bra.bprice }</span></font> &nbsp;
									${cmap[bra.category_id]['bcategory']}
								</div> 
								<div class="name">
									<a href="${pageContext.request.contextPath}/product?bid=${bra.bid}"> ${bra.bname }---${bra.bauthor }</a>
								</div>
								<div class="carbg">
									<a href="#" class="ss" d="${bra.bid }">收藏</a> <a href="#" class="j_car"
										d="${bra.bid }">加入购物车</a>
								</div>
							</li>
						</c:forEach>
					</ul>

					<div class="pages">
						<c:if test="${pageInfo.pageNum >1 }">
							<a href="${pageContext.request.contextPath }/brandlist?pageNum=1&bname=${param.bname }&bcategory=${param.bcategory}"
								class="num">首页</a>
						</c:if>
						<c:forEach items="${pageInfo.navigatepageNums}" var="num">
							<c:if test="${pageInfo.pageNum == num }">
								<a class="num"
									href="${pageContext.request.contextPath}/brandlist?pageNum=${num }&bname=${param.bname }&bcategory=${param.bcategory}">${num }</a>
							</c:if>
							<c:if test="${pageInfo.pageNum != num }">
								<a class="num"
									href="${pageContext.request.contextPath}/brandlist?pageNum=${num }&bname=${param.bname }&bcategory=${param.bcategory}">${num }</a>
							</c:if>
						</c:forEach>
						<c:if test="${pageInfo.pageNum < pageInfo.pages }">
							<a
								href="${pageContext.request.contextPath }/brandlist?pageNum=${pageInfo.pages}&bname=${param.bname }&bcategory=${param.bcategory}"
								class="p_pre">尾页</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>

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
</html>
