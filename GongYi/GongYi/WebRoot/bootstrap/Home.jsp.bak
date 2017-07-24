<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="Stylesheet" type="text/css" href="style/loginDialog.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<link rel="Stylesheet" type="text/css" href="style/loginDialog.css" />

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
	width: 100%;
	background: #FA96BB;
	margin: 0 auto;
}

.right_jk {
	float: left;
	margin-left: 50px;
	margin-top: 80px;
}

.right_my {
	float: left;
	margin-left: 100px;
	margin-top: -10px;
}

.right_person {
	float: left;
	margin-left: 50px;
	margin-top: -10px;
}

.right_num {
	float: left;
	margin-left: 100px;
	margin-top: -10px;
}

.border {
	width: 55px;
	height: 300px;
	float: left;
	border-right: 1px solid #C0C0C0;
}

.border2 {
	width: 96%;
	height: 30px;
	margin-left: 2%;
	float: left;
	border-bottom: 1px solid #C0C0C0;
}

.border3 {
	width: 28px;
	height: 1100px;
	float: left;
	margin-top: 30px;
	border-right: 1px solid #C0C0C0;
}

/* tab图片轮播 */
#image {
	width: 100%;
	margin-top: 10px;
}

#image_left {
	float: left;
}

#image_right {
	float: right;
	width: 330px;
	height: 300px;
	background-color: yellow;
	background: url(images/b-1.jpg) no-repeat;
}

/* 中间内容 */
#left_button {
	width: 62%;
	height: 1200px;
	margin-top: 10px;
	float: left;
}

#right_button {
	width: 330px;
	height: 800px; /* background-color:#FF7F00; */
	float: right;
	margin-top: 30px;
}

/* 中间左边 */
#news1 {
	width: 100%;
	height: auto;
	float: left;
	margin: 15px 15px 15px 0px;
}

#news2 {
	width: 100%;
	height: auto;
	float: left;
	margin: 0px 15px 15px 0px;
}

#news3 {
	width: 100%;
	height: auto;
	float: left;
	margin: 0px 15px 15px 0px;
}

#news4 {
	width: 100%;
	height: auto;
	float: left;
	margin: 0px 15px 15px 0px;
}

#news5 {
	width: 100%;
	height: auto;
	float: left;
	margin: 0px 15px 15px 0px;
}

.new a {
	font-size: 20px;
}

.new_image {
	width: auto;
	height: 180px;
	float: left;
}

.new_text {
	width: 60%;
	float: right;
	margin-top: 30px;
}

/* 中间右边 */
.right_recom {
	width: 85%;
	height: auto;
	border-bottom: 1px solid #99CC32;
}

.right_recom_text {
	font-size: 25px;
	color: #99CC32;
}

.content_images {
	float: left;
	margin-top: 20px;
}

.content_title {
	float: left;
	width: 50%;
	margin-top: 10px;
	margin-left: 10px;
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

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>

<body id="body">
	<div id="body1">
		<div id="daohang1">
			<div id="daohang1_1">
				<img src="images/logo.png" width='60px' height='50px'><img
					src="images/dh1.PNG">
			</div>

			<div id="daohang1_2">

				你好，欢迎参与益家人
				<%-- <div class="login"><a href="demo.html" id="example">登录</a></div>
				
					<div class="login">${name}</div> --%>
				<a href="#" id="exampl">登录</a> <a href="zhuce.jsp">注册</a>

			</div>

			<!-- 登录弹出框  -->
			<form action="us_ringName.action" method="post">
				<div id="LoginBox" style="height:300px">
					<div class="row1">
						欢迎加入益家人<a href="javascript:void(0)" title="关闭窗口" class="close_btn"
							id="closeBtn">×</a>
					</div>
					<div class="row">
						用户名: <span class="inputBox"> <input type="text"
							id="txtName" placeholder="账号" name="name" /> </span><a
							href="javascript:void(0)" title="提示" class="warning" id="warn">*</a>
					</div>
					<div class="row">
						密&nbsp;码: <span class="inputBox"> <input type="password"
							id="txtPwd" placeholder="密码" name="pass" /> </span><a
							href="javascript:void(0)" title="提示" class="warning" id="warn2">*</a>
					</div>
					<div class="row">
						<input type="submit" style="height:60px;line-height:60px;"
							value="登录" id="sub">
					</div>
				</div>
			</form>
			<script type="text/javascript">
				$(function($) {
					//弹出登录
					$("#exampl").hover(function() {
						$(this).stop().animate({
							opacity : '1'
						}, 600);
					}, function() {
						$(this).stop().animate({
							opacity : '0.6'
						}, 1000);
					}).on('click', function() {
						$("body").append("<div id='mask'></div>");
						$("#mask").addClass("mask").fadeIn("slow");
						$("#LoginBox").fadeIn("slow");
					});
					//
					//按钮的透明度
					$("#loginbtn").hover(function() {
						$(this).stop().animate({
							opacity : '1'
						}, 600);
					}, function() {
						$(this).stop().animate({
							opacity : '0.8'
						}, 1000);
					});
					//文本框不允许为空---按钮触发
					$("#loginbtn").on(
							'click',
							function() {
								var txtName = $("#txtName").val();
								var txtPwd = $("#txtPwd").val();
								if (txtName == "" || txtName == undefined
										|| txtName == null) {
									if (txtPwd == "" || txtPwd == undefined
											|| txtPwd == null) {
										$(".warning").css({
											display : 'block'
										});
									} else {
										$("#warn").css({
											display : 'block'
										});
										$("#warn2").css({
											display : 'none'
										});
									}
								} else {
									if (txtPwd == "" || txtPwd == undefined
											|| txtPwd == null) {
										$("#warn").css({
											display : 'none'
										});
										$(".warn2").css({
											display : 'block'
										});
									} else {
										$(".warning").css({
											display : 'none'
										});
									}
								}
							});
					//文本框不允许为空---单个文本触发
					$("#txtName").on(
							'blur',
							function() {
								var txtName = $("#txtName").val();
								if (txtName == "" || txtName == undefined
										|| txtName == null) {
									$("#warn").css({
										display : 'block'
									});
								} else {
									$("#warn").css({
										display : 'none'
									});
								}
							});
					$("#txtName").on('focus', function() {
						$("#warn").css({
							display : 'none'
						});
					});
					//
					$("#txtPwd").on(
							'blur',
							function() {
								var txtName = $("#txtPwd").val();
								if (txtName == "" || txtName == undefined
										|| txtName == null) {
									$("#warn2").css({
										display : 'block'
									});
								} else {
									$("#warn2").css({
										display : 'none'
									});
								}
							});
					$("#txtPwd").on('focus', function() {
						$("#warn2").css({
							display : 'none'
						});
					});
					//关闭
					$(".close_btn").hover(function() {
						$(this).css({
							color : 'black'
						})
					}, function() {
						$(this).css({
							color : '#999'
						})
					}).on('click', function() {
						$("#LoginBox").fadeOut("fast");
						$("#mask").css({
							display : 'none'
						});
					});
				});
			</script>

		</div>
		<nav class="navbar navbar-default"> <!-- 导航条 -->
		<div id="aaa">
			<div id="daohang2">
				<div class="container-fluid" id="container">
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="color"><a href="Home.jsp">首页 <span
									class="sr-only">(current)</span> </a>
							</li>

							<li class="color"><a href="fy_fenye.action"><span
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

				<div id="count_left">

					<!-- 滚动图片 -->
					<div id="left_top">
						<div id="image">
							<div id="image_left">
								<!-- <img alt="" src="images/tab2.jpg"> -->
								<div id="carousel-example-generic" class="carousel slide"
									data-ride="carousel">
									<!-- Indicators -->
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0"
											class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1"></li>
										<li data-target="#carousel-example-generic" data-slide-to="2"></li>
									</ol>

									<!-- Wrapper for slides -->
									<div class="carousel-inner" role="listbox">
										<div class="item active">
											<img src="images/tab1.jpg" alt="...">
											<div class="carousel-caption">...</div>
										</div>
										<div class="item">
											<img src="images/tab2.jpg" alt="...">
											<div class="carousel-caption">...</div>
										</div>
										<div class="item">
											<img src="images/tab3.jpg" alt="...">
											<div class="carousel-caption">...</div>
										</div>
									</div>

									<!-- Controls -->
									<a class="left carousel-control"
										href="#carousel-example-generic" role="button"
										data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span> </a> <a
										class="right carousel-control"
										href="#carousel-example-generic" role="button"
										data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span> </a>
								</div>
							</div>
							<div class="border"></div>
							<div id="image_right">
								<div class="right_jk">
									<h3>捐款总额：</h3>
								</div>
								<div class="right_my">
									<h3>2,017,622&nbsp;&nbsp;&nbsp;元</h3>
								</div>
								<div class="right_person">
									<h3>爱心人次：</h3>
								</div>
								<div class="right_num">
									<h3>17,622&nbsp;&nbsp;&nbsp;人</h3>
								</div>
							</div>
						</div>
					</div>

					<div class="border2"></div>
					<!-- 左下部分 -->
					<div id="left_button">

						<div id="news1" class="new">
							<div>
								<a href="#">大学生毕业生“无人值守” 卖花125盆 两天没丢一盆</a>
							</div>
							<br>
							<div class="new_image">
								<a href=""><img alt="" src="images/news1.jpg"> </a>
							</div>
							<div class="new_text">
								<div>两天时间里，在无人值守的情况下，大学生杨丰瑞成功卖出了125盆花。</div>
								<br>
								<div>
									<%
										out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss")
												.format(new Date()));
									%>
									更新 标签：<a>微商</a>
								</div>
								<br> <br>
							</div>
						</div>

						<div id="news2" class="new">
							<div>
								<a href="#">大学生毕业生“无人值守” 卖花125盆 两天没丢一盆</a>
							</div>
							<br>
							<div class="new_image">
								<a href=""><img alt="" src="images/news1.jpg"> </a>
							</div>
							<div class="new_text">
								<div>两天时间里，在无人值守的情况下，大学生杨丰瑞成功卖出了125盆花。</div>
								<br>
								<div>
									2017-05-08 10:42:20更新 标签：<a>微商</a>
								</div>
								<br> <br>
							</div>
						</div>

						<div id="news3" class="new">
							<div>
								<a href="#">大学生毕业生“无人值守” 卖花125盆 两天没丢一盆</a>
							</div>
							<br>
							<div class="new_image">
								<a href=""><img alt="" src="images/news1.jpg"> </a>
							</div>
							<div class="new_text">
								<div>两天时间里，在无人值守的情况下，大学生杨丰瑞成功卖出了125盆花。</div>
								<br>
								<div>
									2017-05-08 10:42:20更新 标签：<a>微商</a>
								</div>
								<br> <br>
							</div>
						</div>

						<div id="news4" class="new">
							<div>
								<a href="#">大学生毕业生“无人值守” 卖花125盆 两天没丢一盆</a>
							</div>
							<br>
							<div class="new_image">
								<a href=""><img alt="" src="images/news1.jpg"> </a>
							</div>
							<div class="new_text">
								<div>两天时间里，在无人值守的情况下，大学生杨丰瑞成功卖出了125盆花。</div>
								<br>
								<div>
									2017-05-08 10:42:20更新 标签：<a>微商</a>
								</div>
								<br> <br>
							</div>
						</div>

						<div id="news5" class="new">
							<div>
								<a href="#">大学生毕业生“无人值守” 卖花125盆 两天没丢一盆</a>
							</div>
							<br>
							<div class="new_image">
								<a href=""><img alt="" src="images/news1.jpg"> </a>
							</div>
							<div class="new_text">
								<div>两天时间里，在无人值守的情况下，大学生杨丰瑞成功卖出了125盆花。</div>
								<br>
								<div>
									2017-05-08 10:42:20更新 标签：<a>微商</a>
								</div>
								<br> <br>
							</div>
						</div>
					</div>
					<!-- 结束 -->

					<div class="border3"></div>

					<!-- 中间右边部分 -->
					<div id="right_button">
						<h3>
							<a class="btn btn-primary btn-lg" href="l_select.action"
								role="button">我要捐款</a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
								class="btn btn-primary btn-lg" href="faqixiangmu.jsp"
								role="button">发起项目</a>
						</h3>
						<br>
						<div class="right_recom">
							<span class="right_recom_text">项目推荐</span>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="gongyixiangmu.jsp">更多</a>
						</div>

						<div class="right_content">
							<div class="content_images">
								<a href="#"> <img src="images\heihai.jpg" width="130px"
									height="120px" /> </a>
							</div>
							<div class="content_title">
								<h4>
									<a href="#">先心儿童的“心”生</a>
								</h4>
								<span>夏洲在爱佑童心项目资助下，接受手术并顺利出院。</span> <br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#">
									<button type="button" class="btn btn-warning">详情</button> </a>
							</div>
						</div>

						<div class="right_content">
							<div class="content_images">
								<a href="#"> <img src="images\500.jpg" width="130px"
									height="120px" /> </a>
							</div>
							<div class="content_title">
								<h4>
									<a href="#">先心儿童的“心”生</a>
								</h4>
								<span>夏洲在爱佑童心项目资助下，接受手术并顺利出院。</span> <br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#">
									<button type="button" class="btn btn-warning">详情</button> </a>
							</div>
						</div>

						<div class="right_content">
							<div class="content_images">
								<a href="#"> <img src="images\fan.jpg" width="130px"
									height="120px" /> </a>
							</div>
							<div class="content_title">
								<h4>
									<a href="#">免费午餐小善大爱</a>
								</h4>
								<span>免费午餐，帮助孩子们免于饥饿，健康成长。</span> <br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="#">
									<button type="button" class="btn btn-warning">详情</button> </a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div>
				<!-- 分页 -->
				<div id="fenye">
					<nav aria-label="Page navigation">
					<ul class="pagination">
						<li><a href="#" aria-label="Previous"> <span
								aria-hidden="true">&laquo;</span> </a></li>
						<li><a href="#">1</a>
						</li>
						<li><a href="#" aria-label="Next"> <span
								aria-hidden="true">&raquo;</span> </a></li>
					</ul>
					</nav>
				</div>
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
			</div>
		</div>
		
	<script type="text/javascript">
	$("#sub").click(function() {
		var name = document.getElementById("txtName").value;

		if (name =="") {

			alert("请注册登录后进行操作！！")
			return false;
		}return true;
	})
</script>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> <script
			src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script> <!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
	</div>
</body>
<script type="text/javascript">
	$("#aaa").click(function() {
		var username = document.getElementById("txtName").value;

		if (username =="") {

			alert("请注册登录后进行操作！！")
			return false;
		}return true;
	})
</script>
<script type="text/javascript">
	/* $("#sub").click(function() {
	alert("12345")
		var username = document.getElementById("txtName").value;
		alert(username);
		if (username=="")) {
			alert("账号不能为空")
			return false;
		}return true;
	})   */
</script>
</html>
