<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/province.js"></script>
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
	margin-top: 10px;
}

.main {
	width: 100%;
	height: 850px;
	margin-top: 50px;
}

#main_1 {
	width: 1050px;
	margin-left: 200px;
}

.form_top {
	font-size: 30px;
}

.form_group_row {
	width: 70%;
	margin-top: 20px;
	float: left;
}

.form_side {
	width: 420px;
	float: left;
	font-size: 20px;
	margin-left: 20px;
}

#form_side {
	width: 100px;
	float: left;
	font-size: 20px;
	margin-left: 20px;
}

.form_main {
	width: auto;
	float: left;
	margin-left: 20px;
}

input[type="text"] {
	width: 300px;
	height: 30px;
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
	width: 100%;
	text-align: center
}

#ziti {
	width: 50%;
	float: left;
	margin-left: 20px;
	font-size: 20px;
	margin-top: 20px;
}

#yanzheng {
	width: 60%;
	float: left;
	margin-left: 145px;
	margin-top: 20px;
}

.from_submit {
	width: 60%;
	float: left;
	margin-left: 230px;
	margin-top: 120px;
}

.button {
	font-size: 18px;
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
</style>
<style>
* {
	margin: 0;
	padding: 0;
	list-style-type: none;
}

a,img {
	border: 0;
}

.row .container1 ul {
	list-style-type: none;
	padding: 0px;
	margin: 0px;
}
/* 省 */
.row .right-body .province {
	width: 90px;
	height: 23px;
	margin-top: 6px;
	border: 1px solid #e2e2e2;
	font-size: 14px;
	float: left;
	line-height: 22px;
	margin-left: 26px;
	color: #a2a2a2;
}

.row .right-body .province .provincexs {
	float: left;
	padding-left: 10px;
}

.row .right-body .province .dianprovince {
	width: 22px;
	height: 22px;
	display: block;
	float: right;
	background: url(images/V.png) 0 0 no-repeat;
	cursor: pointer;
}

.row .right-body .province .quanprovince {
	width: 90px;
	height: 100px;
	overflow-y: scroll;
	overflow-x: hidden;
	display: none;
	margin-left: -1px;
	border: 1px solid #e2e2e2;
	border-top: none;
	border-right: none;
	background-color: #FFF;
}

.row .right-body .province ul {
	width: 70px;
}

.row .right-body .province li:hover {
	background-color: #f1f1f1;
}
/* 市 */
.row .right-body .city {
	width: 90px;
	height: 23px;
	margin-top: 6px;
	border: 1px solid #e2e2e2;
	font-size: 14px;
	float: left;
	line-height: 22px;
	margin-left: 10px;
	color: #a2a2a2;
}

.row .right-body .city .cityxs {
	float: left;
	padding-left: 10px;
}

.row .right-body .city .diancity {
	width: 22px;
	height: 22px;
	display: block;
	float: right;
	background: url(images/V.png) 0 0 no-repeat;
	cursor: pointer;
}

.row .right-body .city .quancity {
	width: 90px;
	height: 100px;
	overflow-y: scroll;
	overflow-x: hidden;
	display: none;
	margin-left: -1px;
	border: 1px solid #e2e2e2;
	border-top: none;
	border-right: none;
	background-color: #FFF;
}

.row .right-body .city ul {
	width: 70px;
}

.row .right-body .city li:hover {
	background-color: #f1f1f1;
}
/* 区 */
.row .right-body .area {
	width: 90px;
	height: 23px;
	margin-top: 6px;
	border: 1px solid #e2e2e2;
	font-size: 14px;
	float: left;
	line-height: 22px;
	margin-left: 10px;
	color: #a2a2a2;
}

.row .right-body .area .areaxs {
	float: left;
	padding-left: 10px;
}

.row .right-body .area .dianarea {
	width: 22px;
	height: 22px;
	display: block;
	float: right;
	background: url(images/V.png) 0 0 no-repeat;
	cursor: pointer;
}

.row .right-body .area .quanarea {
	width: 90px;
	height: 100px;
	overflow-y: scroll;
	overflow-x: hidden;
	display: none;
	margin-left: -1px;
	border: 1px solid #e2e2e2;
	border-top: none;
	border-right: none;
	background-color: #FFF;
}

.row .right-body .area .mousemove {
	display: none;
}

.row .right-body .area ul {
	width: 70px;
}

.row .right-body .area li:hover {
	background-color: #f1f1f1;
}
</style>

<script>
	$(function() {

		$("body").click(function() {//点击空白处隐藏，使用e.stopPropagation()阻止事件冒泡
			$(".quanprovince").hide();
			$(".quancity").hide();
			$(".quanarea").hide();
		});
		//下拉列表获取地址
		var strSHENG = document.querySelector('.ulprovince').outerHTML; //获取class为ulprovince的outerHTML
		var strSHI = document.querySelector('.ulcity').outerHTML; //获取class为ulcity的outerHTML
		var strQU = document.querySelector('.ularea').outerHTML; //获取class为ulcity的outerHTML
		//从js库里得到所有的数据
		var sfgsmr = provinceList;
		var sfxz = 0;
		var csxz = 0;
		var qyxz = 0;
		/*省*/
		document.querySelector('.dianprovince').onclick = function(e) {
			document.querySelector('.quanprovince').style.display = "block";//下拉窗口显示
			e.stopPropagation();
			var str = strSHENG.substring(0, strSHENG.length - 5); //获取strSHENG的第0-第3个字节
			for ( var i = 0; i < sfgsmr.length; i++) // 
			{
				str += "<li value='" + sfgsmr[i].name + "' style='padding-left:10px;'> "
						+ sfgsmr[i].name + "</li>"; //创建li标签 把i值放进去
			}
			document.querySelector('.ulprovince').outerHTML = str + "</ul>"; //把li放进class为ulyear中
			var lis = document.querySelector('.ulprovince')
					.getElementsByTagName('li'); //获取这里边的li标签
			for ( var i = 0; i < lis.length; i++) {
				lis[i].onclick = function() {
					for ( var ii = 0; ii < lis.length; ii++) {
						if (this == lis[ii]) {
							document.querySelector('.provincexs').innerHTML = lis[ii].innerHTML; //li的内容赋给document.querySelector('.xs')
							var sheng = lis[ii].getAttribute('value'); //获取点击的li的value属性值
							document.querySelector('.provincexs').setAttribute(
									"value", sheng); //设置document.querySelector('.xs')的value属性值yearvalue
							document.querySelector('.quanprovince').style.display = "none"; //窗口消失
							var shi = provinceList[ii].cityList[0].name;
							document.querySelector('.cityxs').innerHTML = shi;
							var qu = provinceList[ii].cityList[0].areaList[0];
							document.querySelector('.areaxs').innerHTML = qu;
							return sfxz = sheng;//把选中的li的传参给省
						}
					}
				}
			}
		}

		/*市*/
		var shiXb = 0;
		document.querySelector('.diancity').onclick = function(e) {
			document.querySelector('.quancity').style.display = "block";//下拉窗口显示
			e.stopPropagation();
			for ( var i = 0; i < sfgsmr.length; i++) {
				if (provinceList[i].name == sfxz) {
					shiXb = i;
					var str = strSHI.substring(0, strSHI.length - 5);
					for ( var j = 0; j < provinceList[i].cityList.length; j++) {
						str += "<li value='" + provinceList[i].cityList[j].name + "' style='padding-left:10px;'> "
								+ provinceList[i].cityList[j].name + "</li>";
					}
					document.querySelector('.ulcity').outerHTML = str + "</ul>";
					var lis = document.querySelector('.ulcity')
							.getElementsByTagName('li');
					for ( var ii = 0; ii < lis.length; ii++) {
						lis[ii].onclick = function() {
							for ( var jj = 0; jj < lis.length; jj++) {
								if (this == lis[jj]) {
									document.querySelector('.cityxs').innerHTML = lis[jj].innerHTML;
									var shi = lis[jj].getAttribute('value');
									document.querySelector('.cityxs')
											.setAttribute("value", shi);
									document.querySelector('.quancity').style.display = "none";
									var qu = provinceList[shiXb].cityList[jj].areaList[0];
									document.querySelector('.areaxs').innerHTML = qu;
									return csxz = shi;//把选中的li的传参给市
								}
							}
						}
					}
				}
			}
		}
		/*区*/
		document.querySelector('.dianarea').onclick = function(e) {
			document.querySelector('.quanarea').style.display = "block";//下拉窗口显示
			e.stopPropagation();
			for ( var i = 0; i < sfgsmr.length; i++) {
				if (provinceList[i].name == sfxz) {
					for ( var j = 0; j < provinceList[i].cityList.length; j++) {
						if (provinceList[i].cityList[j].name == csxz) {
							var str = strQU.substring(0, strQU.length - 5);
							for ( var k = 0; k < provinceList[i].cityList[j].areaList.length; k++) {
								str += "<li value='" + provinceList[i].cityList[j].areaList[k]+ "' style='padding-left:10px;'> "
										+ provinceList[i].cityList[j].areaList[k]
										+ "</li>";
							}
							document.querySelector('.ularea').outerHTML = str
									+ "</ul>";
							var lis = document.querySelector('.ularea')
									.getElementsByTagName('li');
							for ( var ii = 0; ii < lis.length; ii++) {
								lis[ii].onclick = function() {
									for ( var jj = 0; jj < lis.length; jj++) {
										if (this == lis[jj]) {
											document.querySelector('.areaxs').innerHTML = lis[jj].innerHTML;
											document.querySelector('.quancity').style.display = "none";
											return qyxz = qu;//把选中的li的传参给区
										}
									}
								}
							}
						}
					}
				}
			}
		}
	})
</script>
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

<script type="text/javascript">
  /* 
  	
		//用户名
		/* function  focusUrsename(){
			var name=document.getElementById("ursename");
			var span1=document.getElementById("span1");
			span1.innerHTML="设置后不可更改"	;
			span1.style.color="#9999CC";
		}
		function blurUrsename(){
			var name=document.getElementById("ursename").value;
			var name1=document.getElementById("ursename");
			var span1=document.getElementById("span1");
			var reg=/^[a-zA-Z0-9]{3,17}$/;
			if(!reg.test(name)){
				span1.innerHTML="格式错误！";
				span1.style.color="red";
				name1.style.border="1px dashed red";
				return false;
			}
			else{
				span1.style.display="none";
				name1.style.border="1px solid #A8A8A8";
				return true;
			}
		}
		 */
		//真实姓名
		 function focusName(){
			var name=document.getElementById("name");
			var span2=document.getElementById("span2");
			span2.innerHTML="请填写真实姓名！"	;
			span2.style.color="#9999CC";
		} 
		function blurName(){
			var name=document.getElementById("name").value;
			var name1=document.getElementById("name");
			var span2=document.getElementById("span2");
			var reg=/^[a-zA-Z0-9]{3,17}$/;
			if(!reg.test(name)){
				span2.innerHTML="格式错误！";
				span2.style.color="red";
				name1.style.border="1px dashed red";
				return false;
			}
			else{
				span2.style.display="none";
				name1.style.border="1px solid #A8A8A8";
				return true;
			}
		}
		
		//身份证号
		function focusNumber(){
			var number=document.getElementById("number");
			var span3=document.getElementById("span3");
			span3.innerHTML="请填写真实的身份号！"	;
			span3.style.color="#9999CC";
		}
		function blurNumber(){
			var number=document.getElementById("number").value;
			var number1=document.getElementById("number");
			var span3=document.getElementById("span3");
			var reg=/^[1-9]{18}\d/;
			if(!reg.test(number)){
				span3.innerHTML="格式错误！";
				span3.style.color="red";
				number1.style.border="1px dashed red";
				return false;
			}
			else{
				span3.style.display="none";
				number1.style.border="1px solid #A8A8A8";
				return true;
			}
		}
		
		
		//银行卡号
		function focusCard(){
			var crad=document.getElementById("crad");
			var span4=document.getElementById("span4");
			span4.innerHTML="请填写真实的银行卡号！"	;
			span4.style.color="#9999CC";
		}
		function blurCard(){
			var card=document.getElementById("card").value;
			var card1=document.getElementById("card");
			var span4=document.getElementById("span4");
			var reg=/^[1-9][0-9]{19}$/;
			if(!reg.test(card)){
				span4.innerHTML="格式错误！";
				span4.style.color="red";
				card1.style.border="1px dashed red";
				return false;
			}
			else{
				span4.style.display="none";
				card1.style.border="1px solid #A8A8A8";
				return true;
			}
		}
		
		
		// 手机号
		function  focusPhone(){
			var photn=document.getElementById("phone");
			photn.style.border="1px solid red";
			var span5=document.getElementById("span5");
			span5.innerHTML="*请输入手机号"	;
			span5.style.color="#9999CC";
		}
		function blurPhone(){
			var photn=document.getElementById("phone").value;
			var photn1=document.getElementById("phone");
			var span5=document.getElementById("span5");
			var reg=/^1[3-8][0-9]{9}$/;
			if(!reg.test(photn)){
				span5.innerHTML="格式错误！";
				span5.style.color="red";
				photn1.style.border="1px dashed red";
				return false;
			}
			else{
				span5.style.display="none";
				photn1.style.border="1px solid #A8A8A8";
				return true;
			}
		}
		
		

		
		
		//验证
		function checkForm(){
			if(blurUrsename()&&blurName()&&blurNumber()&&blurCard()&&blurPhone) {
				return true;
			}
			return false;
		}
	
  	 */
  
  </script>


</head>

<body>
	<div id="body1">
		<div id="daohang1">
			<div id="daohang1_1">
				<img src="images/logo.png" width='60px' height='50px'><img
					src="images/dh1.PNG">
			</div>
			<div id="daohang1_2">
				你好!&nbsp;<a>${name}</a><a href="gerenzhongxin.jsp">个人中心</a><a
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

						<li class="color"><a href="fy_fenye.action"><span
								class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;公益项目</a>
						</li>
						<li class="color"><a href="#"><span
								class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;信息公开</a>
						</li>

						<!-- <li class="color"><a href="juankuan.jsp"><span class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;我要募捐</a></li> -->
						<li class="dropdown"><a href="faqixiangmu.jsp"
							class="dropdown-toggle" id="color"><span
								class="glyphicon glyphicon-heart">&nbsp;&nbsp;发起项目</span> </a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</div>

		<form action="book_addYh.action" method="post"
			onsubmit="return checkForm()" name="authForm" id="authForm"
			target="upload_c_iframe">
			<div class="main">
				<div id="main_1">
					<p class="form_top">用户个人认证(以下信息均为必须填写)</p>
					<hr>
					<!-- <div class="form_group_row">
		 		<div class="form_side">用户名：</div>
		 		<div class="form_main">
		 			<input type="text" name="ursename" id="ursename" onfocus="focusUrsename()" onblur="blurUrsename()">
		 			&nbsp;&nbsp;&nbsp;<span id="span1"></span>
		 		</div>
		 	</div> -->
					<!-- <div class="form_group_row">
		 		<div class="form_side">真实姓名：</div>
		 		<div class="form_main">
		 			<input type="text" name="zhenname" id="name" onfocus="focusName()" onblur="blurName()">
		 			&nbsp;&nbsp;&nbsp;<span id="span2"></span>
		 		</div>
		 	</div>
	 		<div class="form_group_row">
		 		<div class="form_side">身份证号：</div>
		 		<div class="form_main">
		 			<input type="text" name="idcard" id="number" onfocus="focusNumber()" onblur="blurNumber()">
		 			&nbsp;&nbsp;&nbsp;<span id="span3"></span>
		 		</div>
		 	</div> -->
					<div class="form_group_row">
						<div id="form_side">工作单位：</div>
						<div class="form_main">
							<input type="text" name="gongzuo" id="word" onfocus="focusWork()"
								onblur="blurWork()">

						</div>
					</div>
					<!-- <div class="form_group_row">
		 		<div class="form_side">银行卡号：</div>
		 		<div class="form_main">
		 			<input type="text" name="card" id="card" onfocus="focusCard()" onblur="blurCard()">
		 			&nbsp;&nbsp;&nbsp;<span id="span4"></span>
		 		</div>
		 	</div> -->
					<!-- <div class="form_group_row">
		 		<div class="form_side">手机号码：</div>
		 		<div class="form_main">
		 			<input type="text" name="phone" id="phone" onfoucs="focusPhone()" onblur="blurPhone()">
		 			&nbsp;&nbsp;&nbsp;<span id="span5"></span>
		 		</div>
		 	</div> -->
					<div class="form_group_row">
						<div class="form_side_intro">个人简介：</div>
						<div class="form_intro">
							<textarea name="jieshao" id="textarea" cols="10" rows="4"
								class="form_textarea" onfocus="foucsTextarea()"
								onblur="blurTextarea()"></textarea>
							<div class="form-msg-wrap">
								<span class="form_msg">(请填写个人简介，以便于大家了解并支持你/你们的项目，不超过500个汉字)</span>
							</div>
						</div>
					</div>
					<div class="form_group_row">
						<div class="form_side">
							<div class="row" style="margin-left:0px;">
								<div class="container1 a">
									<div class="right">
										<div>
											<ul>
												<li class="right-body" id="updateinfo">

													<div class="right-info">
														<div style="float:left">所在地址&nbsp;：&nbsp;</div>
														<div class="province">
															<div>
																<input class="provincexs" placeholder="省" type="text"
																	name="diancity" style="width:66px;height:22px">
															</div>
															<!--把选的值放入这个div里-->
															<span class="dianprovince"></span>
															<!--下拉选项按钮-->
															<div class="quanprovince">
																<!--结果窗口-->
																<ul class="ulprovince"></ul>
															</div>
														</div>
														<div class="city">
															<div>
																<input class="cityxs" placeholder="市" type="text"
																	name="cityxs" style="width:66px;height:22px">
															</div>
															<!--把选的值放入这个div里-->
															<span class="diancity"></span>
															<!--下拉选项按钮-->
															<div class="quancity">
																<!--结果窗口-->
																<ul class="ulcity"></ul>
															</div>
														</div>
														<div class="area" style="display:none">
															<div>
																<input class="areaxs" placeholder="区/县" type="text"
																	name="areaxs" style="width:66px;height:22px">
															</div>
															<!--把选的值放入这个div里-->
															<span class="dianarea"></span>
															<!--下拉选项按钮-->
															<div class="quanarea">
																<!--结果窗口-->
																<ul class="ularea"></ul>
															</div>
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- <div class="form_main">
		 			<select class="province">
		 				<option>河南</option>
		 				<option>重庆</option>
		 				<option>四川</option>
		 			</select>省
		 		
		 			<select class="city">
		 				<option>新乡</option>
		 				<option>重庆</option>
		 				<option>四川</option>
		 			</select>市
		 		</div> -->
					</div>
					<!-- <div id="ziti">请输入下方的验证码:</div>
			<div id="yanzheng">
				<input type="text" id="Txtidcode" width="50px";class="txtVerification"><span
					id="idcode"></span> <input type="button" id="butn" value="验证">
			</div> -->
					<div class="from_submit" id="middle-right-bottom">
						<button class="btn btn-warning">
							<span class="button">提交认证</span>
						</button>
					</div>
				</div>

			</div>
		</form>
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
		</div>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> <script
			src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script> <!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
</body>
</html>
