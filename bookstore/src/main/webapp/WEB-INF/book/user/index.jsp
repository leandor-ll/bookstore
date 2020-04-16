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
<script type="text/javascript">
$(function(){
	$(".getP_id").click(function(){
		var id = $(this).prev().val();
		window.location.href="${pageContext.request.contextPath}/product?bid="+id;
	})
})
</script>

<title>主界面</title>

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
						href="${pageContext.request.contextPath }/memberuser">${uuname}</a>&nbsp;
						<a
						href="${pageContext.servletContext.contextPath }/regist"
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
		<div class="logo" style="margin-left: 500px">
			<a href="#"><img src="images/logo.png" /></a>
		</div>
	</div>
	<!--End Header End-->
	<!--Begin Menu Begin-->
	<div class="menu_bg">
		<div class="menu">
			<!--Begin 商品分类详情 Begin-->
			<div class="nav">
				<div class="nav_t">
					<a href="${pageContext.request.contextPath}/brandlist"
						style="color: white">全部商品分类</a>
				</div>
				<div class="leftNav">
					<ul>
						<li>
							<div class="fj">
								<span class="n_img"><span></span><img
									src="images/nav1.png" /></span> <span class="fl">经济馆</span>
							</div>
							<div class="zj">
								<div class="zj_l"></div>
								<div class="zj_r">
									<a href="#"><img src="images/n_img1.jpg" width="236"
										height="200" /></a> <a href="#"><img src="images/n_img2.jpg"
										width="236" height="200" /></a>
								</div>
							</div>
						</li>
						<li>
							<div class="fj">
								<span class="n_img"><span></span><img
									src="images/nav2.png" /></span> <span class="fl">文学馆</span>
							</div>
							<div class="zj" style="top: -40px;">
								<div class="zj_l"></div>
								<div class="zj_r">
									<a href="#"><img src="images/n_img1.jpg" width="236"
										height="200" /></a> <a href="#"><img src="images/n_img2.jpg"
										width="236" height="200" /></a>
								</div>
							</div>
						</li>
						<li>
							<div class="fj">
								<span class="n_img"><span></span><img
									src="images/nav3.png" /></span> <span class="fl">艺术馆</span>
							</div>
							<div class="zj" style="top: -80px;">
								<div class="zj_l"></div>
								<div class="zj_r">
									<a href="#"><img src="images/n_img1.jpg" width="236"
										height="200" /></a> <a href="#"><img src="images/n_img2.jpg"
										width="236" height="200" /></a>
								</div>
							</div>
						</li>
						<li>
							<div class="fj">
								<span class="n_img"><span></span><img
									src="images/nav4.png" /></span> <span class="fl">科技馆</span>
							</div>
							<div class="zj" style="top: -120px;">
								<div class="zj_l"></div>
								<div class="zj_r">
									<a href="#"><img src="images/n_img1.jpg" width="236"
										height="200" /></a> <a href="#"><img src="images/n_img2.jpg"
										width="236" height="200" /></a>
								</div>
							</div>
						</li>
						<li>
							<div class="fj">
								<span class="n_img"><span></span><img
									src="images/nav5.png" /></span> <span class="fl">IT馆</span>
							</div>
							<div class="zj" style="top: -160px;">
								<div class="zj_l"></div>
								<div class="zj_r">
									<a href="#"><img src="images/n_img1.jpg" width="236"
										height="200" /></a> <a href="#"><img src="images/n_img2.jpg"
										width="236" height="200" /></a>
								</div>
							</div>
						</li>
						<li>
							<div class="fj">
								<span class="n_img"><span></span><img
									src="images/nav6.png" /></span> <span class="fl">人文馆</span>
							</div>
							<div class="zj" style="top: -200px;">
								<div class="zj_l"></div>
								<div class="zj_r">
									<a href="#"><img src="images/n_img1.jpg" width="236"
										height="200" /></a> <a href="#"><img src="images/n_img2.jpg"
										width="236" height="200" /></a>
								</div>
							</div>
						</li>
						<li>
							<div class="fj">
								<span class="n_img"><span></span><img
									src="images/nav7.png" /></span> <span class="fl">历史馆</span>
							</div>
							<div class="zj" style="top: -240px;">
								<div class="zj_l"></div>
								<div class="zj_r">
									<a href="#"><img src="images/n_img1.jpg" width="236"
										height="200" /></a> <a href="#"><img src="images/n_img2.jpg"
										width="236" height="200" /></a>
								</div>
							</div>
						</li>
						<li>
							<div class="fj">
								<span class="n_img"><span></span><img
									src="images/nav8.png" /></span> <span class="fl">教育馆</span>
							</div>
							<div class="zj" style="top: -280px;">
								<div class="zj_l"></div>
								<div class="zj_r">
									<a href="#"><img src="images/n_img1.jpg" width="236"
										height="200" /></a> <a href="#"><img src="images/n_img2.jpg"
										width="236" height="200" /></a>
								</div>
							</div>
						</li>
						<li>
							<div class="fj">
								<span class="n_img"><span></span><img
									src="images/nav9.png" /></span> <span class="fl">杂志馆</span>
							</div>
							<div class="zj" style="top: -320px;">
								<div class="zj_l"></div>
								<div class="zj_r">
									<a href="#"><img src="images/n_img1.jpg" width="236"
										height="200" /></a> <a href="#"><img src="images/n_img2.jpg"
										width="236" height="200" /></a>
								</div>
							</div>
						</li>
						<li>
							<div class="fj">
								<span class="n_img"><span></span><img
									src="images/nav9.png" /></span> <span class="fl">杂志馆</span>
							</div>
							<div class="zj" style="top: -320px;">
								<div class="zj_l"></div>
								<div class="zj_r">
									<a href="#"><img src="images/n_img1.jpg" width="236"
										height="200" /></a> <a href="#"><img src="images/n_img2.jpg"
										width="236" height="200" /></a>
								</div>
							</div>
						</li>

					</ul>
				</div>
			</div>
			<!--End 商品分类详情 End-->
			<ul class="menu_r">
				<li></li>
				<li><a href="#01">经济类</a></li>
				<li><a href="#02">文学类</a></li>
				<li><a href="#03">艺术类</a></li>
				<li><a href="#04">科技类</a></li>
				<li><a href="#05">IT类</a></li>
				<li><a href="#06">人文历史类</a></li>
				<li><a href="#07">教育类</a></li>
				<li><a href="#08">杂志期刊</a></li>
			</ul>
			<div class="m_ad">欢迎进入易买网！</div>
		</div>
	</div>
	<!--End Menu End-->
	<div class="i_bg bg_color">
		<div class="i_ban_bg">
			<!--Begin Banner Begin-->
			<div class="banner">
				<div class="top_slide_wrap">
					<ul class="slide_box bxslider">
						<li><img src="images/zz.jpg" width="740" height="401" /></li>
						<li><img src="images/zz.jpg" width="740" height="401" /></li>
						<li><img src="images/zz.jpg" width="740" height="401" /></li>
					</ul>
					<div class="op_btns clearfix">
						<a href="#" class="op_btn op_prev"><span></span></a> <a href="#"
							class="op_btn op_next"><span></span></a>
					</div>
				</div>
			</div>
			<script type="text/javascript">
				//var jq = jQuery.noConflict();
				(function() {
					$(".bxslider").bxSlider({
						auto : true,
						prevSelector : jq(".top_slide_wrap .op_prev")[0],
						nextSelector : jq(".top_slide_wrap .op_next")[0]
					});
				})();
			</script>
			<!--End Banner End-->
			<div class="inews">
				<div class="news_t">
					<span class="fr"><a href="http://www.hao123.com">更多 ></a></span>新闻资讯
				</div>
				<ul>
					<li><span>[ 特惠 ]</span><a href="#">掬一轮明月 表无尽惦念</a></li>
					<li><span>[ 公告 ]</span><a href="#">好奇金装成长裤新品上市</a></li>
					<li><span>[ 特惠 ]</span><a href="#">大牌闪购 · 抢！</a></li>
					<li><span>[ 公告 ]</span><a href="#">发福利 买车就抢千元油卡</a></li>
					<li><span>[ 公告 ]</span><a href="#">书籍低至五折</a></li>
				</ul>
				<div class="charge_t">
					会员充值
					<div class="ch_t_icon"></div>
				</div>
				<form>
					<table border="0" style="width: 205px; margin-top: 10px;"
						cellspacing="0" cellpadding="0">
						<tr height="35">
							<td width="33">号码</td>
							<td><input type="text" value="" class="c_ipt" /></td>
						</tr>
						<tr height="35">
							<td>面值</td>
							<td><select class="jj" name="city">
									<option value="0" selected="selected">100元</option>
									<option value="1">50元</option>
									<option value="2">30元</option>
									<option value="3">20元</option>
									<option value="4">10元</option>
							</select> <span style="color: #ff4e00; font-size: 14px;">￥99.5</span></td>
						</tr>
						<tr height="35">
							<td colspan="2"><input type="submit" value="立即充值"
								class="c_btn" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<!--Begin 热门商品 Begin-->
		<div class="content mar_10">
			<div class="h_l_img">
				<div class="img">
					<img src="images/101.jpg" width="188" height="188" />
				</div>
				<div class="pri_bg">
					<span class="price fl">￥53.00</span> <span class="fr">16R</span>
				</div>
			</div>
			<div class="hot_pro">
				<div id="featureContainer">
					<div id="feature">
						<div id="block">
							<div id="botton-scroll">
								<ul class="featureUL">

									<c:forEach items="${map }" var="m" step="10">
										<li class="featureBox">
											<div class="box">
												<div class="h_icon">
													<img src="images/hot.png" width="50" height="50" />
												</div>
												<div class="imgbg">
													<input class="p_id"  value="${m['bid'] }" type="hidden"/>
													<a class="getP_id"><img
														src="${pageContext.request.contextPath }/upload${m['bpic'] }"
														width="160" height="136" /></a>
												</div>
												<div class="name">
													<input class="p_id"  value="${m['bid'] }" type="hidden"/>
													<a class="getP_id">
														<h2>${m['bname'] }</h2> ${m['bauthor'] }
													</a>
												</div>
												<div class="price">
													<font>￥<span>${m['bprice'] }</span></font>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
						<a class="h_prev" href="javascript:void();">Previous</a> <a
							class="h_next" href="javascript:void();">Next</a>
					</div>
				</div>
			</div>
		</div>
		<!--Begin 猜你喜欢 Begin-->
		<div class="i_t mar_10">
			<span class="fl">猜你喜欢</span>
		</div>
		<div class="like">
			<div id="featureContainer1">
				<div id="feature1">
					<div id="block1">
						<div id="botton-scroll1">
							<ul class="featureUL">
								<c:forEach items="${map }" var="m" step="8" begin="6">
									<li class="featureBox">
										<div class="box">
											<div class="imgbg">
												<input class="p_id"  value="${m['bid'] }" type="hidden"/>
												<a class="getP_id"><img
													src="${pageContext.request.contextPath }/upload${m['bpic'] }"
													width="160" height="136" /></a>
											</div>
											<div class="name">
												<input class="p_id"  value="${m['bid'] }" type="hidden"/>
												<a class="getP_id">
													<h2>${m['bname']}</h2> ${m['bauthor']}
												</a>
											</div>
											<div class="price">
												<font>￥<span>${m['bprice']}</span></font>
												&nbsp;${m['bcategory'] }
											</div>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<a class="l_prev" href="javascript:void();">Previous</a> <a
						class="l_next" href="javascript:void();">Next</a>
				</div>
			</div>
		</div>
		<!--End 猜你喜欢 End-->
		<!--Begin 限时特卖 Begin-->
		<div class="i_t mar_10">
			<span class="fl">限时特卖</span> <span class="i_mores fr"><a
				href="#">更多</a></span>
		</div>
		<div class="content">
			<div class="i_sell">
				<div id="imgPlay">
					<ul class="imgs" id="actor">
						<li><a href="#"><img src="images/w.jpg" width="211"
								height="357" /></a></li>
						<li><a href="#"><img src="images/w.jpg" width="211"
								height="357" /></a></li>
						<li><a href="#"><img src="images/w.jpg" width="211"
								height="357" /></a></li>
					</ul>
					<div class="previ">上一张</div>
					<div class="nexti">下一张</div>
				</div>
			</div>
			<div class="sell_right">
				<c:forEach items="${map }" var="m" step="15" begin="15"
					varStatus="vs">
					<div class="sell_${vs.count }">
						<div class="s_img">
							<input class="p_id"  value="${m['bid'] }" type="hidden"/>
							<a class="getP_id"><img
								src="${pageContext.request.contextPath }/upload${m['bpic'] }"
								width="185" height="155" /></a>
						</div>
						<div class="s_price">
							￥<span>${m['bprice'] }</span>
						</div>
						<div class="s_name">
							<h2>
								<input class="p_id"  value="${m['bid'] }" type="hidden"/>
								<a class="getP_id">${m['bname'] }</a>
							</h2>
						</div>
					</div>
				</c:forEach>
				<c:forEach items="${map }" var="m" step="30" begin="40"
					varStatus="vs">
					<div class="sell_b1">
						<div class="sb_img">
							<input class="p_id"  value="${m['bid'] }" type="hidden"/>
							<a class="getP_id"><img
								src="${pageContext.request.contextPath }/upload${m['bpic'] }"
								width="242" height="356" /></a>
						</div>
						<div class="s_price">
							￥<span>${m['bprice'] }</span>
						</div>
						<div class="s_name">
							<h2>
								<input class="p_id"  value="${m['bid'] }" type="hidden"/>
								<a class="getP_id">${m['bname'] }</a>
							</h2>
						</div>
					</div>
				</c:forEach>

				<c:forEach items="${map }" var="m" step="31" begin="41"
					varStatus="vs">
					<div class="sell_b2">
						<div class="sb_img">
							<input class="p_id"  value="${m['bid'] }" type="hidden"/>
							<a class="getP_id"><img
								src="${pageContext.request.contextPath }/upload${m['bpic'] }"
								width="242" height="356" /></a>
						</div>
						<div class="s_price">
							￥<span>${m['bprice'] }</span>
						</div>
						<div class="s_name">
							<h2>
								<input class="p_id"  value="${m['bid'] }" type="hidden"/>
								<a class="getP_id">${m['bname'] }</a>
							</h2>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<!--End 限时特卖 End-->

		<!--Begin 食品饮料 Begin-->
		<div class="i_t mar_10">

			<span class="floor_num">2F</span> <span class="fl" id="01">经济类</span>
			<span class="i_mores fr"><a href="#">咖啡</a>&nbsp; &nbsp; |
				&nbsp; &nbsp;<a href="#">休闲零食</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a
				href="#">饼干糕点</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">冲饮谷物</a>&nbsp;
				&nbsp; | &nbsp; &nbsp;<a href="#">营养保健</a> </span>
		</div>
		<div class="content">
			<div class="food_left">
				<div class="food_ban">
					<div id="imgPlay2">
						<ul class="imgs" id="actor2">
							<li><a href="#"><img src="images/zz.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/zz.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/zz.jpg" width="211"
									height="286" /></a></li>
						</ul>
						<div class="prev_f">上一张</div>
						<div class="next_f">下一张</div>
					</div>
				</div>
				<div class="fresh_txt">
					<div class="fresh_txt_c">
						<a href="#">时事热点</a><a href="#">国际经济</a><a href="#">股票增幅</a><a
							href="#">历史经济</a><a href="#">时事热点</a><a href="#">国际经济</a><a
							href="#">股票增幅</a><a href="#">股票增幅</a>
					</div>
				</div>
			</div>
			<div class="fresh_mid">
				<ul>
					<c:forEach items="${map}" var="m">
						<c:if test="${m['bcategory']=='c001'}">
							<li>
								<div class="name">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id">${m['bname'] }</a>
								</div>
								<div class="price">
									<font>￥<span>${m['bprice'] }</span></font>
									&nbsp;${cmap[m.bcategory]['category']}
								</div>
								<div class="img">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id"><img
										src="${pageContext.request.contextPath }/upload${m['bpic'] }"
										width="185" height="155" /></a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<div class="fresh_right">
				<ul>
					<li><a href="#"><img src="images/aa.jpg" width="260"
							height="220" /></a></li>
					<li><a href="#"><img src="images/aa.jpg" width="260"
							height="220" /></a></li>
				</ul>
			</div>
		</div>
		<!--End 食品饮料 End-->
		<!--Begin 个人美妆 Begin-->
		<div class="i_t mar_10">
			<span class="floor_num">3F</span> <span class="fl" id="02">文学类</span>
			<span class="i_mores fr"><a href="#">洗发护发</a>&nbsp; &nbsp; |
				&nbsp; &nbsp;<a href="#">面膜</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a
				href="#">洗面奶</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">香水</a>&nbsp;
				&nbsp; | &nbsp; &nbsp;<a href="#">沐浴露</a></span>
		</div>
		<div class="content">
			<div class="make_left">
				<div class="make_ban">
					<div id="imgPlay3">
						<ul class="imgs" id="actor3">
							<li><a href="#"><img src="images/11.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/11.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/11.jpg" width="211"
									height="286" /></a></li>
						</ul>
						<div class="prev_m">上一张</div>
						<div class="next_m">下一张</div>
					</div>
				</div>
				<div class="fresh_txt">
					<div class="fresh_txt_c">
						<a href="#">矛盾奖</a><a href="#">散文集</a><a href="#">杂文集</a><a
							href="#">散文集</a><a href="#">杂文集</a><a href="#">散文集</a><a href="#">矛盾奖</a><a
							href="#">矛盾奖</a><a href="#">沐浴露</a>
					</div>
				</div>
			</div>
			<div class="fresh_mid">
				<ul>
					<c:forEach items="${map }" var="m" step="1" begin="0">
						<c:if test="${m['bcategory']=='c002'}">
							<li>
								<div class="name">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id">${m['bname']}</a>
								</div>
								<div class="price">
									<font>￥<span>${m['bprice']}</span></font> &nbsp; 16R
								</div>
								<div class="img">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id"><img
										src="${pageContext.request.contextPath }/upload${m['bpic'] }"
										width="185" height="155" /></a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<div class="fresh_right">
				<ul>
					<li><a href="#"><img src="images/22.jpg" width="260"
							height="220" /></a></li>
					<li><a href="#"><img src="images/22.jpg" width="260"
							height="220" /></a></li>
				</ul>
			</div>
		</div>
		<!--End 个人美妆 End-->
		<div class="content mar_20">
			<img src="images/mban_1.jpg" width="1200" height="110" />
		</div>
		<!--Begin 母婴玩具 Begin-->
		<div class="i_t mar_10">
			<span class="floor_num">4F</span> <span class="fl" id="03">艺术类</span>
			<span class="i_mores fr"><a href="#">营养品</a>&nbsp; &nbsp; |
				&nbsp; &nbsp;<a href="#">孕妈背带裤</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a
				href="#">儿童玩具</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">婴儿床</a>&nbsp;
				&nbsp; | &nbsp; &nbsp;<a href="#">喂奶器</a></span>
		</div>
		<div class="content">
			<div class="baby_left">
				<div class="baby_ban">
					<div id="imgPlay4">
						<ul class="imgs" id="actor4">
							<li><a href="#"><img src="images/33.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/33.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/33.jpg" width="211"
									height="286" /></a></li>
						</ul>
						<div class="prev_b">上一张</div>
						<div class="next_b">下一张</div>
					</div>
				</div>
				<div class="fresh_txt">
					<div class="fresh_txt_c">
						<a href="#">素描</a><a href="#">风景画</a><a href="#">油画</a><a href="#">风景画</a><a
							href="#">油画</a><a href="#">素描</a><a href="#">素描</a><a href="#">素描</a><a
							href="#">风景画</a>
					</div>
				</div>
			</div>
			<div class="fresh_mid">
				<ul>
					<c:forEach items="${map }" var="m" step="1" begin="0">
						<c:if test="${m['bcategory']=='c003'}">
							<li>
								<div class="name">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id">${m['bname']}</a>
								</div>
								<div class="price">
									<font>￥<span>${m['bprice']}</span></font> &nbsp; 20R
								</div>
								<div class="img">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id"><img
										src="${pageContext.request.contextPath }/upload${m['bpic'] }"
										width="185" height="155" /></a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<div class="fresh_right">
				<ul>
					<li><a href="#"><img src="images/aa.jpg" width="260"
							height="220" /></a></li>
					<li><a href="#"><img src="images/aa.jpg" width="260"
							height="220" /></a></li>
				</ul>
			</div>
		</div>
		<!--End 母婴玩具 End-->
		<!--Begin 家居生活 Begin-->
		<div class="i_t mar_10">
			<span class="floor_num">5F</span> <span class="fl" id="04">科技类</span>
			<span class="i_mores fr"><a href="#">床上用品</a>&nbsp; &nbsp; |
				&nbsp; &nbsp;<a href="#">家纺布艺</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a
				href="#">餐具</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">沙发</a>&nbsp;
				&nbsp; | &nbsp; &nbsp;<a href="#">汽车用品</a></span>
		</div>
		<div class="content">
			<div class="home_left">
				<div class="home_ban">
					<div id="imgPlay5">
						<ul class="imgs" id="actor5">
							<li><a href="#"><img src="images/11.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/11.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/11.jpg" width="211"
									height="286" /></a></li>
						</ul>
						<div class="prev_h">上一张</div>
						<div class="next_h">下一张</div>
					</div>
				</div>
				<div class="fresh_txt">
					<div class="fresh_txt_c">
						<a href="#">科技品</a><a href="#">VR</a><a href="#">苹果手机</a><a
							href="#">科技品</a><a href="#">科技品</a><a href="#">VR</a><a href="#">苹果手机</a><a
							href="#">VR</a><a href="#">科技品</a>
					</div>
				</div>
			</div>
			<div class="fresh_mid">
				<ul>
					<c:forEach items="${map }" var="m" step="1" begin="0">
						<c:if test="${m['bcategory']=='c004'}">
							<li>
								<div class="name">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id">${m['bname']}</a>
								</div>
								<div class="price">
									<font>￥<span>${m['bprice']}</span></font> &nbsp; 50R
								</div>
								<div class="img">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id"><img
										src="${pageContext.request.contextPath }/upload${m['bpic'] }"
										width="185" height="155" /></a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<div class="fresh_right">
				<ul>
					<li><a href="#"><img src="images/zz.jpg" width="260"
							height="220" /></a></li>
					<li><a href="#"><img src="images/zz.jpg" width="260"
							height="220" /></a></li>
				</ul>
			</div>
		</div>
		<!--End 家居生活 End-->
		<!--Begin 数码家电 Begin-->
		<div class="i_t mar_10">
			<span class="floor_num">6F</span> <span class="fl" id="05">计算机类</span>
			<span class="i_mores fr"><a href="#">手机</a>&nbsp; &nbsp; |
				&nbsp; &nbsp;<a href="#">苹果</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a
				href="#">华为手机</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">洗衣机</a>&nbsp;
				&nbsp; | &nbsp; &nbsp;<a href="#">数码配件</a></span>
		</div>
		<div class="content">
			<div class="tel_left">
				<div class="tel_ban">
					<div id="imgPlay6">
						<ul class="imgs" id="actor6">
							<li><a href="#"><img src="images/33.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/33.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/33.jpg" width="211"
									height="286" /></a></li>
						</ul>
						<div class="prev_t">上一张</div>
						<div class="next_t">下一张</div>
					</div>
				</div>
				<div class="fresh_txt">
					<div class="fresh_txt_c">
						<a href="#">大数据</a><a href="#">云计算</a><a href="#">Java</a><a
							href="#">Pathyon</a><a href="#">c语言</a><a href="#">大数据</a><a
							href="#">编程</a><a href="#">云计算</a><a href="#">云计算</a><a href="#">编程</a>
					</div>
				</div>
			</div>
			<div class="fresh_mid">
				<ul>
					<c:forEach items="${map }" var="m" step="1" begin="0">
						<c:if test="${m['bcategory']=='c005'}">
							<li>
								<div class="name">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id">${m['bname']}</a>
								</div>
								<div class="price">
									<font>￥<span>${m['bprice']}</span></font> &nbsp; 25R
								</div>
								<div class="img">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id"><img
										src="${pageContext.request.contextPath }/upload${m['bpic'] }"
										width="185" height="155" /></a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<div class="fresh_right">
				<ul>
					<li><a href="#"><img src="images/22.jpg" width="260"
							height="220" /></a></li>
					<li><a href="#"><img src="images/22.jpg" width="260"
							height="220" /></a></li>
				</ul>
			</div>

		</div>
		<!--End 数码家电 End-->
		<div class="i_t mar_10">
			<span class="floor_num">6F</span> <span class="fl" id="06">人文历史类</span>
			<span class="i_mores fr"><a href="#">手机</a>&nbsp; &nbsp; |
				&nbsp; &nbsp;<a href="#">苹果</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a
				href="#">华为手机</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">洗衣机</a>&nbsp;
				&nbsp; | &nbsp; &nbsp;<a href="#">数码配件</a></span>
		</div>
		<div class="content">
			<div class="tel_left">
				<div class="tel_ban">
					<div id="imgPlay6">
						<ul class="imgs" id="actor6">
							<li><a href="#"><img src="images/aa.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/aa.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/aa.jpg" width="211"
									height="286" /></a></li>
						</ul>
						<div class="prev_t">上一张</div>
						<div class="next_t">下一张</div>
					</div>
				</div>
				<div class="fresh_txt">
					<div class="fresh_txt_c">
						<a href="#">考古</a><a href="#">地质</a><a href="#">三国</a><a href="#">唐宋</a><a
							href="#">明清史</a><a href="#">考古地质</a><a href="#">明清史</a><a
							href="#">地质</a><a href="#">三国</a><a href="#">考古地质</a>
					</div>
				</div>
			</div>
			<div class="fresh_mid">
				<ul>
					<c:forEach items="${map }" var="m" step="1" begin="0">
						<c:if test="${m['bcategory']=='c006'}">
							<li>
								<div class="name">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id">${m['bname']}</a>
								</div>
								<div class="price">
									<font>￥<span>${m['bprice']}</span></font> &nbsp; 25R
								</div>
								<div class="img">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id"><img
										src="${pageContext.request.contextPath }/upload${m['bpic'] }"
										width="185" height="155" /></a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<div class="fresh_right">
				<ul>
					<li><a href="#"><img src="images/11.jpg" width="260"
							height="220" /></a></li>
					<li><a href="#"><img src="images/11.jpg" width="260"
							height="220" /></a></li>
				</ul>
			</div>

		</div>
		<!------>
		<div class="i_t mar_10">
			<span class="floor_num">6F</span> <span class="fl" id="07">教育类</span>
			<span class="i_mores fr"><a href="#">手机</a>&nbsp; &nbsp; |
				&nbsp; &nbsp;<a href="#">苹果</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a
				href="#">华为手机</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">洗衣机</a>&nbsp;
				&nbsp; | &nbsp; &nbsp;<a href="#">数码配件</a></span>
		</div>
		<div class="content">
			<div class="tel_left">
				<div class="tel_ban">
					<div id="imgPlay6">
						<ul class="imgs" id="actor6">
							<li><a href="#"><img src="images/22.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/22.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/22.jpg" width="211"
									height="286" /></a></li>
						</ul>
						<div class="prev_t">上一张</div>
						<div class="next_t">下一张</div>
					</div>
				</div>
				<div class="fresh_txt">
					<div class="fresh_txt_c">
						<a href="#">小学</a><a href="#">初中</a><a href="#">高中</a><a href="#">大学</a><a
							href="#">四六级</a><a href="#">雅思</a><a href="#">高数</a><a href="#">托福</a><a
							href="#">奥数</a><a href="#">教辅</a>
					</div>
				</div>
			</div>
			<div class="fresh_mid">
				<ul>
					<c:forEach items="${map }" var="m" step="1" begin="0">
						<c:if test="${m['bcategory']=='c007'}">
							<li>
								<div class="name">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id">${m['bname']}</a>
								</div>
								<div class="price">
									<font>￥<span>${m['bprice']}</span></font> &nbsp; 25R
								</div>
								<div class="img">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id"><img
										src="${pageContext.request.contextPath }/upload${m['bpic'] }"
										width="185" height="155" /></a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<div class="fresh_right">
				<ul>
					<li><a href="#"><img src="images/zz.jpg" width="260"
							height="220" /></a></li>
					<li><a href="#"><img src="images/zz.jpg" width="260"
							height="220" /></a></li>
				</ul>
			</div>

		</div>
		<!-- -- -->
		<div class="i_t mar_10">
			<span class="floor_num">6F</span> <span class="fl" id="08">杂志/期刊</span>
			<span class="i_mores fr"><a href="#">手机</a>&nbsp; &nbsp; |
				&nbsp; &nbsp;<a href="#">苹果</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a
				href="#">华为手机</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">洗衣机</a>&nbsp;
				&nbsp; | &nbsp; &nbsp;<a href="#">数码配件</a></span>
		</div>
		<div class="content">
			<div class="tel_left">
				<div class="tel_ban">
					<div id="imgPlay6">
						<ul class="imgs" id="actor6">
							<li><a href="#"><img src="images/11.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/11.jpg" width="211"
									height="286" /></a></li>
							<li><a href="#"><img src="images/11.jpg" width="211"
									height="286" /></a></li>
						</ul>
						<div class="prev_t">上一张</div>
						<div class="next_t">下一张</div>
					</div>
				</div>
				<div class="fresh_txt">
					<div class="fresh_txt_c">
						<a href="#">杂志</a><a href="#">丽人</a><a href="#">杂志</a><a href="#">服装</a><a
							href="#">美妆</a><a href="#">数码配件</a><a href="#">数码</a><a href="#">电视</a><a
							href="#">充电器</a><a href="#">科技</a>
					</div>
				</div>
			</div>
			<div class="fresh_mid">
				<ul>
					<c:forEach items="${map }" var="m" step="1" begin="0">
						<c:if test="${m['bcategory']=='c008'}">
							<li>
								<div class="name">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id">${m['bname']}</a>
								</div>
								<div class="price">
									<font>￥<span>${m['bprice']}</span></font> &nbsp; 25R
								</div>
								<div class="img">
									<input class="p_id"  value="${m['bid'] }" type="hidden"/>
									<a class="getP_id"><img
										src="${pageContext.request.contextPath }/upload${m['bpic'] }"
										width="185" height="155" /></a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<div class="fresh_right">
				<ul>
					<li><a href="#"><img src="images/33.jpg" width="260"
							height="220" /></a></li>
					<li><a href="#"><img src="images/33.jpg" width="260"
							height="220" /></a></li>
				</ul>
			</div>

		</div>


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







