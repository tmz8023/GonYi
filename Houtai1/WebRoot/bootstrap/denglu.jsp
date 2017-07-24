<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>系统登录</title>

<style type="text/css">
html{overflow-y:scroll;vertical-align:baseline;}
body{font-family:Microsoft YaHei,Segoe UI,Tahoma,Arial,Verdana,sans-serif;font-size:12px;color:#fff;height:100%;line-height:1;background:#999}
*{margin:0;padding:0}
ul,li{list-style:none}
h1{font-size:30px;font-weight:700;text-shadow:0 1px 4px rgba(0,0,0,.2)}
.login-box{width:410px;margin:120px auto 0 auto;text-align:center;padding:30px;background:url(images/mask.png);border-radius:10px;}
.login-box .name,.login-box .password,.login-box .code,.login-box .remember{font-size:16px;text-shadow:0 1px 2px rgba(0,0,0,.1)}
.login-box .remember input{box-shadow:none;width:15px;height:15px;margin-top:25px}
.login-box .remember{padding-left:40px}
.login-box .remember label{display:inline-block;height:42px;width:70px;line-height:34px;text-align:left}
.login-box label{display:inline-block;width:100px;text-align:right;vertical-align:middle}
.login-box #code{width:120px}
.login-box .codeImg{float:right;margin-top:26px;}
.login-box img{width:148px;height:42px;border:none}
input[type=text],input[type=password]{width:270px;height:42px;margin-top:25px;padding:0px 15px;border:1px solid rgba(255,255,255,.15);border-radius:6px;color:#fff;letter-spacing:2px;font-size:16px;background:transparent;}
button{cursor:pointer;width:100%;height:44px;padding:0;background:#ef4300;border:1px solid #ff730e;border-radius:6px;font-weight:700;color:#fff;font-size:24px;letter-spacing:15px;text-shadow:0 1px 2px rgba(0,0,0,.1)}
input:focus{outline:none;box-shadow:0 2px 3px 0 rgba(0,0,0,.1) inset,0 2px 7px 0 rgba(0,0,0,.2)}
button:hover{box-shadow:0 15px 30px 0 rgba(255,255,255,.15) inset,0 2px 7px 0 rgba(0,0,0,.2)}
.screenbg{position:fixed;bottom:0;left:0;z-index:-999;overflow:hidden;width:100%;height:100%;min-height:100%;}
.screenbg ul li{display:block;list-style:none;position:fixed;overflow:hidden;top:0;left:0;width:100%;height:100%;z-index:-1000;float:right;}
.screenbg ul a{left:0;top:0;width:100%;height:100%;display:inline-block;margin:0;padding:0;cursor:default;}
.screenbg a img{vertical-align:middle;display:inline;border:none;display:block;list-style:none;position:fixed;overflow:hidden;top:0;left:0;width:100%;height:100%;z-index:-1000;float:right;}
.bottom{margin:8px auto 0 auto;width:100%;position:fixed;text-align:center;bottom:0;left:0;overflow:hidden;padding-bottom:8px;color:#ccc;word-spacing:3px;zoom:1;}
.bottom a{color:#FFF;text-decoration:none;}
.bottom a:hover{text-decoration:underline;}
</style>

<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".screenbg ul li").each(function(){
		$(this).css("opacity","0");
	});
	$(".screenbg ul li:first").css("opacity","1");
	var index = 0;
	var t;
	var li = $(".screenbg ul li");	
	var number = li.size();
	function change(index){
		li.css("visibility","visible");
		li.eq(index).siblings().animate({opacity:0},3000);
		li.eq(index).animate({opacity:1},3000);
	}
	function show(){
		index = index + 1;
		if(index<=number-1){
			change(index);
		}else{
			index = 0;
			change(index);
		}
	}
	t = setInterval(show,8000);
	//根据窗口宽度生成图片宽度
	var width = $(window).width();
	$(".screenbg ul img").css("width",width+"px");
});
</script>
<!-- <script type="text/javascript">
	function init()
	{
		 username=document.all.username.value; 
		 password=document.all.password.value;
		 captcha=document.all.password.value;
	}
	function checkForm()
	{
		init();
		if(checkName()&&checkPassword()&&checkCaptcha())
		{
			return true;
		}
		return false;
	}
	function checkName()
	{
			var namePattern=/^[a-zA-Z0-9]\w{3,17}$/;
			if(!namePattern.test(username))
			{
				alert("用户名格式不正确");
				return false;
			}
				return true;
	
	}
	function  checkPassword()
	{
		var pwdPattern=/^[a-zA-Z0-9]{6,16}$/;
		if(!pwdPattern.test(password))
		{
			alert("密码格式不正确");
			return  false;
		}
		if(password!=cpassword)
		{
			alert("密码不一致");
			return false;
		}
		return true;
	
	}
</script> -->	
</head>

<body>
	<div class="login-box">
	<h1>第七小组后台登录系统</h1>
	<form method="post" action="employ_method.action">
		<div class="name">
			<label>账 号：</label>
			<input type="text" name="sf_username" id="" tabindex="1" autocomplete="off" id="name"/>
		</div>
		<div class="password">
			<label>密  码：</label>
			<input type="password" name="sf_password" maxlength="16" id="" tabindex="2" id="pass"/>
		</div>
		
		<!-- <div class="remember">
			<input type="checkbox" id="remember" tabindex="4">
			<label>记住密码</label>
		</div> -->
		<div class="login" style="margin-top:20px;">
			<button type="submit" tabindex="5" style="width:140px;text-align:center">登录</button>
		</div>
		<div style="font-size:30px;color:red;">${str}</div>
	</form>
</div>
<div class="screenbg">
	<ul>
		<li><a href="javascript:;"><img src="images/0.jpg"/></a></li>
		<li><a href="javascript:;"><img src="images/1.jpg"/></a></li>
		<li><a href="javascript:;"><img src="images/2.jpg"/></a></li>
	</ul>
</div>
<script type="text/javascript">
	$("#name").blur(function(){
		var name=document.getElementById("name").value;
		if(){
		}
	})
</script>
</body>
</html>
