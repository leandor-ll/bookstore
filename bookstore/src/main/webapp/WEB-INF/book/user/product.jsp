<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/style.css" />
<!--[if IE 6]>
    <script src="js/iepng.js" type="text/javascript"></script>
        <script type="text/javascript">
           EvPNG.fix('div, ul, img, li, input, a'); 
        </script>
    <![endif]-->

<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>

<script type="text/javascript" src="js/lrscroll_1.js"></script>


<script type="text/javascript" src="js/n_nav.js"></script>

<link rel="stylesheet" type="text/css" href="css/ShopShow.css" />
<link rel="stylesheet" type="text/css" href="css/MagicZoom.css" />
<script type="text/javascript" src="js/MagicZoom.js"></script>

<script type="text/javascript" src="js/num.js">
	var jq = jQuery.noConflict();
</script>

<script type="text/javascript" src="js/p_tab.js"></script>

<script type="text/javascript" src="js/shade.js"></script>
<script type="text/javascript">
	jq(function() {
		jq(".n_ipt").blur(function() {
			var uusnumber = jq(".n_ipt").val();
			var booknumber = jq(".des_price").attr("pr");
			if(parseInt(uusnumber)>parseInt(booknumber)){
				alert("没有那么多库存，请重新选择购买数量");
				jq(".n_ipt").attr("value", 1);
			}
		} );
		jq(".j_car").click(function() {
			var uuname = "${uuname}";
			var uubookid = jq(this).attr("d");
			var uusnumber = jq(".n_ipt").val();
			jq.post(
					"${pageContext.request.contextPath}/addBuyCar",
					{
						"sbid" : uubookid,
						"suid" : uuname,
						"snum" : uusnumber
					},
					function(data) {
						if (data.result) {
							alert("成功添加购物车");
								window.location.replace(window.location.href);
						} else {
							alert("您尚未登录，请登录");
							window.location.href = "${pageContext.request.contextPath}/login";
						}
					}, "json")
						})
	})
</script>
<script type="text/javascript">
	jq(function() {
		var booknumber = jq(".des_price").attr("pr");
		if(booknumber == 0){
			alert("该图书已售罄，正在补货中！");
			window.location.href = "${pageContext.request.contextPath}/brandlist";
		}
		jq(".n_btn_1").click(function() {
			var num = jq(".n_ipt").val();
			jq(".n_ipt").attr("value", num);
			if(parseInt(num)>parseInt(booknumber)){
				alert("没有那么多库存，请重新选择购买数量");
				jq(".n_ipt").attr("value", booknumber);
			}
		})
		jq(".n_btn_2").click(function() {
			var num = jq(".n_ipt").val();
			jq(".n_ipt").attr("value", num);
		})
	})
</script>
<script type="text/javascript">
	jq(function() {
		
			jq(".ss").click(function() {
				var uuname = "${uuname}";
				if(${empty(uuname)}){
							alert("您尚未登录，请登录");
							window.location.href = "${pageContext.request.contextPath}/login";
				}
				var uubookid = jq(this).attr("d");
					jq.post("${pageContext.request.contextPath}/addCollect",
						{
						"sbid" : uubookid,
						"suid" : uuname
						},function(data) {
							if (data.result) {
								alert("收藏成功");
								}
								else{
									alert("取消收藏");
								}}, "json")
							})
	})
</script>
<script type="text/javascript">
jq(function(){
	jq(".getP_id").click(function(){
		var id = jq(this).prev().val();
		window.location.href="${pageContext.request.contextPath}/product?bid="+id;
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
						href="${pageContext.request.contextPath}/show2">我的订单</a>&nbsp;|
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
		<div class="logo">
			<a href="${pageContext.request.contextPath }/index"><img
				src="images/logo.png" /></a>
		</div>
		<div class="search">
			<form action="${pageContext.request.contextPath }/brandlist">
				<input type="text" name="name" value="${param.name }" class="s_ipt" />
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
				<div class="nav_t" id="all">
					<a href="">全部商品分类</a>
				</div>
			</div>
			<!--End 商品分类详情 End-->
			<ul class="menu_r">
				<li><a href="${pageContext.request.contextPath }/index">首页</a></li>
				<c:forEach items="${cMapList}" var="product">
					<li id="caca"><a
						href="${pageContext.request.contextPath }/brandlist?pageNum=1&bname=${param.name }&bcategory=${product['cid']}">
							${product['category']} </a></li>
				</c:forEach>
			</ul>
			<div class="m_ad">知识改变命运！</div>
		</div>
	</div>
	<!--End Menu End-->
	<div class="i_bg">
		<div class="postion">
			<span class="fl"><a
				href="${pageContext.request.contextPath }/brandlist">全部</a>>&nbsp;<a
				href="${pageContext.request.contextPath}/brandlist?bcategory=${Onelist.bcategory}">${cmap[Onelist.bcategory]['category'] }</a>&nbsp;>&nbsp;<a>${Onelist.bname }</a>&nbsp;>&nbsp;<a
				href="${pageContext.request.contextPath }/brandlist">返回</a></span>
		</div>
		<div class="content">

			<div id="tsShopContainer">
				<div id="tsImgS">
					<a
						href="${pageContext.request.contextPath }/upload${Onelist['bpic']}"
						title="Images" class="MagicZoom" id="MagicZoom"> <img
						src="${pageContext.request.contextPath }/upload${Onelist['bpic']}"
						width="390" height="390" />
					</a>
				</div>
				<img class="MagicZoomLoading" width="16" height="16"
					src="images/loading.gif" alt="Loading..." />
			</div>

			<div class="pro_des">
				<div class="des_name">
					<p>${Onelist.bname }</p>
					“开业巨惠，北京专柜直供”，不光低价，“真”才靠谱！
				</div>
				<div class="des_price" pr="${Onelist.bnumber }">
					本店价格：<b>￥${Onelist.bprice }</b><br /> 书本存货：<span><b>${Onelist.bnumber }本</b></span>
				</div>
				<div class="des_choice">
					<span class="fl">图书类别：</span>
					<ul>
						<li class="checked">${cmap[Onelist.bcategory]['category']  }
							<div class="ch_img"></div>
						</li>
					</ul>
				</div>
				<div class="des_share">

					<div class="d_care">
						<a href="#" class="ss" d="${Onelist.bid }">收藏</a>
					</div>
				</div>
				<div class="des_join">
					<div class="j_nums">
						<input type="text" value="1" name="" class="n_ipt" disabled="disabled"/> <input
							type="button" value="" onclick="addUpdate(jq(this));"
							class="n_btn_1" /> <input type="button" value=""
							onclick="jianUpdate(jq(this));" class="n_btn_2" />
					</div>
					<span class="fl"><a class="j_car" d="${Onelist.bid }"><img
							src="images/j_car.png" class="j_car" /></a></span>
				</div>
			</div>

			<div class="s_brand" style="height: 200px; width: 400">
				<div class="s_brand_img">
					<img src="images/index4.jpg" width="188" height="132" />
				</div>
				<div class="s_brand_c">
					<a
						href="${pageContext.request.contextPath}/brandlist?bcategory=${Onelist.bcategory}">进入${cmap[Onelist.bcategory]['category'] }专区</a>
				</div>
			</div>
		</div>

		<div class="content mar_20">
			<div class="l_history">
				<div class="fav_t">用户还喜欢</div>
				<ul>
					<c:forEach items="${map }" var="m" begin="10" step="30">
						<li>
							<div class="img">
								<input class="p_id" value="${m['bid'] }" type="hidden" /> <a
									class="getP_id"><img
									src="${pageContext.request.contextPath }/upload${m['bpic'] }"
									width="185" height="162" /></a>
							</div>
							<div class="name">
								<input class="p_id" value="${m['bid'] }" type="hidden" /> <a
									class="getP_id">${m['bname'] }</a>
							</div>
							<div class="price">
								<font>￥<span>${m['bprice'] }</span></font>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="l_list">
				<div class="des_border" id="p_details">
					<div class="des_t">商品详情</div>
					<div class="des_con">
						<table border="0" align="center"
							style="width: 745px; font-size: 14px; font-family: '宋体';"
							cellspacing="0" cellpadding="0">
							<tr>
								<td width="265"><img
									src="${pageContext.request.contextPath }/upload${Onelist['bpic']}"
									width="206" height="300" /></td>
								<td><b>${Onelist.bname }</b><br /> 【作者】：${Onelist.bauthor }<br />
									【出版社】：${Onelist.bpublish }<br /> 
									【价格】：￥${Onelist.bprice }<br />
									【类别】：${cmap[Onelist.bcategory]['category'] }<br />
									【库存剩余】：${Onelist.bnumber }本<br />
								</td>
							</tr>
						</table>
					</div>
				</div>

				<%-- <div class="des_border" id="p_comment">
					<div class="des_t">商品评论</div>

					<table border="0" class="jud_tab" cellspacing="0" cellpadding="0">
						<tr>
							<td width="175" class="jud_per">
								<p>80.0%</p>好评度
							</td>
							<td width="300">
								<table border="0" style="width: 100%;" cellspacing="0"
									cellpadding="0">
									<tr>
										<td width="90">好评<font color="#999999">（80%）</font></td>
										<td><img src="images/pl.gif" align="absmiddle" /></td>
									</tr>
									<tr>
										<td>中评<font color="#999999">（20%）</font></td>
										<td><img src="images/pl.gif" align="absmiddle" /></td>
									</tr>
									<tr>
										<td>差评<font color="#999999">（0%）</font></td>
										<td><img src="images/pl.gif" align="absmiddle" /></td>
									</tr>
								</table>
							</td>
							<td width="185" class="jud_bg">
								购买过雅诗兰黛第六代特润精华露50ml的顾客，在收到商品才可以对该商品发表评论</td>
							<td class="jud_bg">您可对已购买商品进行评价<br /> <a href="${pageContext.request.contextPath }/review"><img
									src="images/btn_jud.gif" /></a></td>
						</tr>
					</table>



					<table border="0" class="jud_list"
						style="width: 100%; margin-top: 30px;" cellspacing="0"
						cellpadding="0">
						<tr valign="top">
							<td width="160"><img src="images/peo1.jpg" width="20"
								height="20" align="absmiddle" />&nbsp;向死而生</td>
							<td width="180">颜色分类：<font color="#999999">粉色</font> <br />
								型号：<font color="#999999">50ml</font>
							</td>
							<td>产品很好，香味很喜欢，必须给赞。 <br /> <font color="#999999">2015-09-24</font>
							</td>
						</tr>
						<tr valign="top">
							<td width="160"><img src="images/peo2.jpg" width="20"
								height="20" align="absmiddle" />&nbsp;就是这么想的</td>
							<td width="180">颜色分类：<font color="#999999">粉色</font> <br />
								型号：<font color="#999999">50ml</font>
							</td>
							<td>送朋友，她很喜欢，大爱。 <br /> <font color="#999999">2015-09-24</font>
							</td>
						</tr>
						<tr valign="top">
							<td width="160"><img src="images/peo3.jpg" width="20"
								height="20" align="absmiddle" />&nbsp;墨镜墨镜</td>
							<td width="180">颜色分类：<font color="#999999">粉色</font> <br />
								型号：<font color="#999999">50ml</font>
							</td>
							<td>大家都说不错<br /> <font color="#999999">2015-09-24</font>
							</td>
						</tr>
						<tr valign="top">
							<td width="160"><img src="images/peo4.jpg" width="20"
								height="20" align="absmiddle" />&nbsp;那*****洋 <br /> <font
								color="#999999">（匿名用户）</font></td>
							<td width="180">颜色分类：<font color="#999999">粉色</font> <br />
								型号：<font color="#999999">50ml</font>
							</td>
							<td>下次还会来买，推荐。<br /> <font color="#999999">2015-09-24</font>
							</td>
						</tr>
					</table>



					<div class="pages">
						<a href="#" class="p_pre">上一页</a><a href="#" class="cur">1</a><a
							href="#">2</a><a href="#">3</a>...<a href="#">20</a><a href="#"
							class="p_pre">下一页</a>
					</div>

				</div> --%>
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

<script src="js/ShopShow.js"></script>

<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>
