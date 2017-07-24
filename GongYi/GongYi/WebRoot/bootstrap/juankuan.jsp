<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


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
<link rel="icon" href="../../favicon.ico">

<title>My JSP 'juankuan.jsp' starting page</title>

<!-- Bootstrap core CSS 1,加载层叠样式表-->
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../../assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="starter-template.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../../assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
#body {
	width: auto;
	height: 100px;
}

#logo {
	width: 1300px;
	height: 100px;
	padding-left: 100px;
	padding-top: 3px;
}

#title {
	padding-left: 600px;
}

#daohang {
	padding-left: 100px;
	background-color: #33FF99;
	width: 1300px;
	height: 50px;
}

#content {
	width: 1300px;
	height: 300px;
}

.tuijian {
	width: 1300px;
	height: 50px;
	padding-left: 100px;
}

.tuijian1 {
	font-size: 30px;
	color: #33FF66
}

#jukuan {
	width: 1300px;
	height: 300px;
}

#left {
	padding-left: 100px;
	float:left;
}

.sp {
	color: #00FF00;
	font-size: 15px;
}

.money {
	color: #FFCC33
}
#map{padding-left:660px;}
#pin{width:1300px;height:280px;}
#jidan{padding-left:100px;}
#er{padding-left:450px;margin-top:-278px;}
#san{padding-left:800px;margin-top:-275px;}
#xue{width:1300px;height:280px;}
#fan{padding-left:100px;}
#zhuo{padding-left:450px;margin-top:-273px;}
#gu{padding-left:800px;margin-top:-275px;}
#daohang2{width:100%;background:#FA96BB;margin:0 auto;}
</style>
</head>

<body>
	<div id="body">
		<!-- logo图片 -->
		<div id="logo">
			<img src="images/logo.png" width='60' px;height='50px';><img
				src="images/dh1.PNG"><span id="title">
					你好!<a>${name}</a><a href="gerenzhongxin.jsp">个人中心</a><a href="Home.jsp">退出</a>
			</span>
		</div>
		<!-- 导航 -->
		
		<div id="daohang2">
	  <div class="container-fluid" id="container">
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		  <ul class="nav navbar-nav">
			<li class="color"><a href="Zhuye.jsp">首页 <span class="sr-only">(current)</span></a></li>
			
			<li class="color"><a href="fy_fenye.action"><span class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;公益项目</a></li>
			<li class="color"><a href="#"><span class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;信息公开</a></li>
			
			<!-- <li class="color"><a href="juankuan.jsp"><span class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;我要募捐</a></li> -->
			<li class="dropdown">
			  <a href="faqixiangmu.jsp" class="dropdown-toggle"  id="color"><span class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;发起项目</span></a> 
			</li>
				
		</div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	 </div>
		
		<div id="content">
			<img src="images/aa.jpg" width="1300px;" height="300px;">
		</div>
		<div class="tuijian">
			<span class="tuijian1">|&nbsp;本周推荐</span>
		</div>
		<!--捐款项目列表  -->
		<div id="jukuan">
			<div id="left">
				<img src="images/500.jpg" width="500px" height="200px">
				<div>
					<span class="sp">长期项目></span>&nbsp;乡村支教美丽中国
				</div>
				<div>
					已筹：<span class="money">358215.122</span>元
				</div>
				<div>捐款人数：152681人</div>
				<div>
					<div class="btn-group">

						<a href="mujuan.jsp"><button class="btn btn-warning">我要捐款</button>
						</a>

					</div>
				</div>
			</div>
			<div id="map">
				<img src="images/heihai.jpg"width="500px"height="200px">
				<div>
					<span class="sp">长期项目></span>&nbsp;先天性心脏病儿童救助
				</div>
				<div>
					已筹：<span class="money">358211.122</span>元
				</div>
				<div>捐款人数：111205人</div>
				<div>
					<div class="btn-group">

						<a href="mujuan.jsp"><button class="btn btn-warning">我要捐款</button>
						</a>
					</div>
				</div>
			</div>
			<!--  扶贫-->
			<div class="tuijian">	<span class="tuijian1">|&nbsp;扶贫、救灾</span></div>
			
			<div id="pin">
			<!--  第一章图-->
				<div id="jidan"><img src="images/jidan.jpg"width="280px"height="180px">
					<div>一个鸡蛋的力量</div>
					<div>
					已筹：<span class="money">95896.122</span>元
				</div>
				<div>捐款人数：18562人</div>
				<div>
					<div class="btn-group">

						<a href="mujuan.jsp"><button class="btn btn-warning">我要捐款</button>
						</a>

					</div>
				</div>
			</div>
				</div>
				<!-- 第二张图 -->
				<div id="er"><img src="images/jia.jpg"width="280px"height="180px">
					<div>家庭箱筹备计划</div>
					<div>
					已筹：<span class="money">150258.32</span>元
				</div>
				<div>捐款人数：80152人</div>
				<div>
					<div class="btn-group">

						<a href="mujuan.jsp"><button class="btn btn-warning">我要捐款</button>
						</a>

					</div>
				</div>
				</div>
				<!-- 第三张图 -->
				<div id="san">
					<img src="images/shu.jpg"width="280px"height="180px">
					<div>十元种下希望树</div>
					<div>
					已筹：<span class="money">180256.65</span>元
				</div>
				<div>捐款人数：100152人</div>
				<div>
					<div class="btn-group">

						<a href="mujuan.jsp"><button class="btn btn-warning">我要捐款</button>
						</a>

					</div>
				</div>
				</div>
				<!--  扶贫-->
			<div class="tuijian">	<span class="tuijian1">|&nbsp;求学</span></div>
			<div id="xue">
			
			<div id="fan"><img src="images/fan.jpg"width="280px"height="180px">
			<div>免费午餐</div>
			<div>
					已筹：<span class="money">120353.65</span>元
				</div>
				<div>捐款人数：11000人</div>
				<div>
					<div class="btn-group">

						<a href="mujuan.jsp"><button class="btn btn-warning">我要捐款</button>
						</a>

					</div>
				</div>
			</div>
			
			<div id="zhuo"><img src="images/zhuo.jpg"width="280px"height="180px">
			<div>免费午餐</div>
			<div>
					已筹：<span class="money">120353.65</span>元
				</div>
				<div>捐款人数：11000人</div>
				<div>
					<div class="btn-group">

						<a href="mujuan.jsp"><button class="btn btn-warning">我要捐款</button>
						</a>

					</div>
				</div>
			</div>
			<div id="gu"><img src="images/gu.jpg"width="280px"height="180px">
			<div>爱助事实孤儿</div>
			<div>
					已筹：<span class="money">130000.65</span>元
				</div>
				<div>捐款人数：98523人</div>
				<div>
					<div class="btn-group">

						<a href="mujuan.jsp"><button class="btn btn-warning">我要捐款</button>
						</a>

					</div>
				</div>
			</div>
			
			</div>
			</div>
	</div>
</body>
</html>
