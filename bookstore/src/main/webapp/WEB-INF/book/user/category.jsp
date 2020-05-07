<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="x-admin-sm">
  <head>
    <meta charset="UTF-8">
    <title>博库智慧城</title>
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
    
    <script type="text/javascript">
	   $(function(){
    		$(".deleteById").click(function(){
    			var cid = $(this).attr("f");
    			$.post("${pageContext.request.contextPath}/deletecate",{"cid":cid},function(data){
    				if(data.result){
    					alert("删除成功！");
    					window.location.replace(window.location.href);
    				}else{
    					alert("删除失败！")
    					window.location.replace(window.loaction.href)
    				}
    			},"json")
    		})
	   })   
 	</script>
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
        <form class="layui-form layui-col-md12 x-so" action="${pageContext.request.contextPath}/category" >
        </form>
      </div>
      <xblock>
        <button class="layui-btn" onclick="window.location.href='http://localhost:8080${pageContext.request.contextPath}/addcate'"><i class="layui-icon"></i>添加</button>
      </xblock>
      <table class="layui-table x-admin">
        <thead>
          <tr>
         	<th>编号</th>
            <th >类别</th>
            <th>类别名</th>
            <th >编辑</th>
            </tr>
        </thead>
        <tbody>
       
        <c:forEach items="${cmap}" var="cate" varStatus="vs">
          <tr>
          	 <td style="width:180px">${vs.count}</td>
            <td style="width:150px">${cate['cid']}</td>
            <td style="width:150px">${cate['category']}</td>
            <td class="td-manage" style="width:150px">
              <a title="修改"  href="${pageContext.request.contextPath}/editcate?id=${cate['cid']}" >
                <i class="layui-icon">&#xe63c;</i>
              </a>
              <a title="删除" class="deleteById" f="${cate['cid']}">
                <i class="layui-icon">&#xe640;</i>	
              </a>	
            </td>
          </tr>
         </c:forEach>
        </tbody>
      </table>
      <form action="${pageContext.request.contextPath}/category" id="dele" method="post">
      	<input type="hidden" name="_method" value="DELETE"/>
      </form>
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
		function product_del(obj, id) {
			  layer.confirm('确认要删除吗？',function(index){
					var form=document.getElementById("dele");
					form.action='${pageContext.request.contextPath }/deletecate/'+id;
					form.submit();
					 layer.msg('已删除!',{icon:1,time:1000});
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
		})
	</script>
</body>

</html>