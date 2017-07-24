
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>后台模板管理系统</title>
	<link type="text/css" rel="stylesheet" href="css/style.css" />
	<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" src="js/menu.js"></script>
	 <meta charset="GB2312">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
	

    <link rel="icon" href="../../favicon.ico">

    <title>Starter Template for Bootstrap</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="starter-template.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
	<%--  <%
		incomeDaoImpl ip=new incomeDaoImpl();
		List<income> list = ip.Query();
		session.setAttribute("income", list);
	 %>  --%>
	 
<body id="id">
	<div class="top"></div>
	<div id="header">
		<div class="logo">第七组项目后台管理系统</div>
		<div class="navigation">
			<ul>
				<li>欢迎您！</li>
				<li><a href="">${name}</a></li>
				<li><a href="denglu.jsp">退出</a>
				</li>
				<li><a href="houtai.jsp">首页</a>
				</li>
			</ul>
		</div>
	</div>
	<div id="content">
		<div class="left_menu">
			<ul id="nav_dot">
				<li>
					<h4 class="M10">
						<span></span>部门管理
					</h4>
					<div class="list-item none">
						<a href="sturts_select11.action">人事部</a><!-- <a href="zongjian.jsp">总监部</a> <a href="shenhebu.jsp">审核部</a><a href="caiwubu.jsp">财务部</a><a href="xinwenbu.jsp">新闻部</a> -->
					</div></li>
				<li>
					<h4 class="M10">
						<span></span>权限管理
					</h4>
					<div class="list-item none">
						<a href="emp_show.action">员工管理</a><a href="Rol_showRole.action">角色管理</a><!-- <a href="Aut_showAuth1.action">权限管理</a> -->
					</div></li>
				<li>
					<h4 class="M1">
						<span></span>审核管理
					</h4>
					<div class="list-item none">
						<a href="book_geren.action">用户信息审核</a> <a href="ww_Reviewprojectservlet.action">公益项目审核</a> <a href='book_shen.action'>资金申请审核</a>
					</div></li>
				<li>
					<h4 class="M4">
						<span></span>理事管理
					</h4>
					<div class="list-item none">
						<a href='en_fenye.action'>资金审核</a> <a href='enhao_fenye1.action'>项目审核</a>
					</div></li>
				<li>
					<h4 class="M5">
						<span></span>执行管理
					</h4>
					<div class="list-item none">
						<!-- <a href="n_select.action">新闻发布</a> --> <!-- <a href='lishibiao1111.jsp'>理事管理</a> --> <a href='p_select1.action'>项目管理</a>
					</div></li>
				<li>
					<h4 class="M3">
						<span></span>财务管理
					</h4>
					<div class="list-item none">
						<a href="ww_finanaceconfirm.action">收入确认</a><a href='fy_fenye22.action'>捐款详情</a> <a href='book_chaxun.action'>支出详情</a><a href='book_fang.action'>理事状态</a> 
					</div></li>
				
				<li>
					<h4 class="M6">
						<span></span>查询统计
					</h4>
					 <div class="list-item none">
						<a href="select.jsp">用户查询</a><a href='employ_SelectProjectMoney.action'>支出项目</a> 
					</div></li>
			</ul>
		</div>
		<div class="m-right">
			<div class="right-nav">
				<ul>
					<li><img src="images/home.png"style="margin-bottom:40px;">
					</li>
					<li style="margin-left:25px;">您当前的位置：</li>
					<li><a href="#">财务管理</a>
					</li>
					<li>></li>
					<li><a href="">捐款详情</a>
					</li>
					<li style="width:50%">&nbsp;</li>
					<li><button type="button" class="btn btn-blue" style="background:red;color:white"><a ><!-- href="fy_fenye.action" -->查询所有</a><button></li>
				</ul>
			</div>
			<div class="main">
				<div style="height:350px;">
				
					<table class="table"  width="500">
					  	<tr>
					  		<td>序号</td>
					  		<td>捐款人</td>
					  		<td>项目编号</td>
					  		<td>项目名称</td>
					  		<td>金额</td>
					  		<td>时间</td>
					  		<td>状态</td>
					  		<td>审批人</td>
					  	</tr>
					  	<c:forEach items="${ListCasee.rows}" var="list">
					  	<tr>
					  		<td>
					  			${list.id }
					  		</td>
					  		<td>
					  			${list.name }
					  		</td>
					  		<td>
					  			${list.askId }
					  		</td>
					  		<td>
					  			${list.xmname }
					  		</td>
					  		<td>
					  			${list.money }
					  		</td>
					  		<td>
					  			${list.date }
					  		</td>
					  		<td>
					  			${list.status }
					  		</td>
					  		<td>
					  			${list.person }
					  		</td>
					  	</tr>
					  	</c:forEach>
					  </table>
				</div>
				<div style="float:right;height:50px;margin-right:100px;">${ListCasee.pageStr }共${ListCasee.total }&nbsp;条数据&nbsp;&nbsp; 共${ListCasee.allPage }&nbsp;页 </div>
				<div style="height:50px;">
					<table class="table">
						<tr>	
							<td></td><td></td>
							<td>捐款总人数：<button style="width:100px;background:black;color:white">${total}</button>&nbsp;&nbsp;人</td><td></td>
							<td>捐款总金额：<button style="width:100px;background:black;color:white">${Sumoney}</button>&nbsp;&nbsp;元</td><td></td>
						</tr>
						
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- <script type="text/javascript">
		$(function(){
  				$.ajax({
  					type:"post",
  					url:"user_.action",
  					success:function(data){
  						$("#id").html(data);
  					}
  				});
  		});
	</script> -->
	
	<div class="bottom">
	
	</div>
	<div id="footer">
		<p>
			Copyright 2017 版权所有 来源:<a>第七小组</a>
		</p>
	</div>
	<script>navList(12);</script>
</body>
</html>
