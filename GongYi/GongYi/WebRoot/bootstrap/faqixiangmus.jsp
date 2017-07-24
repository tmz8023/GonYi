<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="zh-CN">
<head>

<meta charset="GBK">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>发起项目</title>

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

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>

<body style="background:url(images/moneySQ1.jpg);background-size:100%;">
	<div>
		<h3>
			<p class="breadcrumb">基本信息<span style="float:right;margin-right:100px"><a href="faqixiangmu.jsp">返回</a></span></p>
		</h3>
		
	</div>
	<div style="height:80px;width:900px;text-align:center;line-height:80px;color:red;"><B>*请认真填写申请信息*</B></div>
	<form class="form-horizontal" name="myform"
		action="ww_Faqiservlet.action"  onsubmit="return checkForm()"  method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">项目名称</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" name="entryname" id="xmName"><span
					id="xmn" style="color:red;"></span>
			</div>
		</div>
		<div class="form-group">
			<label for="input3" class="col-sm-2 control-label">项目类别</label>
			<div class="col-sm-5">
				<select class="form-control" name="projecttype" id="leibie">
					<option>疾病救助</option><option>扶贫</option><option>救灾</option><option>教育</option><option>助学</option><option>环保</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label for="money" class="col-sm-2 control-label">筹款目标</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" onblur="regmoney()"
						name="amount" id="mubiao"
						onkeyup="value=value.replace(/[^\0-9\.]/g,'')"
						onpaste="value=value.replace(/[^\0-9\.]/g,'')"
						oncontextmenu="value=value.replace(/[^\0-9\.]/g,'')"
						placeholder="请输入金额">
					<span id="mo" style="color:red"></span>
			</div>
		</div>
		<div class="form-group">
			<label for="input2" class="col-sm-2 control-label">受助对象</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="duixiang"
					placeholder="孤儿/贫困人口/弱势群体/残障/自闭症">
			</div>
		</div>
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">申请原因</label>
			<div class="col-sm-5">
				<textarea name="reason" cols="90" rows="8" class="form_textarea" id="reason" style="width:550px"></textarea>
				
			</div>
		</div>
		 <div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">事实图片</label>
			<div class="col-sm-10">
				<input  type="file" name="ssfile" class="file" id="file"></input><br/>
				<input  type="submit" value="申请" id="sub"/>
			</div>
		 </div>


	</form>
	<script type="text/javascript">
	
	
	//申请金额只能输数字
		$("#mubiao").keypress(
				function(event) {

					var keyCode = event.which;
					if (keyCode == 46 || (keyCode >= 48 && keyCode <= 57)
							|| keyCode == 8)//8是删除键  
						return true;
					else
						return false;
				}).focus(function() {
			this.style.imeMode = 'disabled';
		});
	
	
		$("#xmName").blur(function(){
			var namePattern = /[\u4e00-\u9fa5]/;
			var name=document.getElementById("xmName").value;
			if(!namePattern.test(name)){
				document.getElementById("xmn").innerHTML="请输入中文开头的项目名称";
				return false;
			}else{
				$.ajax({
					url:"xmsq_query.action",
					type:"post",
					data:{"name":name},
					success:function(data){
						if(data==1){
							document.getElementById("xmn").innerHTML="项目名已存在";
						}else{
						document.getElementById("xmn").innerHTML = "";
						}
					}
				}) 
				return true;
			}
		})
		
		
	function checkForm(){
		var mubiao=$("#mubiao").val();
		var duixiang=$("#duixiang").val();
		var reason=$("#reason").val();
		var ssfile=$("#ssfile").val();
			if(mubiao.length!=0&&duixiang.length!=0&&reason.length!=0&&ssfile.length!=0){
				alert("提交成功，请耐心等待审核结果");
				return true;
			}else{		
				alert("不能有为空项");
				return false;
			}
		}
	$("#mubiao").blur(function(){
		var mubiao=document.getElementById("mubiao").value;
		if(mubiao==0){
			document.getElementById("mo").innerHTML = "请输入大于0的整数金额";
			return false;
		}else{
			document.getElementById("mo").innerHTML = "";
			return true;
		}
	})
		
		
		
	</script>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/vendor/jquery.min.js"><\/script>')</script>
	<script
		src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>
