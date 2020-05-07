<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>
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
  </head>
  
  <body>
  <div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="${pageContext.request.contextPath }/index">网站首页</a>
        <a href="${pageContext.request.contextPath }/memberuser">用户首页</a>
        <a href="${pageContext.request.contextPath }/list">
          <cite>商品管理</cite></a>
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">刷新</i></a>
    </div>
    <div class="x-body">
        <form class="layui-form" action="${pageContext.request.contextPath}/emp" method="post" enctype="multipart/form-data">
 			<table class="layui-table x-admin">
        <thead>
          <tr>
           <th>
            <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>编号</th>
            <th >类别</th>
            <th >编辑</th>
            </tr>
        </thead>
        <tbody>
       
        <c:forEach items="${cMapList.data}" var="product" varStatus="vs">
          <tr>
           <td>
             <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${product.bid }'><i class="layui-icon">&#xe605;</i></div>
            </td>
            <td style="width:180px">${vs.count}</td>
            <td style="width:150px">${product.cid}</td>
            <td style="width:150px">${product.category}</td>
            <td class="td-manage" style="width:150px">
              <a title="修改"  onclick="window.location.href='http://localhost:8080${pageContext.request.contextPath}/emp/${product.cid }'" href="javascript:;">
                <i class="layui-icon">&#xe63c;</i>
              </a>
              <a title="删除" onclick="product_del(this,'${product.cid }')" href="javascript:;">
                <i class="layui-icon">&#xe640;</i>
              </a>	
            </td>
          </tr>
         </c:forEach>
        </tbody>
      </table>
          <div class="layui-form-item">
              
              <button  class="layui-btn" lay-filter="add" lay-submit="">
                  修改
              </button>
          </div>
      </form>
    </div>	
  </body>

</html>