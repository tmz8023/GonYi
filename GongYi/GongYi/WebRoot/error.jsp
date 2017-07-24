<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript"></script>
	<style type="text/css">
		body{background:url(bootstrap/images/error.jpg);background-size:100%;text-align:center;padding-top:100px;}
		a{text-decoration:none;}
	</style>
  </head>
  
  <body>
  	<div>
  	<h1>账号信息不匹配！！！！</h1>
  	<button><a href="/GongYi/bootstrap/Home.jsp">返回主页</a><br></button>
  	</div>
  </body>
</html>
