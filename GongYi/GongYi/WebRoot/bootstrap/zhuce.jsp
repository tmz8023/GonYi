<%@page import="com.enroll.enroll"%>
<%@page import="com.enroll.enrollDaoImpl"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户注册表单验证</title>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.poshytip.js"></script>
<script type='text/javascript' src='js/jq.validate.js'></script>

<link rel="stylesheet" type="text/css" href="reset.css" />

<link rel="stylesheet" type="text/css"
	href="lib/tip-yellowsimple/tip-yellowsimple.css" />


<style type="text/css">
td {
	padding: 7px;
}

.labels {
	text-align: right;
}

body {
	background: url(images/bj.jpg);
	margin-top: 100px;
}
</style>

<script type="text/javascript">
	$(function(e) {
		var vali = new Validators();
		$("#show").bind("click", vali.subByJs);
	});
</script>

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
	<form action="enroll_add.action" method="post">
		<div align="center" width="500px">
			<h1>欢迎您!注册公益用户</h1>
			<br />
			<table width="40%" border="0">
				<tr>
					<td class="labels">账号:</td>
					<td><input type="text" id="name" name="name" /></td>
					<td id="n" style="color:red">${cun}</td>
				</tr>
				<tr>
					<td class="labels">密码:</td>
					<td><input type="password" id="pass" name="pass" /></td>
					<td id="p" style="color:red"></td>
				</tr>
				<tr>
					<td class="labels">确认密码:</td>
					<td><input type="password" id="spass" name="spass" /></td>
					<td id="sp" style="color:red"></td>
				</tr>
				<tr>
					<td class="labels">性别:</td>
					<td><select name="gender" style="width:173px;"><option>男</option>
							<option>女</option>
					</select>
					</td>
				</tr>
				<tr>
					<td class="labels">身份证号码:</td>
					<td><input type="text" id="carid" name="carid" /></td>
					<td id="cd" style="color:red"></td>
				</tr>
				<tr>
					<td class="labels">中文姓名:</td>
					<td><input type="text" id="sname" name="sname" /></td>
					<td id="sn" style="color:red"></td>
				</tr>
				<tr>
					<td class="labels">手机:</td>
					<td><input type="text" id="phone" name="phone" /></td>
					<td id="ph" style="color:red"></td>
				</tr>
				<tr>
					<td class="labels">电子邮箱:</td>
					<td><input type="text" id="email" name="email" /></td>
					<td id="em" style="color:red"></td>
				</tr>
				<tr>
					<td></td>
					<td><a href="Home.jsp"><input type="button" value="返回" />
					</a>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交" id="show" />
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
<script type="text/javascript">
	$("#name").blur(function() {
		var namePattern = /[\u4e00-\u9fa5]/;
		var username = document.getElementById("name").value;
		if (!namePattern.test(username)) {
			document.getElementById("n").innerHTML = "请输入中文用户名";
			return false;
		} else {
			$.ajax({
				url : "yanz_yz.action",
				type : "post",
				data : {
					"username" : username
				},
				success : function(data) {
					if (data == 1) {
						document.getElementById("n").innerHTML = "用户名已存在";
					} else {
						document.getElementById("n").innerHTML = "";
					}
				}
			})
			return true;
		}
	})
	$("#pass").blur(function() {
		var pwdPattern = /^[a-zA-Z0-9]{6,16}$/;
		var pass = document.getElementById("pass").value;
		if (!pwdPattern.test(pass)) {
			document.getElementById("p").innerHTML = "请输入6-16位密码长度";
			return false;
		} else {
			document.getElementById("p").innerHTML = "";
			return true;
		}
	})
	$("#spass").blur(function() {
		var pass = document.getElementById("pass").value;
		var spass = document.getElementById("spass").value;
		if (pass != spass) {
			document.getElementById("sp").innerHTML = "密码不一致";
			return false;
		} else {
			document.getElementById("sp").innerHTML = "";
			return true;
		}
	})
	$("#carid").blur(function() {
		var carid = document.getElementById("carid").value;
		var st = /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;
		if (st.test(carid)){
			document.getElementById("cd").innerHTML = "";
			return true;
		} else {
			document.getElementById("cd").innerHTML = "请输入正确的身份证号码";
			return false;
		}
	})
	$("#sname").blur(function(){
		var sname=document.getElementById("sname").value;
		var sn=/[\u4e00-\u9fa5]/;
		if(!sn.test(sname)){
			document.getElementById("sn").innerHTML="请输入中文姓名";
			return false;
		}else{
			document.getElementById("sn").innerHTML = "";
			return true;
		}
	})
	$("#phone").blur(function(){
		var phone=document.getElementById("phone").value;
		var ph=/^1[3|4|5|7|8][0-9]{9}$/;
		if(!ph.test(phone)){
			document.getElementById("ph").innerHTML="请输入正确的手机号";
			return false;
		}else{
			document.getElementById("ph").innerHTML = "";
			return true;
		}
	})
	$("#email").blur(function(){
		var phone=document.getElementById("email").value;
		var ph= /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if(!ph.test(phone)){
			document.getElementById("em").innerHTML="邮箱格式不正确";
			return false;
		}else{
			document.getElementById("em").innerHTML = "";
			return true;
		}
	})
</script>
<script type="text/javascript">
	$("#show").click(function() {

		var name = document.getElementById("name").value;
		var pass = document.getElementById("pass").value;
		var spass = document.getElementById("spass").value;
		var carid = document.getElementById("carid").value;
		var sname = document.getElementById("sname").value;
		var phone = document.getElementById("phone").value;
		var email = document.getElementById("email").value;
		if (name == "") {
			alert("请完善信息");
			return false;
		} else if (pass == "") {
			alert("请完善信息");
			return false;
		} else if (spass == "") {
			alert("请完善信息");
			return false;
		} else if (carid == "") {
			alert("请完善信息");
			return false;
		} else if (sname == "") {
			alert("请完善信息");
			return false;
		} else if (phone == "") {
			alert("请完善信息");
			return false;
		} else if (email == "") {
			alert("请完善信息");
			return false;
		} else {
			alert("恭喜您！加入益家人")
			return true;
		}
	})
</script>
</html>
