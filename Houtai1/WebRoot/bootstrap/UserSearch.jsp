<%@ page language="java" import="java.util.*,org.apache.struts2.ServletActionContext" pageEncoding="UTF-8"%>
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
	<%-- <%
		User se=new User();
		/* HttpServletRequest request1=ServletActionContext.getRequest(); */
		/* se.setUsername(request.getParameter("username")); */
		Dao dt=new DaoImpl();
		List<User> ff=dt.query(se);
		request.setAttribute("jerry", ff);
	 %> --%>
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
			           	ID:<input class="form-control" name="id"/>
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
					<li><a href="#">部门管理</a>
					</li>
					<li>></li>
					<li><a href="role.jsp">人事部</a>
					</li>
				</ul>
			</div>
			<div class="main">
				<div class="col-lg-5">
					    <div class="input-group">
					    	<form action="sturts_queryYPG.action" method="post" >
						    	<div style="float:left">
						    	  <input class="btn btn-success" type="submit" value="查询"/>
						    	</div>  
						        <div style="float:left">
							      <span>
							        <input type="text" name="enroll_sname" class="form-control">
							      </span>
						        </div>
						    </form>  
					  	</div>
				</div>	
				<div Style="text-align:right">	
					 <button type="button" class="btn btn-success"><a href="sturts_select11.action">查询所有</a></button>
					<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">用户增加</button> -->
				</div>
				<div  style="height:300px">
					<table border="1" class="table table-bordered">
						<tr>
							<td><input type="checkbox"/></td>
							<td>ID</td>
							<td>用户名</td>
							<td>密码</td>
							<td>验证密码</td>
							<td>性别</td>
							<td>身份证号</td>
							<td>真实姓名</td>
							<td>手机号</td>
							<td>邮箱</td>
							<td>操作</td>
						</tr>
						<c:forEach items="${fftt}" var="tt">
							<tr>
							<td><input type="checkbox"/></td>
							<td>${tt.enroll_id}</td>
								<td>${tt.enroll_name}</td>
						    	<td>${tt.enroll_pwd}</td>
					    		<td>${tt.enroll_spwd}</td>
					    		<td>${tt.enroll_gender}</td>
					    		<td>${tt.enroll_carid}</td>
					    		<td>${tt.enroll_sname}</td>
					    		<td>${tt.enroll_phone}</td>
					    		<td>${tt.enroll_email}</td>
				    		<td>					   	
			                	<div class="btn-toolbar">                   
				                     <%--  <button class="btn btn-default btn-xs text-success round"><span class="icon-search" title="查看详情">查看详情</span> </button>
				                      <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#exampleModal11" data-whatever="@mdo">修改</button>
				                      <button class="btn btn-default btn-xs text-danger round" ><a href="sturts_delete.action?a=${tt.id}">删除</a></button> --%>
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
	<!-- <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="exampleModalLabel">用户信息</h4>
	      </div>
	      <div class="modal-body">
	        <form action="sturts_save.action" method="post" enctype="multipart/form-data">
	          
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
    </div> -->
	
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
