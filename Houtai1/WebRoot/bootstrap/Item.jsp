	
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台模板管理系统</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" href="../../favicon.ico">
<title>Starter Template for Bootstrap</title>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="starter-template.css" rel="stylesheet">

<script src="js/ie-emulation-modes-warning.js"></script>

<script type="text/javascript">
	/* 时间插件开始 */

	function HS_DateAdd(interval, number, date) {
		number = parseInt(number);
		if (typeof (date) == "string") {
			var date = new Date(date.split("-")[0], date.split("-")[1], date
					.split("-")[2])
		}
		if (typeof (date) == "object") {
			var date = date
		}
		switch (interval) {
		case "y":
			return new Date(date.getFullYear() + number, date.getMonth(), date
					.getDate());
			break;
		case "m":
			return new Date(date.getFullYear(), date.getMonth() + number,
					checkDate(date.getFullYear(), date.getMonth() + number,
							date.getDate()));
			break;
		case "d":
			return new Date(date.getFullYear(), date.getMonth(), date.getDate()
					+ number);
			break;
		case "w":
			return new Date(date.getFullYear(), date.getMonth(), 7 * number
					+ date.getDate());
			break;
		}
	}
	function checkDate(year, month, date) {
		var enddate = [ "31", "28", "31", "30", "31", "30", "31", "31", "30",
				"31", "30", "31" ];
		var returnDate = "";
		if (year % 4 == 0) {
			enddate[1] = "29"
		}
		if (date > enddate[month]) {
			returnDate = enddate[month]
		} else {
			returnDate = date
		}
		return returnDate;
	}

	function WeekDay(date) {
		var theDate;
		if (typeof (date) == "string") {
			theDate = new Date(date.split("-")[0], date.split("-")[1], date
					.split("-")[2]);
		}
		if (typeof (date) == "object") {
			theDate = date
		}
		return theDate.getDay();
	}
	function HS_calender() {
		var lis = "";
		var style = "";
		style += "<style type='text/css'>";
		style += ".calender { width:170px; height:auto; font-size:12px; margin-right:14px; background:url(calenderbg.gif) no-repeat right center #fff; border:1px solid #397EAE; padding:1px}";
		style += ".calender ul {list-style-type:none; margin:0; padding:0;}";
		style += ".calender .day { background-color:#EDF5FF; height:20px;}";
		style += ".calender .day li,.calender .date li{ float:left; width:14%; height:20px; line-height:20px; text-align:center}";
		style += ".calender li a { text-decoration:none; font-family:Tahoma; font-size:11px; color:#333}";
		style += ".calender li a:hover { color:#f30; text-decoration:underline}";
		style += ".calender li a.hasArticle {font-weight:bold; color:#f60 !important}";
		style += ".lastMonthDate, .nextMonthDate {color:#bbb;font-size:11px}";
		style += ".selectThisYear a, .selectThisMonth a{text-decoration:none; margin:0 2px; color:#000; font-weight:bold}";
		style += ".calender .LastMonth, .calender .NextMonth{ text-decoration:none; color:#000; font-size:18px; font-weight:bold; line-height:16px;}";
		style += ".calender .LastMonth { float:left;}";
		style += ".calender .NextMonth { float:right;}";
		style += ".calenderBody {clear:both}";
		style += ".calenderTitle {text-align:center;height:20px; line-height:20px; clear:both}";
		style += ".today { background-color:#ffffaa;border:1px solid #f60; padding:2px}";
		style += ".today a { color:#f30; }";
		style += ".calenderBottom {clear:both; border-top:1px solid #ddd; padding: 3px 0; text-align:left}";
		style += ".calenderBottom a {text-decoration:none; margin:2px !important; font-weight:bold; color:#000}";
		style += ".calenderBottom a.closeCalender{float:right}";
		style += ".closeCalenderBox {float:right; border:1px solid #000; background:#fff; font-size:9px; width:11px; height:11px; line-height:11px; text-align:center;overflow:hidden; font-weight:normal !important}";
		style += "</style>";

		var now;
		if (typeof (arguments[0]) == "string") {
			selectDate = arguments[0].split("-");
			var year = selectDate[0];
			var month = parseInt(selectDate[1]) - 1 + "";
			var date = selectDate[2];
			now = new Date(year, month, date);
		} else if (typeof (arguments[0]) == "object") {
			now = arguments[0];
		}
		var lastMonthEndDate = HS_DateAdd("d", "-1",
				now.getFullYear() + "-" + now.getMonth() + "-01").getDate();
		var lastMonthDate = WeekDay(now.getFullYear() + "-" + now.getMonth()
				+ "-01");
		var thisMonthLastDate = HS_DateAdd("d", "-1", now.getFullYear() + "-"
				+ (parseInt(now.getMonth()) + 1).toString() + "-01");
		var thisMonthEndDate = thisMonthLastDate.getDate();
		var thisMonthEndDay = thisMonthLastDate.getDay();
		var todayObj = new Date();
		today = todayObj.getFullYear() + "-" + todayObj.getMonth() + "-"
				+ todayObj.getDate();

		for (i = 0; i < lastMonthDate; i++) { // Last Month's Date
			lis = "<li class='lastMonthDate'>" + lastMonthEndDate + "</li>"
					+ lis;
			lastMonthEndDate--;
		}
		for (i = 1; i <= thisMonthEndDate; i++) { // Current Month's Date

			if (today == now.getFullYear() + "-" + now.getMonth() + "-" + i) {
				var todayString = now.getFullYear() + "-"
						+ (parseInt(now.getMonth()) + 1).toString() + "-" + i;
				lis += "<li><a href=javascript:void(0) class='today' onclick='_selectThisDay(this)' title='"
						+ now.getFullYear()
						+ "-"
						+ (parseInt(now.getMonth()) + 1)
						+ "-"
						+ i
						+ "'>"
						+ i
						+ "</a></li>";
			} else {
				lis += "<li><a href=javascript:void(0) onclick='_selectThisDay(this)' title='"
						+ now.getFullYear()
						+ "-"
						+ (parseInt(now.getMonth()) + 1)
						+ "-"
						+ i
						+ "'>"
						+ i
						+ "</a></li>";
			}

		}
		var j = 1;
		for (i = thisMonthEndDay; i < 6; i++) { // Next Month's Date
			lis += "<li class='nextMonthDate'>" + j + "</li>";
			j++;
		}
		lis += style;

		var CalenderTitle = "<a href='javascript:void(0)' class='NextMonth' onclick=HS_calender(HS_DateAdd('m',1,'"
				+ now.getFullYear()
				+ "-"
				+ now.getMonth()
				+ "-"
				+ now.getDate() + "'),this) title='Next Month'>&raquo;</a>";
		CalenderTitle += "<a href='javascript:void(0)' class='LastMonth' onclick=HS_calender(HS_DateAdd('m',-1,'"
				+ now.getFullYear()
				+ "-"
				+ now.getMonth()
				+ "-"
				+ now.getDate() + "'),this) title='Previous Month'>&laquo;</a>";
		CalenderTitle += "<span class='selectThisYear'><a href='javascript:void(0)' onclick='CalenderselectYear(this)' title='Click here to select other year' >"
				+ now.getFullYear()
				+ "</a></span>年<span class='selectThisMonth'><a href='javascript:void(0)' onclick='CalenderselectMonth(this)' title='Click here to select other month'>"
				+ (parseInt(now.getMonth()) + 1).toString() + "</a></span>月";

		if (arguments.length > 1) {
			arguments[1].parentNode.parentNode.getElementsByTagName("ul")[1].innerHTML = lis;
			arguments[1].parentNode.innerHTML = CalenderTitle;

		} else {
			var CalenderBox = style
					+ "<div class='calender'><div class='calenderTitle'>"
					+ CalenderTitle
					+ "</div><div class='calenderBody'><ul class='day'><li>日</li><li>一</li><li>二</li><li>三</li><li>四</li><li>五</li><li>六</li></ul><ul class='date' id='thisMonthDate'>"
					+ lis
					+ "</ul></div><div class='calenderBottom'><a href='javascript:void(0)' class='closeCalender' onclick='closeCalender(this)'>×</a><span><span><a href=javascript:void(0) onclick='_selectThisDay(this)' title='"
					+ todayString + "'>Today</a></span></span></div></div>";
			return CalenderBox;
		}
	}
	function _selectThisDay(d) {
		var boxObj = d.parentNode.parentNode.parentNode.parentNode.parentNode;
		boxObj.targetObj.value = d.title;
		boxObj.parentNode.removeChild(boxObj);
	}
	function closeCalender(d) {
		var boxObj = d.parentNode.parentNode.parentNode;
		boxObj.parentNode.removeChild(boxObj);
	}

	function CalenderselectYear(obj) {
		var opt = "";
		var thisYear = obj.innerHTML;
		for (i = 1970; i <= 2100; i++) {
			if (i == thisYear) {
				opt += "<option value="+i+" selected>" + i + "</option>";
			} else {
				opt += "<option value="+i+">" + i + "</option>";
			}
		}
		opt = "<select onblur='selectThisYear(this)' onchange='selectThisYear(this)' style='font-size:11px'>"
				+ opt + "</select>";
		obj.parentNode.innerHTML = opt;
	}

	function selectThisYear(obj) {
		HS_calender(obj.value
				+ "-"
				+ obj.parentNode.parentNode.getElementsByTagName("span")[1]
						.getElementsByTagName("a")[0].innerHTML + "-1",
				obj.parentNode);
	}

	function CalenderselectMonth(obj) {
		var opt = "";
		var thisMonth = obj.innerHTML;
		for (i = 1; i <= 12; i++) {
			if (i == thisMonth) {
				opt += "<option value="+i+" selected>" + i + "</option>";
			} else {
				opt += "<option value="+i+">" + i + "</option>";
			}
		}
		opt = "<select onblur='selectThisMonth(this)' onchange='selectThisMonth(this)' style='font-size:11px'>"
				+ opt + "</select>";
		obj.parentNode.innerHTML = opt;
	}
	function selectThisMonth(obj) {
		HS_calender(obj.parentNode.parentNode.getElementsByTagName("span")[0]
				.getElementsByTagName("a")[0].innerHTML
				+ "-" + obj.value + "-1", obj.parentNode);
	}
	function HS_setDate(inputObj) {
		var calenderObj = document.createElement("span");
		calenderObj.innerHTML = HS_calender(new Date());
		calenderObj.style.position = "absolute";
		calenderObj.targetObj = inputObj;
		inputObj.parentNode.insertBefore(calenderObj, inputObj.nextSibling);
	}

	/* 时间插件结束 */
</script>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
</head>

<body>

	<div class="top"></div>
	<div id="header">
		<div class="logo">第七组项目后台管理系统</div>
		<div class="navigation">

			<ul>
				<li>欢迎您！</li>
				<li><a href="">${name}</a></li>
				<li><a href="denglu.jsp">退出</a>
				</li>
				<li><a href="houtai.jsp">首页</a>
				</li>
			</ul>
		</div>
	</div>




	<div id="content">
		<div class="left_menu">
			<ul id="nav_dot">
				<li>
					<h4 class="M10">
						<span></span>部门管理
					</h4>
					<div class="list-item none">
						<a href="sturts_select11.action">人事部</a>
						<!-- <a href="zongjian.jsp">总监部</a> <a href="shenhebu.jsp">审核部</a><a href="caiwubu.jsp">财务部</a><a href="xinwenbu.jsp">新闻部</a> -->
					</div></li>
				<li>
					<h4 class="M10">
						<span></span>权限管理
					</h4>
					<div class="list-item none">
						<a href="emp_show.action">员工管理</a><a href="Rol_showRole.action">角色管理</a>
						<!-- <a href="Aut_showAuth1.action">权限管理</a> -->
					</div></li>
				<li>
					<h4 class="M1">
						<span></span>审核管理
					</h4>
					<div class="list-item none">
						<a href="book_geren.action">用户信息审核</a> <a
							href="ww_Reviewprojectservlet.action">公益项目审核</a> <a
							href='book_shen.action'>资金申请审核</a>
					</div></li>
				<li>
					<h4 class="M4">
						<span></span>理事管理
					</h4>
					<div class="list-item none">
						<a href='en_fenye.action'>资金审核</a> <a href='enhao_fenye1.action'>项目审核</a>
					</div></li>
				<li>
					<h4 class="M5">
						<span></span>执行管理
					</h4>
					<div class="list-item none">
						<!-- <a href="n_select.action">新闻发布</a> -->
						<!-- <a href='lishibiao1111.jsp'>理事管理</a> -->
						<a href='p_select1.action'>项目管理</a>
					</div></li>
				<li>
					<h4 class="M3">
						<span></span>财务管理
					</h4>
					<div class="list-item none">
						<a href="ww_finanaceconfirm.action">收入确认</a><a
							href='fy_fenye22.action'>捐款详情</a> <a href='book_chaxun.action'>支出详情</a><a
							href='book_fang.action'>理事状态</a>
					</div></li>

				<li>
					<h4 class="M6">
						<span></span>查询统计
					</h4>
					<div class="list-item none">
						<a href="select.jsp">用户查询</a><a href='employ_SelectProjectMoney.action'>支出项目</a>
					</div></li>
			</ul>
		</div>
		<div class="m-right">
			<div class="right-nav">
				<ul>
					<li><img src="images/home.png" style="margin-bottom:40px">
					</li>
					<li style="margin-left:25px;">您当前的位置：</li>
					<li><a href="#">执行管理</a>
					</li>
					<li>></li>
					<li><a href="#">项目发布</a>
					</li>
				</ul>
			</div>



			<div class="main">

				<!-- <a href="p_select1.action">
					<button type="button" class="btn btn-primary btn-lg" id="sel">查询全部</button>
				</a> -->


				<div class="col-lg-6">
					<div class="input-group">
						<!-- <form action="p_selectName.action" method="post">
							<div style="float:left">
								<input type="text" class="form-control" name="ip.name" placeholder="请输入关键词...">
							</div>
							<div style="float:left">
								<span class="input-group-btn">
									<button class="btn btn-default" type="submit">查询</button> 
								</span>
							</div>
						</form> -->
					</div>
				</div>
				<div style="height:350px;">
					<form action="p_getDateAction.action" method="post">
						<table class="table table-bordered" border="1">
							<tr>

								<td>项目编号</td>
								<td>项目名称</td>
								<td>项目内容</td>
								<td>项目发布时间</td>
								<td class="e1">项目结束时间</td>
								<td>项目资料</td>
								<td>操作</td>
							</tr>

							<c:forEach items="${item}" var="ll">
								<tr>

									</td>
									<td>${ll.sh_xm_id}</td>
									<td>${ll.ask_name}</td>
									<td style="width:100px;word-break:break-all;">${ll.ask_reason}</td>
									<td><input type="text" style="width:110px" name="asd"
										value="${ll.date}" /></td>
									<td><input type="text" style="width:110px"
										onfocus="HS_setDate(this)" id="date" name="qwer"
										placeholder="结束时间">
									</td>
									<td><img src="${ll.lojing}" width="300px" height="200" />
									</td>
									<td><input type="submit" value="发布"
										class="btn btn-warning" id="sub" />
								</tr>
							</c:forEach>
						</table>

					</form>
					<div style="color:red">${str}</div>
				</div>

				<div style="text-align:center;">
					<ul class="pagination fr">
						<li class="disabled"><a href="#">«</a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">»</a></li>
					</ul>
				</div>

			</div>
		</div>
	</div>

	<div class="bottom"></div>



	<!-- 修改信息 模态框-->

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<!-- 		<div class="modal-body">
				
					<form action="p_update.action" method="post">
							<span class="modal_main_text">项目序号：</span><input type="text"name="ip.id" />
							<br>
							<br> 
							<span class="modal_main_text">项目名称：</span><input type="text" name="ip.name" />
							<br>
							<br> 
							
							<input type="submit" value="提交" />
						</form>
				
				</div> -->
			</div>
		</div>
	</div>





	<div id="footer">
		<p>
			Copyright 2017 版权所有 来源:<a>第七小组</a>
		</p>
	</div>
	<script>
		navList(12);
	</script>
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$("#sub").click(function() {
			var date = document.getElementById("date").value;
			if (date == "") {
				alert("暂时没有可发布的项目");
				return false;
			} else {
				alert("发布成功")
				return true;
			}
		})
	</script>
	-->
	<!-- <script>
		$(".e1").each(function(){
			var a=$(".e1").html();
			$.ajax{
				type:"post",
				url:"";
				data{dateTime:a},
				dataType:"json",
				success:function(data){
					
				}
			}
			
		})
	</script> -->
</body>
</html>
