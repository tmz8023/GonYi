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
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	
    <link rel="icon" href="../../favicon.ico">

    <title>Starter Template for Bootstrap</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
     
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
     <link href="/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
     <link href="starter-template.css" rel="stylesheet"> 

    <script src="js/bootstrap.min.js"></script>
    <script src="js/ie-emulation-modes-warning.js"></script>
	
	
    
</head>
	
<body>
	<div class="top"></div>
	<div id="header">
		<div class="logo">第七组项目后台管理系统</div>
		<div class="navigation">
			<ul>
				<li>欢迎您！</li>
				<li><a href="">张山</a>
				</li>
				<li><a href="">修改密码</a>
				</li>
				<li><a href="">设置</a>
				</li>
				<li><a href="">退出</a>
				</li>
				<li>
					<a href="houtai.jsp" style="font-size:15px;">首页</a>
				</li>
			</ul>
		</div>
	</div>
	
	
			<!--修改用户状态的  模态框  -->
		  <div class="modal fade" id="exampleModal11" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="exampleModalLabel">最新信息</h4>
			      </div>
			      <div class="modal-body">
			        <form action="sturts_update.action" method="post">
			          	  角色:<input type="text" class="form-control" name="role"/>			
			           	 用户名:<input class="form-control" name="username"/>
			           	 <input type="submit" value="submit"/>			          
			        </form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			      </div>
			    </div>
			 </div>
		</div>
	
	<div id="content">
		<div class="left_menu">
			<ul id="nav_dot">
				<li>
					<h4 class="M10">
						<span></span>权限管理
					</h4>
					<div class="list-item none">
						<a href="employee.jsp">员工管理</a><a href="dept.jsp">部门管理</a> <a href="part.jsp">角色管理</a><a href="">员工角色管理</a><a href="">权限管理</a><a href="">角色权限管理</a>
					</div></li>
				<li>
					<h4 class="M1">
						<span></span>审核管理
					</h4>
					<div class="list-item none">
						<a href="userInfo.jsp">用户信息审核</a> <a href="personSupport.jsp">个人资助审核</a> <a href="publicProgram.jsp">公益项目审核</a> <a href=''>资金申请审核</a>
					</div></li>
				<li>
					<h4 class="M4">
						<span></span>理事管理
					</h4>
					<div class="list-item none">
						<a href='lishibiao1111.jsp'>理事表</a> <a href=''>评论管理2</a> <a href=''>评论管理3</a>
					</div></li>
				<li>
					<h4 class="M5">
						<span></span>执行管理
					</h4>
					<div class="list-item none">
						<a href="news.jsp">新闻发布</a>  <a href=''>调研问卷2</a> <a href=''>调研问卷3</a>
					</div></li>
				<li>
					<h4 class="M3">
						<span></span>财务管理
					</h4>
					<div class="list-item none">
						<a href='caiwu1.jsp'>捐款详情</a> <a href='caiwu2.jsp'>支出详情</a> 
					</div></li>
				
				<li>
					<h4 class="M6">
						<span></span>查询统计
					</h4>
					<div class="list-item none">
						 <a href="role.jsp">用户管理</a><a href="select.jsp">用户查询</a><a href='chaxun1.jsp'>支出项目</a> 
					</div></li>
				
			</ul>
		</div>
		<div class="m-right">
			<div class="right-nav">
				<ul>
					<li><img src="images/home.png" style="margin-bottom:40px;">
					</li>
					<li style="margin-left:25px;">您当前的位置：</li>
					<li><a href="#">查询统计</a>
					</li>
					<li>></li>
					<li><a href="role.jsp">用户管理</a>
					</li>
				</ul>
			</div>
			<div class="main">
				<div class="col-lg-3">
					    <div class="input-group">
					    	<form action="sturts_queryYPG.action" method="post" enctype="multipart/form-data">
						    	<div style="float:left">
						    	  <input class="btn btn-success" type="submit" value="查询"/>
						    	</div>  
						        <div style="float:left">
							      <span>
							        <input type="text" name="username" class="form-control">
							      </span>
						        </div>
						    </form>  
					  	</div>
				</div>	
				<div Style="text-align:right">	
					 <button type="button" class="btn btn-success"><a href="sturts_select11.action">查询所有</a></button>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">用户增加</button>
				</div>
				<div>
					<table border="1" class="table table-bordered">
						<tr>
							<td><input type="checkbox"/></td>
							<td>ID</td>
							<td>用户名</td>
							<td>真实姓名</td>
							<td>角色</td>
							<td>邮箱</td>
							<td>上次登录时间</td>
							<td>注册时间</td>
							<td>操作</td>
						</tr>
						<c:forEach items="${List}" var="tt">
							<tr>
							<td><input type="checkbox"/></td>
							<td>${tt.id}</td>
							<td>${tt.username}</td>
					    	<td>${tt.turename}</td>
				    		<td>${tt.role}</td>
				    		<td>${tt.email}</td>
				    		<td>${tt.date}</td>
				    		<td>${tt.joindate}</td>
				    		<td>					   	
			                	<div class="btn-toolbar">                   
				                      <button class="btn btn-default btn-xs text-success round"><span class="icon-search" title="查看详情">查看详情</span> </button>
				                      <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#exampleModal11" data-whatever="@mdo">修改</button>
				                      <button class="btn btn-default btn-xs text-danger round" ><a href="sturts_delete.action?a=${tt.id}">删除</a></button>
			                  	</div>         
							</td>
						   </tr>
						</c:forEach>
					</table>
				</div>
				
				<div style="text-align:center;">
					<ul class="pagination fr" >
		                <li class="disabled"><a href="#">«</a></li>
		                <li class="active"><a href="#">1</a></li>
		                <li><a href="#">2</a></li>
		                <li><a href="#">3</a></li>
		                <li><a href="#">4</a></li>
		                <li><a href="#">5</a></li>
		                <li><a href="#">»</a></li>
              		</ul>
              		
				</div>
			</div>
		</div>
	</div>
	
	<!--     用户增加的 模态框                     -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="exampleModalLabel">用户信息</h4>
	      </div>
	      <div class="modal-body">
	        <form action="sturts_save.action" method="post" enctype="multipart/form-data">
	          <!-- <div class="form-group">
	            <label for="recipient-name" class="control-label">Recipient:</label>
	            <input type="text" class="form-control" id="recipient-name">
	          </div>
	          <div class="form-group">
	            <label for="message-text" class="control-label">Message:</label>
	            <textarea class="form-control" id="message-text"></textarea>
	          </div> -->
	          <!-- <table border="1" class="table table-bordered">
	          	<tr>
					<td>用户名</td>
					<td>真实姓名</td>
					<td>角色</td>
					<td>邮箱</td>
					<td>上次登录时间</td>
					<td>注册时间</td>
	          	</tr>
	          	<tr>
	          		<td><input type="text" class="form-control" name="username"></td>
					<td><input type="text" class="form-control" name="turename"></td>
					<td><input type="text" class="form-control" name="role"></td>
					<td><input type="text" class="form-control" name="email"></td>
					<td><input type="text" class="form-control" name="date"></td>
					<td><input type="text" class="form-control" name="joindate"></td>
	          	</tr>
	          </table> -->
	          
	               	 用户名：<input type="text" class="form-control" name="username">
					真实姓名：<input type="text" class="form-control" name="turename">
					角色：<input type="text" class="form-control" name="role">
					email：<input type="text" class="form-control" name="email">
					登录时间：<input type="text" class="form-control" name="date">
					注册时间：<input type="text" class="form-control" name="joindate">
					<input type="submit" value="提交"/>
	        </form>
	      </div>
	      <div class="modal-footer">
	       <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>        
	      </div>
	    </div>
	  </div>
    </div> 
	      
	      
	      
	    
	   
	
	<div class="bottom"></div>
	<div id="footer">
		<p>
			Copyright© 2017 版权所有 来源:<a>第七小组</a>
		</p>
	</div>
	<script>navList(12);</script>
	
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
