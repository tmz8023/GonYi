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
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script></head>

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
					<li><a href="#">审核管理</a>
					</li>
					<li>></li>
					<li><a href="#">资金申请审核</a>
					</li>
				</ul>
			</div>
			
			<div class="main">
				<div class="col-lg-5">
					<div class="input-group">
						<!-- <form action="book_cha.action" method="post">
							<div>
								<input class="btn btn-success" type="submit" value="查询" />
							</div>
							<div>
								<span> <input type="text" name="q.ex_name"
									class="form-control" /> </span>
							</div>
						</form> -->
					</div>
				</div>

				<div Style="text-align:right">
					<a href="book_shen.action">
						<button type="button" class="btn btn-success ">查询所有</button>
					</a>

				</div>
				<form action="book_updateOne.action"method="post">
				<table class="table">
					<tr>
						
						<td>序号</td>
						<td>项目编号</td>
						<td>项目名称</td>
						<td>申请时间</td>
						<td>申请单位</td>
						<td>申请原因</td>
						<td>申请金额</td>
						<td></td>
					</tr>
					<c:forEach items="${shen}" var ="s">
						<tr>
						
						<td>${s.ex_id }</td>
						<td>${s.ex_name }</td>
						<td>${s.xmname }</td>
						<td>${s.ex_time }</td>
						<td>${s.ex_company }</td>
						<td>${s.ex_reason }</td>
						<td><div  id="sx">${s.ex_money }</div></td>
						<td>&nbsp;</td>
						</tr>
					<tr>
						<td>申请人</td>
						<td>状态</td>
						<td>该项目剩余金额</td>
						<td>批准金额</td>
						<td>意见</td>
						<td>理由</td>
						<td>操作</td>
						<td>&nbsp;</td>
					</tr>
					
						<tr>
						<td>${s.ex_person }</td>
						<td>${s.ex_status }</td>
						<td><div>${s.shengxia }</div></td>
						<td><input type="text" value="${s.ex_money }" name="money" id="money" style="width:50px"/></td>
						<td><input type="radio" value="审核通过" name="opinion" id="r1" />同意 <input
									type="radio" value="审核未通过" name="opinion" id="r2"/>不同意
						</td>
						<td><textarea name="reason" cols=8 rows=1 id="r3"></textarea></td>
						<td>
					<a href="book_selectTT.action?id=${s.ex_name }"> <button type="button" class="btn btn-default">项目详情</button></a>
			
						</td>
						<td><input type="submit"  value="审核完成"id="ss"></td>
						</tr>
					</c:forEach>				
					</table>
				</form>

			</div>
						
		</div>
	</div>
	<div class="bottom"></div>
	<div id="footer">
		<p>
			Copyright© 2017 版权所有 来源:<a>第七小组</a>
		</p>
	</div>
	<script>
		$("#ss").click(function(){
			var r3=document.getElementById("r3").value;
			var sx=document.getElementById("sx").innerHTML;
			var money=document.getElementById("money").value;
			if(r3.length==0){
				alert("请填写审核意见或理由");
				return false;
			}else if(parseFloat(money)>parseFloat(sx)){
				alert("批准金额不可超过项目申请金额");
				return false;
			}else if(parseFloat(money)<=0||money.length==0){
				alert("批准金额要大于0元");
				return  false;
			}else{
				alert("审核完成");
				return true;
			}
		})
	</script>
	<script>navList(12);</script>
</body>
</html>
