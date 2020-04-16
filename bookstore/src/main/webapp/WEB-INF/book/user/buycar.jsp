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
	src="${pageContext.servletContext.contextPath }/js/num.js">
	var jq = jQuery.noConflict();
</script>

<script type="text/javascript"
	src="${pageContext.servletContext.contextPath }/js/shade.js">
	
</script>
<script type="text/javascript">
	jq(function() {
		jq("#payment").css("cursor", " pointer");
	})
</script>
<script type="text/javascript">
	jq(function() {
		jq(".car_btn_1").click(function() {
			var number = jq(this).next().val();
			var sbid = jq(this).attr("d");
			jq.post("${pageContext.request.contextPath}/upd", {
				"number" : number,
				"sbid" : sbid,
				"suid" : "${uuname}"
			}, function(data) {
				if (data.result) {
					window.location.replace(window.location.href);
				}
			}, "json")
		})
		jq(".car_btn_2").click(function() {
			var number = jq(this).prev().val();
			var sbid = jq(this).attr("d");
			jq.post("${pageContext.request.contextPath}/upd", {
				"number" : number,
				"sbid" : sbid,
				"suid" : "${uuname}"
			}, function(data) {
				if (data.result) {
					window.location.replace(window.location.href);
				}
			}, "json")
		})
	})
</script>
<script type="text/javascript">
	jq(function(){
		var i = false;
		jq("#all").click(function(){
				if(i){
					jq(".one").prop("checked",false);
					i=false;
				}else{
					jq(".one").prop("checked","checked");
					i=true;
				}
		    })
	})
</script>
<script type="text/javascript">
	jq(function(){
		jq("#payment").click(function(){
			var v  = new Array();
			jq("input:checked").each(function(){
				v.push(jq(this).val());
			})
			if(v==null||v==""){
				window.location.replace(window.location.href);
			}else{
				window.location.href="${pageContext.request.contextPath}/select?vList="+v;
			}
		})
	})
</script>



<title>尤洪</title>
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
					<span class="fl">你好，<a href="${pageContext.request.contextPath}/memberuser">${uuname}</a>&nbsp; <a
						href="${pageContext.servletContext.contextPath }/regist"
						style="color: #ff4e00;">免费注册</a>&nbsp;<a
						href="${pageContext.request.contextPath }/logout"
						style="color: #ff4e00;">注销</a>&nbsp;|&nbsp;<a href="${pageContext.request.contextPath}/show2">我的订单</a>&nbsp;|
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
		<div class="logo">
			<a href="${pageContext.request.contextPath }/index"><img
				src="images/logo.png" /></a>
		</div>
		<div class="search">
			<form action="${pageContext.request.contextPath }/brandlist">
				<input
					type="text" name="name" value="${param.name }" class="s_ipt" /> <input
					type="submit" value="搜索" class="s_btn" />
			</form>
			<span class="fl"><a href="#">趣味物理学</a><a href="#">Python编程</a><a
				href="#">算法导论</a><a href="#">零基础学C语言</a><a href="#">牛津高阶</a><a
				href="#">小王子</a></span>
		</div>

		<!-- 购物车显示信息 -->
		<c:if test="${empty(uuname) }" var="flag">
			  <div class="i_car">
    	<div class="car_t">购物车 [ <span>0</span> ]</div>
        <div class="car_bg" style="width:27	0px;height:90px;">
       		<!--Begin 购物车未登录 Begin-->
             <div style="text-align: center;margin-left: 5px;font-size:16px;margin-top: 20px">
				请 <a href="${pageContext.request.contextPath}/login"
					style="color: #FF3200"> 登录</a> 后查询购物车
			</div>            <!--End 购物车未登录 End-->
            <!--Begin 购物车已登录 Begin-->
          
            <div class="price_a"><a href="#">去购物车结算</a></div>
            <!--End 购物车已登录 End-->
        </div>
    </div>
		
			
		</c:if>
		<c:if test="${not flag }">
			<c:if test="${checkBuyCar }" var="fla">
				<!-- 购物车有信息 -->
				<div class="i_car">
					<div class="car_t">
						<a href="${pageContext.request.contextPath}/show">购物车
							[ <span>${tAmount }</span> ]
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
			<div class="car_t"><a href="${pageContext.request.contextPath}/show">购物车 [
					<span>0</span> ]
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
				<div class="nav_t"><a href="${pageContext.request.contextPath }/brandlist">全部商品</a></div>
			</div>
			<!--End 商品分类详情 End-->
			<ul class="menu_r">
				<li><a href="${pageContext.request.contextPath }/index">首页</a></li>
			</ul>
			<div class="m_ad">欢迎进入易买网</div>
		</div>
	</div>
	<!--End Menu End-->
	<div class="i_bg">
		<div class="content mar_20">
			<img src="images/img1.jpg" />
		</div>

		<!--Begin 第一步：查看购物车 Begin -->
		<div class="content mar_20">
		<c:if test="${empty(cList)}" var="fff">
			<table border="0" class="car_tab"
				style="width: 1200px; margin-bottom: 50px;" cellspacing="0"
				cellpadding="0">
				<tr>
					<td><img src="images/konggouwuche.jpg"/></td>
					
					<td colspan="6" align="right"><a
						href="${pageContext.request.contextPath}/brandlist"><img
							src="images/buy1.gif" /></a>&nbsp; &nbsp; <!-- 继续购物 -->
					</td>
				</tr>
			</table>
		</c:if>
		<c:if test="${not fff}">
			<table border="0" class="car_tab"
				style="width: 1200px; margin-bottom: 50px;" cellspacing="0"
				cellpadding="0">
				<tr>
					<td class="car_th" width="140">
						<input type="button" id="all" value="全选 "/>
					</td>
					<td class="car_th" width="140">序号</td>
					<td class="car_th" width="490">商品名称</td>
					<td class="car_th" width="130">商品单价</td>
					<td class="car_th" width="150">购买数量</td>
					<td class="car_th" width="150">小计</td>
					<td class="car_th" width="150">操作</td>
				</tr>
				<c:forEach items="${cList }" var="cartbook" varStatus="vs">
					<!--编号 ${cartbook.sbid } -->
					<tr>
					<td align="center">
						<input type="checkbox" class="one"  value="${cartbook.sbid }" /> 
					</td>
					
						<td align="center">${vs.count }</td>
						<td>
							<div class="c_s_img">
								<img src="${pageContext.request.contextPath }/upload${cartbook.spic }" width="73" height="73" />
							</div> 
							<input type="text" style="display: none" value="${cartbook.sbid }"   />
							<div style="margin-top:23px;text-align: center"> ${cartbook.sname }</div>
						</td>
						<td align="center" style="color: #ff4e00;">${cartbook.sprice }</td>
						<td align="center">
							<div class="c_num">
							
								<input type="button" value="" onclick="jianUpdate1(jq(this));"
									class="car_btn_1" name="numberdec" d="${cartbook.sbid }" /> 
									
								<input type="text" value="${cartbook.snumber }" disabled="disabled" 
									class="car_ipt" name="number" id="number"  />
									
								<input type="button" value="" onclick="addUpdate1(jq(this));" 
									class="car_btn_2" name="numberincr" id="numberincr"  d="${cartbook.sbid }"/>
							</div>
						</td>
						<td align="center" style="color: #ff4e00;">${cartbook.sprice * cartbook.snumber}</td>
						<td align="center"><a
							href="${pageContext.request.contextPath}/del?sbid=${cartbook.sbid }&suid=${cartbook.suid }"
							class="b_sure">删除</a>&nbsp; &nbsp;
					</tr>
				</c:forEach>
				
				<tr height="70">
					<td colspan="6"
						style="font-family: 'Microsoft YaHei'; border-bottom: 0;"><span
						class="fr">商品总价：<b style="font-size: 22px; color: #ff4e00;">￥${tPrice }</b></span>
					</td>
				</tr>
				<tr valign="top" height="150">
					<td colspan="6" align="right">
					<a href="${pageContext.request.contextPath}/brandlist">
						<img src="images/buy1.gif" /></a>&nbsp; &nbsp; 
						<!-- 继续购物 --> 
						<img src="images/buy2.gif"  id="payment"/></a> <!-- 结账 --></td>
				</tr>

			</table>
			</c:if>
		</div>
		<!--End 第一步：查看购物车 End-->

		<!--Begin 弹出层-删除商品 Begin-->

		<div id="fade" class="black_overlay"></div>
		<div id="MyDiv" class="white_content">
			<div class="white_d">
				<div class="notice_t">
					<span class="fr" style="margin-top: 10px; cursor: pointer;"
						onclick="CloseDiv('MyDiv','fade')"><img
						src="images/close.gif" /></span>
				</div>
				<div class="notice_c">

					<table border="0" align="center" style="font-size: 16px;"
						cellspacing="0" cellpadding="0">
						<tr valign="top">
							<td>您确定要把该商品移除购物车吗？</td>
						</tr>
						<tr height="50" valign="bottom">
							<!-- 传入商品id--sbid 及用户id--suid -->
							<td><a
								href="${pageContext.request.contextPath}/del?sbid=${cartbook.sbid }&ubid=12"
								class="b_sure">确定</a><a href="#" class="b_buy">取消</a></td>
						</tr>
					</table>

				</div>
			</div>
		</div>


		<!--End 弹出层-删除商品 End-->


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
