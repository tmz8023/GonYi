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
	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
    <link rel="icon" href="../../favicon.ico">
    <title>Starter Template for Bootstrap</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="starter-template.css" rel="stylesheet">
 
    <script src="js/ie-emulation-modes-warning.js"></script>
</head>

<body>
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
						<!-- <a href="n_select.action">新闻发布</a>  --><!-- <a href='lishibiao1111.jsp'>理事管理</a> --> <a href='p_select1.action'>项目管理</a>
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
					<li><img src="images/home.png" style="margin-bottom:40px">
					</li>
					<li style="margin-left:25px;">您当前的位置：</li>
					<li><a href="#">执行管理</a>
					</li>
					<li>></li>
					<li><a href="#">新闻发布</a>
					</li>
				</ul>
			</div>
			
			
			<div class="main">
				<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
				  增加一行
				</button>
				
				<a href="n_select.action">
					<button type="button" class="btn btn-primary btn-lg" >查询所有</button>
				</a>
				
				<div class="col-lg-6">
					<div class="input-group">
						<form action="n_selectName.action" method="post">
							<div style="float:left">
								<input type="text" class="form-control" name="ip.name" placeholder="请输入关键词...">
							</div>
							<div style="float:left">
								<span class="input-group-btn">
									<button class="btn btn-default" type="submit">查询</button> 
								</span>
							</div>
						</form>
					</div>
				</div>
				
				<div>
					<table class="table table-bordered" border="1">
						<tr>
							<td><input type="checkbox" /></td>
							<td>新闻编号</td>
							<td>新闻名称</td>
							<td>新闻内容</td>
							<td>图片路径</td>
							<td>项目发布时间</td>
							<td>操作</td> 
						</tr>
						<c:forEach items="${new}" var="ll">
							<tr>
								<td><input type="checkbox" /></td>
								<td>${ll.id}</td>
								<td>${ll.name}</td>
								<td>${ll.content}</td>
								<td>${ll.img}</td>
								<td>${ll.date}</td>
								<td>
									<a class="btn btn-default" href="#" role="button">详情</a>
									<button type="button" class="btn btn-default" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">修改</button>
									<a class="btn btn-default" href="n_delete.action?a=${ll.id}">删除</a>

								</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				
				<div style="text-align:center;">
					<ul class="pagination fr" >
		                <li class="disabled"><a href="#">«</a></li>
		                <li class="active"><a href="#">1</a></li>
		                <li><a href="#">»</a></li>
              		</ul>
				</div>
			
			</div>
		</div>
	</div>
	
	<div class="bottom"></div>

	<!-- 增加一行的模态框 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				
				<div class="modal-body">
					<div class="modal_body_main">
						<form action="n_add.action" method="post">
							
							<span class="modal_main_text">新闻名称：</span><input type="text" name="ns.name" />
							<br>
							<br> 
							<span class="modal_main_text">新闻内容：</span><textarea rows="2" cols="26" name="ns.content"></textarea>
							<br>
							<br> 
							<span class="modal_main_text">图片路径：</span><input type="text" name="ns.img" />
							<br>
							<br> 
							<!-- <span class="modal_main_text">新闻发布时间：</span><input type="text" name="ns.date" />
							<br>
							<br> --> 
							
							<input type="submit" value="添加" />
						</form>
					</div>
				</div>
				
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>

	
	<!-- 修改信息 模态框-->

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				
					<form action="n_update.action" method="post">
							<span class="modal_main_text">新闻序号：</span><input type="text" name="ns.id" />
							<br>
							<br> 
							<span class="modal_main_text">新闻名称：</span><input type="text" name="ns.name" />
							<br>
							<br> 
							<!-- <span class="modal_main_text">项目内容：</span><textarea rows="2" cols="26" name="content"></textarea>
							<br>
							<br> 
							<span class="modal_main_text">图片路径：</span><input type="text" name="img" />
							<br>
							<br> 
							<span class="modal_main_text">项目发布时间：</span><input type="text" name="date" />
							<br>
							<br> 
							<span class="modal_main_text">项目结束时间：</span><input type="text" name="finals" />
							<br>
							<br>  -->
							<input type="submit" value="添加" />
						</form>
				
				</div>
			</div>
		</div>
	</div>





	<div id="footer">
		<p>
			Copyright 2017 版权所有 来源:<a>第七小组</a>
		</p>
	</div>
	<script>navList(12);</script>
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
