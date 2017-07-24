<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>公益基金</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
* {
	margin: 0;
	padding: 0
}

#body1 {
	background: #FFE8FF;
	width: 80%;
	margin: 0 auto;
}

#daohang1 {
	width: 100%;
	height: 80px;
	line-height: 80px;
	text-align: center;
	background: white;
}

#daohang1_1 {
	width: auto;
	height: 80px;
	border: 1px;
	float: left;
	text-align: center
}

#daohang1_2 {
	width: 220px;
	height: 80px;
	float: right;
	margin-right: 20px;
}

#daohang1_2 b {
	font-size: 18px;
}

#daohang2 {
	width: 100%;;
	background: #FA96BB;
	margin: 0 auto;
}

h4 {
	text-align: center;
	margin-top: 100px;
}

#personage {
	margin: 100px 100px 100px 100px;
	float: left;
}

#many {
	margin: 100px 0px 100px 100px;
	float: left;
}

.province {
	width: 60px;
	height: 30px;
}

.city {
	width: 60px;
	height: 30px;
}

.form_side_intro {
	width: 100px;
	float: left;
	font-size: 20px;
	margin-left: 20px;
}

.form_textarea {
	width: 450px;
	height: 150px;
	float: left;
	margin-left: 20px;
}

.submit {
	width: 200px;
	height: 30px;
	font-size: 18px;
	float: left;
	margin-left: -450px;
	margin-top: 220px;
	background-color: pink;
}

.form-msg-wrap {
	float: left;
	margin-left: 135px;
}

#container {
	width: 1000px;
	text-align: center
}

#bs-example-navbar-collapse-1 {
	text-align: center
}

#last {
	width: 100%;
	height: 140px;
	border: 1px black;
	text-align: center;
	line-height: 20px;
	letter-spacing: 5px;
	margin: 0 auto;
	float: left;
}

#fenye {
	width: 100%;
	height: 55px;
	border: 1px;
	text-align: center;
	margin: 0 auto;
	float: left;
}
</style>
<style type="text/css">
#demo {
	overflow: hidden; /*溢出的部分不显示*/
	width: 300px;
	height: 190px; /*一定要确切，避免demo1与demo2之间的距离过大*/
	padding: 5px;
	background: #FFDDF4
}

#express {
	font-size: 14px;
	height: 20px;
	margin: 0px 5px;
	line-height: 180%; /*行与行之间的距离*/
	border-bottom: 1px dashed #ccc;
	cursor: pointer;
}

#ex1 {
	height: 25px;
	width: 110px;
	border: 1px;
	float: left;
}

#ex2 {
	height: 25px;
	width: 110px;
	border: 1px;
	float: left;
}

#ex3 {
	height: 25px;
	width: 45px;
	border: 1px;
	float: left;
}

#news {
	height: 300px;
	width: 300px;
	border: 1px;
	margin: 0 auto
}

#news_1 {
	height: 105px;
	width: 300px;
	border: 1px;
	background: #CECEFF;
	margin-bottom: 2px
}
</style>

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>

<body>
	<div id="body1">
		<div id="daohang1">
			<div id="daohang1_1">
				<img src="images/logo.png" width='60px' height='50px'><img
					src="images/dh1.PNG">
			</div>
			<div id="daohang1_2">
				你好!<a>${name}</a><a href="gerenzhongxin.jsp">个人中心</a><a
					href="Home.jsp">退出</a>

			</div>

		</div>
		<nav class="navbar navbar-default"> <!-- 导航条 -->
		<div id="daohang2">
			<div class="container-fluid" id="container">
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="color"><a href="Zhuye.jsp">首页 <span
								class="sr-only">(current)</span> </a>
						</li>

						<li class="color"><a href="l_select.action"><span
								class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;公益项目</a>
						</li>
						<li class="color"><a href="#"><span
								class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;信息公开</a>
						</li>

						<!-- <li class="color"><a href="juankuan.jsp"><span class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;我要募捐</a></li> -->
						<li class="dropdown"><a href="faqixiangmu.jsp"
							class="dropdown-toggle" id="color"><span
								class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;发起项目</span> </a></li>
								
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</div>

		<div id="count">
			<div>
				<a href="ww_queryrenzheng.action" id="countc">
					<button class="btn btn-default btn-xs text-secondary round">申请项目</button><a href="QYrenzheng.jsp"><span>${ss }</span></a>
				</a>
				<!-- <form action="../bootstrap/faqixiangmus.jsp" id="form1"
					style="display:none;">
					<input type="submit">
				</form> -->
			</div>
			<div>
				<a href="ww_querydonationrenzheng.action" id="countm">
					<button class="btn btn-default btn-xs text-secondary round">申请资金</button><a href="QYrenzheng.jsp"><span>${ss }</span></a>
				</a>
				<!-- <form action="../bootstrap/moneySQ.jsp" id="form2"
					style="display:none;">
					<input type="submit">
				</form> -->
			</div>
			<h4 style="color:red">* 你好！请选择适合您的身份，完成以下认证，以便快速发起项目。*</h4>
			<div id="personage">
				<a href="renzheng.jsp"><img alt="" src="images/FQ1.png"> </a>
			</div>

			<div id="many">
				<a href="QYrenzheng.jsp"><img alt="" src="images/FQ2.png">
				</a>
			</div>


		</div>


		<div>

			<div id="last">
				<br>
				<div>
					<a href="#" target="_blank" rel="nofollow">关于益家人</a> | <a href="#"
						target="_blank" rel="nofollow">服务协议</a> | <a href="隐私政策.html"
						target="_blank" rel="nofollow">隐私政策</a> | <a href="#"
						target="_blank" rel="nofollow">开放平台</a> | <a href="#"
						target="_blank" rel="nofollow">益家人公益</a> | <a href="#"
						target="_blank" rel="nofollow">举报中心</a> | <a href="#"
						target="_blank" rel="nofollow">网站导航</a>
				</div>
				<div>
					<br>Copyright ? 1998 - 2017 YiJiaRen Reserved
				</div>
				<div>
					<br>第七小组 版权所有
				</div>
			</div>
			<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
			<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
			<!-- Include all compiled plugins (below), or include individual files as needed -->
			<script src="js/bootstrap.min.js"></script>
		</div>
</body>
<!-- <script type="text/javascript">
	function show() {
		$("#form1").submit();
	}
	$("#countc").click(function() {
		$.ajax({
			url : "sq_query.action",
			type : "post",
			data : {"status" : status},
			success : function(data) {
				
				if (data != "审核通过" || data == null) {
					alert("请先认证信息或者耐心等待信息审核通过");
					
					return false;
				} else {
					show();
					return true;
				}
			}
		})
	})
	function sho() {
		$("#form2").submit();
	}
	$("#countm").click(function() {
		$.ajax({
			url : "sq_query.action",
			type : "post",
			data : {"status" : status},
			success : function(data) {
				
				if (data != "审核通过" || data == null) {
					alert("请先认证信息或者耐心等待认证审核通过");
					
					return false;
				} else {
					sho();
					return true;
				}
			}
		})
	})
</script> -->
</html>
