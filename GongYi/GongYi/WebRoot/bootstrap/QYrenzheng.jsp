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
#sub{
	background:orange;
}
</style>
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

		 <form action="ww_uploadfile.action"  method="post" onsubmit="return checkForm()" name="authForm"  id="authForm" target="upload_c_iframe" enctype="multipart/form-data">
	 	<div class="main">
	 		<div style="width:62%;float:left;">
	 		<p class="form_top">公益机构注册(以下信息均为必须填写)</p>
	 		<hr>
		 	<div class="form_group_row">
		 		<div class="form_side_intro">机构全称：</div>
		 		<div class="form_main">
		 			<input type="text" name="ursename" id="ursename">
		 			&nbsp;&nbsp;&nbsp;<span id="span1" style="color:red"></span>
		 		</div>
		 	</div>
		 	<div class="form_group_row">
		 		<div class="form_side_intro">机构电话：</div>
		 		<div class="form_main">
		 			<input type="text" name="name" id="name">
		 			&nbsp;&nbsp;&nbsp;<span id="span2" style="color:red"></span>
		 		</div>
		 	</div>
		 	<div class="form_group_row">
		 		<div class="form_side"><span class="form_side_xingzhi">机构性质：</span></div>
		 		<div class="form_main">
		 		<select name="work" id="word" style="margin-left:-320px;width:300px;height:30px;">
		 			<option>国有企业 </option><option>集体企业</option><option>股份合作制企业</option><option>私营企业</option><option>有限责任公司</option>
		 		</select>
		 			
		 		</div>
		 	</div>
		 	
		 	<div class="form_group_row">
		 		<div class="form_side_intro">成立日期：</div>
		 		<div class="form_main">
		 			<input type="text" onfocus="HS_setDate(this)" name="data" id="data" placeholder="开始时间">
		 		</div>
		 	</div>
		 	
		 	<div class="form_group_row">
		 		<div class="form_side_intro">法人代表：</div>
		 		<div class="form_main">
		 			<input type="text" name="faren" id="faren">
		 			&nbsp;&nbsp;&nbsp;<span id="span3"></span>
		 		</div>
		 	</div>
		 	
		 	<div class="form_group_row">
		 		<div class="form_side_intro">身份证号：</div>
		 		<div class="form_main">
		 			<input type="text" name="ID_number" id="number" >
		 			&nbsp;&nbsp;&nbsp;<span id="span4" style="color:red"></span>
		 		</div>
		 	</div>
	 		<div class="form_group_row">
	 			<div class="form_side_intro">机构简介：</div>
	 			<div class="form_intro">
	 				 <textarea name="summary" id="textarea" cols="10" rows="4" class="form_textarea" style="width:300px"></textarea>
                     <div class="form-msg-wrap"><span class="form_msg">(请填写个人简介，以便于大家了解并支持您的项目，不超过40个汉字)</span></div>
	 			</div>
	 		</div>
		 	<div class="form_group_row">
		 		<div class="form_side_intro">上传资料：</div>
		 		<div class="form_main">
		 			<input type="file" name="proFile" />
		 			<span id="span5"></span>
		 		</div>
		 	</div>
			<div class="from_submit" id="middle-right-bottom">
				<input class="btn btn-warning" type="submit" value="提交认证" id="sub"></input>
			</div>
			</div>
			<div style="width:38%;float:left;"><img src="images/QYrenzhen.gif" style="margin-top:150px"/></div>
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
		
		<script type="text/javascript">
		$("#sub").click(function(){
			var name=document.getElementById("textarea").value;
			if(name.length==0){
				alert("请认真填写信息！");
				return false;
			}return true;
		})
		$("#ursename").blur(function(){
			var user=$("#ursename").val();
			var u=/[\u4e00-\u9fa5]/;
			if(!u.test(user)){
				document.getElementById("span1").innerHTML = "请输入中英文结合的名称";
				return false;
			}else{
				document.getElementById("span1").innerHTML = "";
				return true;
			}
		})
		$("#name").blur(function(){
			var ph=/^((0?1[358]\d{9})|((0(10|2[1-3]|[3-9]\d{2}))?[1-9]\d{6,7}))$/;
			var phone=$("#name").val();
			if(!ph.test(phone)){
				document.getElementById("span2").innerHTML = "号码格式不正确";
				return false;
			}else{
				document.getElementById("span2").innerHTML = "";
				return true;
			}
		})
		$("#number").blur(function(){
			var num = /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;
			var nb=$("#number").val();
			if(!num.test(nb)){
				document.getElementById("span4").innerHTML = "身份证格式不正确";
				return false;
			}else{
				document.getElementById("span4").innerHTML = "";
				return true;
			}
		})
	</script>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> <script
			src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script> <!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
</body>
</html>
