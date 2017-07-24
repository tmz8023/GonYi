<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'fenye.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <a href="fy_fenye.action">点我</a>
     sadasd
  <table border="1" width="500">
  asdsad
  	<tr>
  		<td>编号</td>
  		<td>名字</td>
  	</tr>
    <c:forEach items="${ListCasee.rows}" var="casee">
	    <tr>
	    	<td>
	    		${casee.id}&nbsp;</td><td>${casee.enroll_name} 
	    	</td>
	    </tr>
    </c:forEach>
  </table>
  ${ListCasee.pageStr } 共${ListCasee.total }条数据 共${ListCasee.allPage }页  
  
  </body>
</html>
