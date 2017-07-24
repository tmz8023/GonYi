<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="description" content="">
<meta name="author" content="">
 <link href="css/jquery.idcode.css" type="text/css" rel="stylesheet"> 


<title>My JSP 'mujuan.jsp' starting page</title>
<!-- Bootstrap core CSS 1,加载层叠样式表-->
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet"> 

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../../assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<!-- <link href="starter-template.css" rel="stylesheet"> -->

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<!-- <script src="../../assets/js/ie-emulation-modes-warning.js"></script> -->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<style type="text/css">
* {
	margin: 0;
	padding: 0
}

#body {
	width: auto;;
	height: 1000px;;

}

#logo {

	width: 1300px:height:20px;
	padding-left: 100px;
	padding-top: 3px;
}

#title {
	padding-left: 600px;
}

#sousuo {
	
	margin-top: 0px;
	padding-left: 100px;
}

#map {
	color: green;
	font-size: 20px;
	padding-left: 100px;
	margin-top: 80px;
}

#middle {

	width: 900px;
	height: 400px;
	margin-left: 140px;
	margin-top: 30px;
	background-color: #F3F3F3;
}

#middle-left {

	width: 400px;
	height: 400px;
	float: left;
}

#middle-right {

	width: 400px;
	height: 400px;
	float: right;
}

#middle-left-image {
	padding-left: 50px;
	padding-top: 20px;
}

#middle-left-title {
	color: red;
	font-size: 16px;
	padding-left: 50px;
	margin-top: 20px;
}

#middle-left-neirong {
	padding-left: 50px;
	margin-top: 15px;
}

#money {
	color: #FFCC33;
	font-size: 20px;
}

#middle-left-canyu {
	padding-left: 50px;
	margin-top: 15px;
}

#middle-left-time {
	padding-left: 50px;
	margin-top: 15px;
}

#middle-right-kuang {
	width: 350px;
	height: 350px;

	margin-left: 15px;
	margin-top: 15px;
	background-color: white;
}

#middle-right-shou {
	padding-left: 20px;
	padding-top: 30px;
	font-size: 15px;
}

#middle-right-money {
	padding-left: 20px;;
	padding-top: 30px;
}

#middle-right-niming {
	padding-left: 95px;
	padding-top: 30px;
}

#ziti {
	font-size: 15px;
	padding-left: 20px;
	padding-top: 30px;
}

#middle-right-yanzheng {
	padding-left: 20px;
	padding-top: 30px;
}

#middle-right-bottom {
	padding-left: 95px;
	padding-top: 30px;
}
#bottom-di{
	margin-left:550px;
	margin-top:100px;
}
</style>
<script type="text/javascript" src=" http://code.jquery.com/jquery-1.8.3.min.js"></script>
</head>

<body>
	<div id="body">
		<!-- logo图片 -->
		<div>
			<div id="logo">
				<img src="images/logo.png" width='60' px;height='50px';>
				<img src="images/dh1.PNG">
				<span id="title">	你好!<a>${name}</a><a href="gerenzhongxin.jsp">个人中心</a><a href="Zhuye.jsp">首页</a><a href="Home.jsp">退出</a></span>
			</div>
			
			<hr>
			
		</div>
				<!-- 搜索框 -->
		<div id="sousuo">
			<form class="bs-example bs-example-form" role="form" action="ww_add.action" method="post">
				<div class="row">
					<div class="col-lg-6">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="搜索公益项目">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">搜索公益项目</button> </span>
						</div>
						<!-- /input-group -->
					</div>
					<!-- /.col-lg-6 -->
				</div>
				<!-- /.row -->
			</form>
		</div>

		<div id="map">益家人&nbsp|&nbsp公益平台感谢您的爱心捐赠</div>
	<s:forEach items="${list }" var="dd">
		<div id="middle">
			<div id="middle-left">
				<div id="middle-left-image">
					 <img src="${dd.lujing }" width="300px" height="200"/> 
				</div>
				<div id="middle-left-title">${dd.name}</div>
				<div id="middle-left-neirong">
					已募善款：<span id="money">${money}</span>元
				</div>
				<div id="middle-left-canyu">参与人数：&nbsp;${count}人参与捐助</div>
				<!-- <div id="middle-left-time">项目时间：&nbsp;2016-03-16至2018-06-25</div> -->
			</div>
			<div id="middle-right">
				<div id="middle-right-kuang" style="height:300px;">
					<form action="ww_addjuankuan.action?id=${id }" method="post">
						<div id="middle-right-shou">收款方：第七小组公益基金会</div>
						<div id="middle-right-money">
							捐款金额：<input type="text" name="money" id="btn">元<br>
							<br><br><br><br>	
							<!-- <input type="button" value="提交">  -->
							<input type="submit" class="btn btn-warning" id="money1" value="捐款"/>
						</div>
					</form>
				</div>
			</div>
		</div>
		</s:forEach>
		</div>
		<hr>
		<div id="bottom-di">第七小组版权所有</div>
	</div>
	
	<!--//引用idcode插件-->
	
	<script>
		
		$("#money1").click(function(){
			
			var money=document.getElementById("btn").value;
			if(money<=0){
				alert("捐款金额不能小于0元")
				return false;
			}else{
				alert("捐赠爱心成功！！！")
				return true;
			}
		}); 
		/* $("#money").click(function(){
			alert("1");
		});
		$(".btn").blur(function(){
			alert("sdf");
		}); */
		
		
	</script>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster 2，加载jquery 库-->
	<!-- <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script> -->
	 <!--3加载bootstarp核心-->
	<!--<script
		src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	IE10 viewport hack for Surface/desktop Windows 8 bug
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script> -->
</body>
</html>
