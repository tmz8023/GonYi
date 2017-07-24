<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s" %>
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
	*{margin:0;padding:0}
	#body1{background:#FFE8FF;width:80%;margin:0 auto;}
	
	#daohang1{width:100%;height:80px;line-height:80px;text-align:center;background:white;}
	#daohang1_1{width:auto;height:80px;border:1px;float:left;text-align:center}
	#daohang1_2{width:220px;height:80px;float:right;margin-right:20px;}
	#daohang1_2 b{font-size:18px;}
	#daohang2{width:100%;;background:#FA96BB;margin-top:10px;margin-bottom:50px;}
	.main{width:80%;height:650px;border:1px solid #C0C0C0;margin:0 auto;}
	.left{width:20%;float:left;margin-left:50px;}
	.left_under{width:80%;margin-top:30px;}
	.left_images{width:80%;margin-top:30px;}
	.under_xiangmu{float:left;background-color:#C0C0C0;font-size:18px;}
	
	.left_under span{color:red;}
	.right{width:72%;height:630px;float:right;text-align:center;lian-height:30px;}
	.right a{color:#000000;font-size:18px;}
	.right_button1{width:100px;height:30px;background-color:#C0C0C0;margin-left:30px; margin-top:80px;float:left;}
	.right_button2{width:100px;height:30px; margin-top:80px;margin-left:30px;float:left;}
	
	.table{width:100%;float:left;margin-top:20px;}
	table{width:500px;}
	td{font-size:16px;}
	
	.button{font-size:18px;}
	#bs-example-navbar-collapse-1{text-align:center}
	#last{width:100%;height:140px;border:1px  black;text-align:center;line-height:20px;letter-spacing:5px;margin:0 auto;float:left;}	
	
	
  </style>
  <style type="text/css">

	 #demo{
		overflow:hidden; /*溢出的部分不显示*/
		width:300px;
		height:190px;/*一定要确切，避免demo1与demo2之间的距离过大*/
		padding:5px;
		
		background:#FFDDF4
		}
	#express{
		  font-size:14px;
		  height:20px;
		  margin:0px 5px;
		  line-height:180%;/*行与行之间的距离*/
		  
		  border-bottom:1px dashed #ccc;
		  cursor:pointer;
		  }
	#ex1{height:25px;width:110px;border:1px;float:left;}
	#ex2{height:25px;width:110px;border:1px;float:left;}
	#ex3{height:25px;width:45px;border:1px;float:left;}
	#news{height:300px;width:300px;border:1px;margin:0 auto}
	#news_1{height:105px;width:300px;border:1px;background:#CECEFF;margin-bottom:2px}
  </style>
  
  <% request.setCharacterEncoding("utf-8"); %>
  	
 
  
  
  </head>
  
  <body>
   <div id="body1">
	  <div id="daohang1">
			<div id="daohang1">
			<div id="daohang1_1">
				<img src="images/logo.png" width='60px' height='50px'><img src="images/dh1.PNG">
			</div>
			<div id="daohang1_2">
				你好!<a>${name}</a><a href="gerenzhongxin.jsp">个人中心</a><a href="Home.jsp">退出</a>
				
			</div>
			
	 </div>
	 </div>
		  <nav class="navbar navbar-default">
		  <!-- 导航条 -->
	 <div id="daohang2">
	  <div class="container-fluid" id="container">
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		  <ul class="nav navbar-nav">
			<li class="color"><a href="Zhuye.jsp">首页 <span class="sr-only">(current)</span></a></li>
			
			<li class="color"><a href="l_select.action"><span class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;公益项目</a></li>
			<li class="color"><a href="#"><span class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;信息公开</a></li>
			
			<%-- <li class="color"><a href="juankuan.jsp"><span class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;我要募捐</a></li> --%>
			<li class="dropdown">
			  <a href="faqixiangmu.jsp" class="dropdown-toggle"  id="color"><span class="glyphicon glyphicon-heart"></span>&nbsp;&nbsp;<span>发起项目</span></a> 
			</li>
		</ul>	
		</div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	 </div>
	
	 <div class="main">
	 	<div class="left">
	 		<div class="left_images">
	 			<img alt="" src="images/01.jpg" width="70px" height="70px"/>
	 			&nbsp;&nbsp;&nbsp;
	 			<span>${name}</span>
	 		</div>
	 		<div class="left_under">
	 			<div class="under_xiangmu">我的项目: </div>
	 			
	 		</div>
	 	</div>
	 	<div class="right">
	 		<div class="right_button2">
	 			<a href="d_select.action">我的捐赠</a>
	 		</div>
	 		<div class="right_button2">
	 			<a href="q_zhi.action">申请的金额</a>
	 		</div>
	 		<div class="right_button1">
	 			<a href="ww_Qiantaiwodeproject.action">我的项目</a>
	 		</div>
	 		<div style="display: none">
				<span id="spanFirstt">首页</span> <span id="spanPret">上一页</span> <span
					id="spanNextt"> 下一页</span> <span id="spanLastt">尾页</span> 第 <span
					id="spanPageNumt"></span>页/共<span id="spanTotalPaget"></span>页
			</div>
	 		<div>
	 			<table class="table table-bordered">
	 				<tr class="title" style="background:pink;">
	 					<td>项目编号</td>
	 					<td>申请时间</td>
	 					<td>项目名称</td>
	 					<td>初审状态</td>
	 					<td>初审意见</td>
	 					<td>终审状态</td>
	 					<td>终审意见</td>
	 				</tr>
	 				<tbody id="tablelsw">
	 				<s:forEach items="${list}" var="ff">
		 				<tr>
		 					<td>${ff.id }</td>
		 					<td>${ff.time }</td>
		 					<td>${ff.entryname }</td>
		 					<td>${ff.status}</td>
		 					<td>${ff.jy}</td>
		 					<td>${ff.lzstatus }</td>
		 					<td>${ff.lzjianyi }</td>
		 				</tr>
		 				</s:forEach>
		 			</tbody>
	 			</table>
	 		</div>
	 		<div class="pagelist" style="margin-top:100px">
				<span id="spanFirst" class="button border-main">首页</span> <span
					id="spanPre" class="button border-main">上一页</span> <span
					id="spanNext" class="button border-main">下一页</span> <span
					id="spanLast" class="button border-main">尾页</span> 第<span
					id="spanPageNum"></span>页/共 <span id="spanTotalPage"></span>页
			</div>
	 	</div>
	 </div>
	 
	 
	 <div>	
	   <div id="last">
			<br>
			<div>
			<a href="#" target="_blank" rel="nofollow">关于益家人</a> | <a href="#" target="_blank" rel="nofollow">服务协议</a> | <a href="隐私政策.html" target="_blank" rel="nofollow">隐私政策</a> | <a href="#" target="_blank" rel="nofollow">开放平台</a> | <a href="#" target="_blank" rel="nofollow">益家人公益</a> | <a href="#" target="_blank" rel="nofollow">举报中心</a> | <a href="#" target="_blank" rel="nofollow">网站导航</a>
		</div>
			<div><br>Copyright ? 1998 - 2017 YiJiaRen Reserved</div>
			<div><br>第七小组 版权所有</div>
	   </div>
	 </div>	
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
  </body>
  	
<script type="text/javascript">
	// JavaScript Document By lishewen     
	var theTable = document.getElementById("tablelsw");
	var totalPage = document.getElementById("spanTotalPage");
	var pageNum = document.getElementById("spanPageNum");

	var spanPre = document.getElementById("spanPre");
	var spanNext = document.getElementById("spanNext");
	var spanFirst = document.getElementById("spanFirst");
	var spanLast = document.getElementById("spanLast");

	var totalPaget = document.getElementById("spanTotalPaget");
	var pageNumt = document.getElementById("spanPageNumt");

	var spanPret = document.getElementById("spanPret");
	var spanNextt = document.getElementById("spanNextt");
	var spanFirstt = document.getElementById("spanFirstt");
	var spanLastt = document.getElementById("spanLastt");
	


	var numberRowsInTable = theTable.rows.length;
	var pageSize = 6;
	var page = 1;

	//下一页     
	function next() {

		hideTable();

		currentRow = pageSize * page;
		maxRow = currentRow + pageSize;
		if (maxRow > numberRowsInTable)
			maxRow = numberRowsInTable;
		for ( var i = currentRow; i < maxRow; i++) {
			theTable.rows[i].style.display = '';
		}
		page++;

		if (maxRow == numberRowsInTable) {
			nextText();
			lastText();
		}
		showPage();
		preLink();
		firstLink();
	}

	//上一页     
	function pre() {

		hideTable();

		page--;

		currentRow = pageSize * page;
		maxRow = currentRow - pageSize;
		if (currentRow > numberRowsInTable)
			currentRow = numberRowsInTable;
		for ( var i = maxRow; i < currentRow; i++) {
			theTable.rows[i].style.display = '';
		}

		if (maxRow == 0) {
			preText();
			firstText();
		}
		showPage();
		nextLink();
		lastLink();
	}

	//第一页     
	function first() {
		hideTable();
		page = 1;
		for ( var i = 0; i < pageSize; i++) {
			theTable.rows[i].style.display = '';
		}
		showPage();

		preText();
		nextLink();
		lastLink();
	}

	//最后一页     
	function last() {
		hideTable();
		page = pageCount();
		currentRow = pageSize * (page - 1);
		for ( var i = currentRow; i < numberRowsInTable; i++) {
			theTable.rows[i].style.display = '';
		}
		showPage();

		preLink();
		nextText();
		firstLink();
	}

	function hideTable() {
		for ( var i = 0; i < numberRowsInTable; i++) {
			theTable.rows[i].style.display = 'none';
		}
	}

	//控制分页
	function showPage() {
		pageNum.innerHTML = page;
		pageNumt.innerHTML = page;
	}

	//总共页数     
	function pageCount() {
        var count = 0;
        if (numberRowsInTable % pageSize != 0) count = 1;
        return parseInt(numberRowsInTable / pageSize) + count;
    }

	//显示链接     
	function preLink() {
		spanPre.innerHTML = "<a href='javascript:pre();' id='sasasaa'>上一页</a>";

		spanPret.innerHTML = "<a href='javascript:pre();'>上一页</a>";
	}
	function preText() {
		spanPre.innerHTML = "上一页";
		spanPret.innerHTML = "上一页";
	}

	function nextLink() {
		spanNext.innerHTML = "<a href='javascript:next();' id='sasasaa'>下一页</a>";

		spanNextt.innerHTML = "<a href='javascript:next();'>下一页</a>";
	}
	function nextText() {
		spanNext.innerHTML = "下一页";
		spanNextt.innerHTML = "下一页";
	}

	function firstLink() {
		spanFirst.innerHTML = "<a href='javascript:first();' id='sasasaa'>首页</a>";
		spanFirstt.innerHTML = "<a href='javascript:first();'>首页</a>";
	}
	function firstText() {
		spanFirst.innerHTML = "首页";
		spanFirstt.innerHTML = "首页";
	}

	function lastLink() {
		spanLast.innerHTML = "<a href='javascript:last();' id='sasasaa'>尾页";
		spanLastt.innerHTML= "<a href='javascript:last();'>尾页</a>";
	}
	function lastText() {
		spanLast.innerHTML = "尾页";
		spanLastt.innerHTML = "尾页";
	}

	//隐藏表格     
	function hide() {
		for ( var i = pageSize; i < numberRowsInTable; i++) {
			theTable.rows[i].style.display = 'none';
		}

		totalPage.innerHTML = pageCount();
		pageNum.innerHTML = '1';

		totalPaget.innerHTML = pageCount();
		pageNumt.innerHTML = '1';

		nextLink();
		lastLink();
	}
	hide();
</script>
</html>
