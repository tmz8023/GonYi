<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="zh-CN">
<head>
<%
	request.setCharacterEncoding("utf-8");
%>
<meta charset="GBK">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>资金申请</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

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
</style>
<style type="text/css">
#ss1 {
	
}
</style>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>

<body style="background:url(images/moneySQ1.jpg);background-size:100%;">
	<div>
		<h3>
			<p class="breadcrumb">
				<a href="sq_selectSname.action">基本信息</a><span
					style="float:right;margin-right:100px"><a
					href="faqixiangmu.jsp">返回</a> </span>
			</p>
		</h3>
	</div>
	<div style="height:100px;width:900px;text-align:center;line-height:100px;color:red;"><B>*请认真填写申请信息*</B></div>
	<form class="form-horizontal" name="myform"
		action="book_addzhichu.action" method="post">
		<div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">项目编号</label>
				<div class="col-sm-5">
					<select class="form-control" name="ex_name" id="inputEmail3"
						onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')"
						onpaste="value=value.replace(/[^\u4E00-\u9FA5]/g,'')"
						oncontextmenu="value=value.replace(/[^\u4E00-\u9FA5]/g,'')"
						placeholder="请输入项目编号"><c:forEach items="${xmid}"
							var="xmid">
							<option value="${xmid}">${xmid}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="input3" class="col-sm-2 control-label">申请单位</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" name="ex_company"
						id="input3" onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')"
						onpaste="value=value.replace(/[^\u4E00-\u9FA5]/g,'')"
						oncontextmenu="value=value.replace(/[^\u4E00-\u9FA5]/g,'')">
				</div>
			</div>
			<div class="form-group">
				<label for="money" class="col-sm-2 control-label">申请金额</label>
				<div style="color:red;margin-left:250px">可用金额：<span id="ss1"></span></div>
				<div class="col-sm-5">
					<input type="text" class="form-control" onblur="regmoney()"
						name="ex_money" id="money"
						onkeyup="value=value.replace(/[^\0-9\.]/g,'')"
						onpaste="value=value.replace(/[^\0-9\.]/g,'')"
						oncontextmenu="value=value.replace(/[^\0-9\.]/g,'')"
						placeholder="请输入金额">
				</div>
			</div>
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">申请原因</label>
				<div class="col-sm-10">
					<textarea name="ex_reason" cols="90" rows="8" class="form_textarea"
						id="shenqing"
						onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')"
						onpaste="value=value.replace(/[^\u4E00-\u9FA5]/g,'')"
						oncontextmenu="value=value.replace(/[^\u4E00-\u9FA5]/g,'')"
						style="width:550px;"></textarea>
					<br /> <input type="submit" id="sub" value="申请" />
				</div>
			</div>
		</div>
	</form>


	<script type="text/javascript">
		$("#sub").click(function() {
			var name = document.getElementById("shenqing").value;
			
			var money=$("#money").val();
			var ss1 = document.getElementById("ss1").innerHTML;
			if (parseFloat(money)>parseFloat(ss1)) {
				alert("申请金额不得超过可用金额！");
				return false;
			}else if(parseFloat(ss1)==0){
				alert("当前项目没有可申请金额！");
				return false;
			}else if(parseFloat(money)<=0){
				alert("请输入大于0的金额！");
				return false;
			}
			else if(name.length==0){
				alert("请认真填写信息！");
				return false;
			}
			return true;
		})
	</script>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/vendor/jquery.min.js"><\/script>')
	</script>
	<script
		src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="js/ie10-viewport-bug-workaround.js"></script>
	<script>
		/* $("#input3").blur(function() {
			var a = $("#inputEmail3").val();
			$.ajax({
				type : "post",
				url : "book_jine.action",
				data : {
					jin : a
				},
				success : function(data) {
					$("#ss1").css("display", "block");
				}

			})

		}) */
		$("#money").blur(function() {
			var ss1 = document.getElementById("ss1").innerHTML;
			var money = document.getElementById("money").value;
			if (parseFloat(money) > parseFloat(ss1)) {
				//document.getElementById("ss").innerHTML = "申请金额大于可用金额";
				alert("申请金额不可超过可用金额");
				return false;
			} else if(parseFloat(money)<=0){
				alert("请输入正确的金额数量！");
				return false;
			} else {
				//document.getElementById("ss").innerHTML = "";
				return true;
			}
		})
		$("#inputEmail3").blur(function(){
			var a=$("#inputEmail3").val();
			$.ajax({
				type : "post",
				url : "book_jisuan.action",
				dataType:"text",
				data : {jin:a},
				success : function(data){
						$("#ss1").text(data);
				}
				
			})
			
		})
	</script>

</body>
</html>
