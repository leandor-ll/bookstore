<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="x-admin-sm">
  <head>
    <meta charset="UTF-8">
    <title>网上书店</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css">
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>   
   <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/cookie.js"></script>
    <style>
    td.img{
    	width=100px;
    	height=100px;
    }
    </style>
  </head>
  
  <body>
    <div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="${pageContext.request.contextPath }/index">网站首页</a>
        <a href="${pageContext.request.contextPath }/memberuser">用户首页</a>
        <a href="${pageContext.request.contextPath }/emps">
          <cite>商品管理</cite></a>
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">刷新</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form class="layui-form layui-col-md12 x-so" action="${pageContext.request.contextPath}/emps" >
          
           <div class="layui-input-inline" >
				<select id="bcategory" name="bcategory">
					<option value="">请选择商品类别</option>
					<c:forEach items="${ cMapList}" var="item">
						<c:if test="${item['cid'] != param['bcategory']}" var="test">
							<option value="${item['cid'] }">${item['category'] }</option>
					   </c:if>
					   <c:if test="${!test}">
							<option value="${item['cid'] }" selected>${item['category'] }</option>
					   </c:if>
					</c:forEach>
				</select>
			  </div>
          
          <span>价格区间</span>
          <input class="layui-input" placeholder="最低价" name="from" id="from" value="${param.from}">
          <input class="layui-input" placeholder="最高价" name="to" id="to" value="${param['to']}">
          <input type="text" name="bname"  placeholder="请输入商品名称" autocomplete="off" class="layui-input" value="${param.bname}">
          <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
        </form>
      </div>
      <xblock>
        <button class="layui-btn layui-btn-danger" onclick="deleteAll()"><i class="layui-icon"></i>批量删除</button>
        <button class="layui-btn" onclick="window.location.href='http://localhost:8080${pageContext.request.contextPath}/emp'"><i class="layui-icon"></i>添加</button>
        <button class="layui-btn" onclick="window.location.href='http://localhost:8080${pageContext.request.contextPath}/category'"><i class="layui-icon"></i>编辑类别</button>
        <span class="x-right" style="line-height:40px">共有数据：${pageInfo.total } 条</span>
      </xblock>
      <table class="layui-table x-admin">
        <thead>
          <tr>
           <th>
            <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>编号</th>
            <th>书名</th>
            <th>作者</th>
            <th>出版社</th>
            <th >价格</th>
            <th >数量</th>
            <th >图片</th>
            <th >类别</th>
            <th >编辑</th>
            </tr>
        </thead>
        <tbody>
       
        <c:forEach items="${pageInfo.list}" var="product" varStatus="vs">
          <tr>
           <td>
             <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${product.bid }'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td style="width:180px">${vs.count}</td>
            <td style="width:150px">${product.bname}</td>
            <td style="width:150px">${product.bauthor}</td>
            <td style="width:150px">${product.bpublish}</td>
            <td style="width:150px">${product.bprice}</td>
            <td style="width:150px">${product.bnumber}</td>
            <td style="width:150px"><img style="width:100px;height:130px"  src="${pageContext.request.contextPath}/upload${product.bpic }"/></td>
            <td style="width:150px">${cmap[product.bcategory]['category']}</td>
            <td class="td-manage" style="width:150px">
              <a title="修改"  onclick="window.location.href='http://localhost:8080${pageContext.request.contextPath}/emp/${product.bid }'" href="javascript:;">
                <i class="layui-icon">&#xe63c;</i>
              </a>
              <a title="删除" onclick="product_del(this,'${product.bid }')" href="javascript:;">
                <i class="layui-icon">&#xe640;</i>
              </a>	
            </td>
          </tr>
         </c:forEach>
        </tbody>
      </table>
      <form action="${pageContext.request.contextPath}/emp" id="dele" method="post">
      	<input type="hidden" name="_method" value="DELETE"/>
      </form>
      <div class="page">
        <div>
        <c:if test="${pageInfo.pageNum >1 }">
          		<a class="prev" href="${pageContext.servletContext.contextPath}/emps?pageNum=1&bcategory=${param['bcategory']}&bname=${param['bname']}&from=${param['from']}&to=${param['to']}">首页</a>
           </c:if>
          <c:forEach items="${pageInfo.navigatepageNums}" var="num" >
          		<c:if test="${pageInfo.pageNum == num}">
          			 <span class="current">${num }</span>
          		</c:if>
          		<c:if test="${pageInfo.pageNum != num}">
          			  <a class="num" href="${pageContext.servletContext.contextPath}/emps?pageNum=${num }&bcategory=${param['bcategory']}&bname=${param['bname']}&from=${param['from']}&to=${param['to']}">${num }</a>
          		</c:if>
          </c:forEach>
          <c:if test="${pageInfo.pageNum < pageInfo.pages  }">
					<a class="next" href="${pageContext.servletContext.contextPath}/emps?pageNum=${pageInfo.pages}&bcategory=${param['bcategory']}&bname=${param['bname'] }&from=${param['from'] }&to=${param['to'] }">尾页</a>
				</c:if>
        
        </div>
      </div>
	</div>
	<script>
		/*用户-停用*/
		function member_stop(obj, id) {
			layer.confirm('确认要停用吗？', function(index) {

				if ($(obj).attr('title') == '启用') {

					//发异步把用户状态进行更改
					$(obj).attr('title', '停用')
					$(obj).find('i').html('&#xe62f;');

					$(obj).parents("tr").find(".td-status").find('span')
							.addClass('layui-btn-disabled').html('已停用');
					layer.msg('已停用!', {
						icon : 5,
						time : 1000
					});

				} else {
					$(obj).attr('title', '启用')
					$(obj).find('i').html('&#xe601;');

      /*用户-删除*/
      function product_del(obj,id){
              var form=document.getElementById("dele");
              form.action='${pageContext.request.contextPath }/emp/'+id;
              form.submit();
      }
					$(obj).parents("tr").find(".td-status").find('span')
							.removeClass('layui-btn-disabled').html('已启用');
					layer.msg('已启用!', {
						icon : 5,
						time : 1000
					});
				}

			});
		}

		/*用户-删除*/
		function product_del(obj, id) {
			  layer.confirm('确认要删除吗？',function(index){
					var form=document.getElementById("dele");
					form.action='${pageContext.request.contextPath }/emp/'+id;
					form.submit();
					 layer.msg('已删除!',{icon:1,time:1000});
				});
		}

		function delAll(argument) {

			var data = tableCheck.getData();
			//data是一个数组
			layer
					.confirm(
							'确认要删除吗？' + data,
							function(index) {
								window.location.href = "http://localhost:8080${pageContext.request.contextPath}/deleteAll&ids="
										+ data;
									
								//捉到所有被选中的，发异步进行删除
								layer.msg('删除成功', {
									icon : 1
								});
								$(".layui-form-checked").not('.header')
										.parents('tr').remove();
							});
		}
	</script>
	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
</body>

</html>