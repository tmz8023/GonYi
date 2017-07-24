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


<script src="js/jquery.min.js"></script>
<script src="js/app.js"></script>



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
						<a href="sturts_select11.action">人事部</a><!-- <a href="zongjian.jsp">总监部</a> <a href="shenhebu.jsp">审核部</a><a href="caiwubu.jsp">财务部</a><a href="xinwenbu.jsp">新闻部</a> -->
					</div></li>
				<li>
					<h4 class="M10">
						<span></span>权限管理
					</h4>
					<div class="list-item none">
						<a href="emp_show.action">员工管理</a><a href="Rol_showRole.action">角色管理</a><!-- <a href="Aut_showAuth1.action">权限管理</a> -->
					</div></li>
				<li>
					<h4 class="M1">
						<span></span>审核管理
					</h4>
					<div class="list-item none">
						<a href="book_geren.action">用户信息审核</a> <a href="ww_Reviewprojectservlet.action">公益项目审核</a> <a href='book_shen.action'>资金申请审核</a>
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
						<!-- <a href="n_select.action">新闻发布</a> --> <!-- <a href='lishibiao1111.jsp'>理事管理</a> --> <a href='p_select1.action'>项目管理</a>
					</div></li>
				<li>
					<h4 class="M3">
						<span></span>财务管理
					</h4>
					<div class="list-item none">
						<a href="ww_finanaceconfirm.action">收入确认</a><a href='fy_fenye22.action'>捐款详情</a> <a href='book_chaxun.action'>支出详情</a><a href='book_fang.action'>理事状态</a> 
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
					<li><a href="#">理事管理</a>
					</li>
					<li>></li>
					<li><a href="#">项目申请</a>
					</li>
				</ul>
			</div>
			<div class="main">
				<!-- <div style="height:200px;">
					<div class="col-lg-6">
						<div class="input-group" style="float:left">

							<div style="float:left">
								
							</div>

							<form action="p_selectAll.action" method="post">
								<div style="float:left">
									<input type="text" class="form-control" placeholder="请输入关键字..."
										name="pl.council_person">
								</div>
								<div style="float:left">
									<span class="input-group-btn">
										<button class="btn btn-success" type="submit">查询</button> </span>
								</div>
							</form>

							<div style="margin:0px 250px;">
								<a href="enhao_fenye1.action">
									<button type="button" class="btn btn-primary">查询全部</button> </a>
							</div>
						</div>
					</div> -->
					<div style="height:350px;">
					<form action="enhao_Faqiservlet.action" method="post">
						<table border="1" class="table table-bordered"
							style="margin-left:0px;margin-right:5px;">
							<tr>
								
								<td>序号</td>
								<td>项目编号</td>
								<td>项目名称</td>
								<td>审核状态</td>
								<td>审核部审核人</td>
								<td>审核时间</td>
								<td>审核部意见</td>
								<td>理事审核人</td>
								<td>理事审核状态</td>
								<td>原因</td>
								<td>操作</td>
							</tr>
							<c:forEach items="${List.rows}" var="pp">
								<tr>
									
									<td><input type="text" size="5" name="sh_id"
										style="border:0px;background:rgba(0, 0, 0, 0);"
										value="${pp.sh_id }">
									</td>
									<td><input type="text" size="5" name="sh_xm_id"
										style="border:0px;background:rgba(0, 0, 0, 0);"
										value="${pp.sh_xm_id}"></td>
									<td><input type="text" size="5" name="sh_xm_name"
										style="border:0px;background:rgba(0, 0, 0, 0);"
										value="${pp.sh_xm_name}"></td>
									<td><input type="text" size="5" name="sh_states"
										style="border:0px;background:rgba(0, 0, 0, 0);"
										value="${pp.sh_states}"></td>
									<td><input type="text" size="5" name="sh_shname"
										style="border:0px;background:rgba(0, 0, 0, 0);"
										value="${pp.sh_shname}"></td>
									<td><input type="text" size="5" name="sh_date"
										style="border:0px;background:rgba(0, 0, 0, 0);"
										value="${pp.sh_date}"></td>
									<td><input type="text" size="5" name="sh_jianyi"
										style="border:0px;background:rgba(0, 0, 0, 0);"
										value="${pp.sh_jianyi}"></td>
									<td><input type="text" size="5" name="xm_person"
										style="border:0px;background:rgba(0, 0, 0, 0);"
										value="史志豪"></td>
									<td><input type="radio" value="审核通过" name="xm_states" />同意
										<input type="radio" value="审核未通过" name="xm_states" />拒绝</td>
									<td><textarea name="note" cols="15" rows=1 id="note"></textarea>
									</td>
									<td><button type="button"
											onclick="xiangqing('${pp.sh_xm_id}')"
											class="btn default btn-xs" data-toggle="modal"
											data-target=".bs-example-modal-lg" id="q1">详情</button>&nbsp;
										<button type="submit" class="btn default btn-xs" id="s">审核</button></td>
								</tr>
							</c:forEach>
						</table>
					</form>
					</div>
					<div style="margin:0px 450px;">${List.pageStr
						}&nbsp;&nbsp;&nbsp;共&nbsp;${List.total }&nbsp;条数据&nbsp;&nbsp;
						共&nbsp;${List.allPage }&nbsp;页</div>
				</div>
			</div>
		</div>
	</div>
	<div class="bottom"></div>


	<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="gridSystemModalLabel">项目详情</h4>
				</div>
				<div class="modal-body">
					<table border="1" class="table table-bordered" id="tab"
						style="margin-left:0px;margin-right:5px;">
						<tr>
							<td>项目编号</td>
							<td>项目名称</td>
							<td>申请人</td>
							<td>申请原因</td>
							<td>申请金额</td>
							<td>类别</td>
							<td>审核时间</td>
							<td>初审状态</td>
							<td>项目所需金额</td>
						</tr>
						<%-- <c:forEach items="${ls}" var="en">
							<tr>
								<td>${en.ask_id }</td>
								<td>${en.ask_name }</td>
								<td>${en.ask_sqname }</td>
								<td>${en.ask_reason }</td>
								<td>${en.ask_money }</td>
								<td>${en.ask_type }</td>
								<td>${en.ask_time }</td>
								<td>${en.ask_status }</td>
								<td>${en.ask_jianyi }</td>
							</tr>
						</c:forEach> --%>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
				</div>
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
	<script>
		function xiangqing(index) {
			$.ajax({
				type : "post",
				url : "/Houtai1/enhao_Select.action",
				dataType : "text",
				data : {
					id : index
				},
				success : function(data) {
					var arr = data.split(",");
					var str = "";
					for ( var i = 0; i < arr.length; i++) {
						var st = "<td>" + arr[i] + "</td>";
						str += st;
					}
					var strr = "<tr class='trone'>" + str + "</tr>";
					$(".trone").remove();
					$("#tab").append(strr);
				}
			})
		}
		$("#s").click(function(){
			var note=$("#note").val();
			if(note.length==0){
				alert("请认真审核该项目");
				return false;
			}else{
				alert("审核成功");
				return true;
			}
		})
	</script>
</body>
</html>
