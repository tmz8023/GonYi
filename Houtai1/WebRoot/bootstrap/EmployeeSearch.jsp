<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    <style type="text/css">
    	*{margin:0;padding:0;}
    	#main{width:100%;height:100%;background:url(images/htbj.jpg);background-size:100%;}
    </style>
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
					<li><img src="images/home.png" style="margin-bottom:40px;">
					</li>
					<li style="margin-left:25px;">您当前的位置：</li>
					<li><a href="#">权限管理</a>
					</li>
					<li>></li>
					<li><a href="#">员工管理</a>
					</li>
				</ul>
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
		          	员工角色：<select class="form-control" name="sf_posiId">
		          				<option>总经理</option>
			          	  		<option>财务经理</option>
			          	  		<option>审批专员</option>
			          	  		<option>执行委员</option>
			          	  		<option>管理员</option>
			          	  		<option>普通员工</option>
		          		   </select>
		          	员工状态：<select  class="form-control" name="sf_posiId">
			          	  		<option>1</option>
			          	  		<option>2</option>	
		          	    	</select>		
		           	ID:<input class="form-control" name="id"/>
		           	 <input type="submit" value="sf_id"/>			          
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		      </div>
		    </div>
		 </div>
	</div>
			
			
			<div class="main">
				<div class="col-lg-5">
					    <div class="input-group">
					    	<form action="emp_queryEmployee.action" method="post">
						    	<div style="float:left">
						    	  <input class="btn btn-success" type="submit" value="查询"/>
						    	</div>  
						        <div style="float:left">
							      <span>
							        <input type="text" name="sf_name" class="form-control"/>
							      </span>
						        </div>
						    </form>  
					  	</div>
				</div>	
				
				
				
				
					
				<div Style="text-align:right">	
					 <button type="button" class="btn btn-success"><a href="emp_show.action">查询所有</a></button>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">用户增加</button>
				</div>
				<div>
					<table border="1" class="table table-bordered">
						<tr>
							<td><input type="checkbox"/></td>
							<td>ID</td>
							<td>员工编号</td>
							<td>姓名</td>
							<td>年龄</td>
							<td>性别</td>
							<td>身份证号</td>
							<td>员工角色</td>
							<td>状态</td>							
							<td>员工账号</td>
							<td>员工密码</td>
							<td>部门</td>
							<td>操作</td>
						</tr>
						<c:forEach items="${ssEmploy}" var="ee">
							<tr>
								<td><input type="checkbox"/></td>
								<td>${ee.sf_id}</td>
								<td>${ee.sf_number}</td>
								<td>${ee.sf_name}</td>								
						    	<td>${ee.sf_age}</td>
					    		<td>${ee.sf_gender}</td>
					    		<td>${ee.sf_cardId}</td>
					    		<td>${ee.sf_posname}</td>
					    		<td>${ee.sf_status}</td>
					    		<td>${ee.sf_username}</td>
					    		<td>${ee.sf_password}</td>
					    		<td>${ee.sf_deptName}</td>
					    		<td>					   	
				                	<div class="btn-toolbar">
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
	        <form action="emp_addEmployee.action" method="post" enctype="multipart/form-data">
					 员工编号：<input type="text" class="form-control" name="sf_number">
	               	姓名：<input type="text" class="form-control" name="sf_name">
					年龄：<input type="text" class="form-control" name="sf_age">
					性别：<input type="text" class="form-control" name="sf_gender">
					身份证号：<input type="text" class="form-control" name="sf_cardId">
					员工角色：<input type="text" class="form-control" name="sf_posiname">
					状态：<input type="text" class="form-control" name="sf_status">
					员工帐号：<input type="text" class="form-control" name="sf_username">
					员工密码：<input type="text" class="form-control" name="sf_password">
					部门：<input type="text" class="form-control" name="sf_deptName">
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
