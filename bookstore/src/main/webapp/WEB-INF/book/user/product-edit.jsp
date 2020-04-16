<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>
<!DOCTYPE html>
<html class="x-admin-sm">
  <head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.1</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css">
      <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>   
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/cookie.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <style>
  img{
  height:200px
  }
  </style>
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
    <div class="x-body"><!--  -->
        <form class="layui-form" action="${pageContext.request.contextPath}/emp" method="post" enctype="multipart/form-data">
        <input type="hidden" name="bid" value="${editData.bid}"/> 
        <input type="hidden" name="_method" value="PUT"/>
          <!--post请求模拟put请求  -->
          <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>作品名称
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="name" name="bname" required="" lay-verify="required"
                  autocomplete="off" class="layui-input" value="${editData.bname}">
              </div>
          </div>
           <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>作者
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="author" name="bauthor" required="" lay-verify="required"
                  autocomplete="off" class="layui-input" value="${editData.bauthor}">
              </div>
          </div>
           <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>出版社
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="publish" name="bpublish" required="" lay-verify="required"
                  autocomplete="off" class="layui-input" value="${editData.bpublish}">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>单价
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="price" name="bprice" required="" lay-verify="required"
                  autocomplete="off" class="layui-input" value="${editData.bprice}">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>数量
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="number" name="bnumber" required="" lay-verify="required"
                  autocomplete="off" class="layui-input" value="${editData.bnumber}">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                 图片
              </label>
              <div class="layui-input-inline">
              <img src="${pageContext.request.contextPath}/upload${editData.bpic }"/>
                  <input type="file" id="file" name="file" 
                  autocomplete="off" class="layui-input" ">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>类别
              </label>
              <div class="layui-input-inline">
                  <select id="bcategory" name="bcategory" class="valid">
                    <c:forEach items="${cMapList}" var="item">
                    <c:if test="${item['cid']==editData.bcategory }">
                    <option value="${item['cid']}" selected="selected">${item['category']}</option>
                    </c:if>
                     <c:if test="${item['cid']!=editData.bcategory }">
                    <option value="${item['cid']}">${item['category']}</option>
                    </c:if>
                    </c:forEach>
                  </select>
              </div>
          </div>
          <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
              </label>
              <button  class="layui-btn" lay-filter="add" lay-submit="">
                  修改
              </button>
          </div>
      </form>
    </div>	
  </body>

</html>