<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <form class="layui-form" action="${pageContext.request.contextPath}/addcatesave" method="post" enctype="multipart/form-data">
          <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>类     别
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="bname" name="cid" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
           <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>类别名
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="author" name="category" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
          </div>
      
          <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
              </label>
              <button  class="layui-btn" lay-filter="add" lay-submit="">
                  增加
              </button>
          </div>
      </form>
    </div>	
  </body>

</html>