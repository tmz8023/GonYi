<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
	 <title></title>
    <meta charset="UTF-8">
    <link type="text/css" rel="stylesheet" href="css/style.css" />
   	<script type="text/javascript" src="js/menu.js"></script>
   	<script src="js/ie-emulation-modes-warning.js"></script>
   	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
   
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
    <link rel="stylesheet" href="css/style.css" type="text/css"></link>
    <script type="text/javascript" src="js1/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script>
    	$(document).on("click","#aa",function(){
			var uname = $(this).parent().parent().siblings().eq(1).html();
			$("#jjnn").val(uname);
			$.ajax({
				type:"post",
				async:false,
				data:{"uname":uname},
				url:"",
				dataType:"json",
				success:function(data){
				  var suoid = data.split(",");
				   suoid.length=suoid.length-1;
				   var ids =suoid;
				   var treeObj = $.fn.zTree.getZTreeObj("treeDemo1");
				    var  l = ids.length; 
					for(var i = 0; i < l; i ++ ) { 
						var node = treeObj.getNodeByParam("id",ids[i]);
					    treeObj.checkNode(node,true); 
					} 
				}
			});
		});
		
		var su="";
		$("#shangj").click(function(){
		var treeObj = $.fn.zTree.getZTreeObj("treeDemo1");
		var nodes = treeObj.transformToArray(treeObj.getNodes()); 
	    var n="";
	 	for (var i = 0; i < nodes.length; i++) { 
		var checked = nodes[i].checked; 
		if(checked){
		n+=nodes[i].id+",";
		}
		su=n;
		}  
		
	
		$.ajax({
				type :"post",
				data:{cus_id:cuttid,shiid:su},
				url :"Rol_zaigai.action",
				dataType:"text",
				success : function(data){
				if(data=="true"){
					alert("修改成功");
				}else{
					alert("失败");
				}
				
				}
		
		}); 
	});
    </script>
    <link rel="stylesheet" href="css1/zTreeStyle.css" type="text/css"></link>
	  <script type="text/javascript" src="js1/jquery-1.4.4.min.js"></script>
	  
	  <script type="text/javascript" src="js1/jquery.ztree.all.min.js"></script>
	  
	  <script type="text/javascript" src="js1/jquery.ztree.core.min.js"></script>
	
	  <script type="text/javascript" src="js1/jquery.ztree.excheck.min.js"></script>
    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }

      .kaka{
      	display: none;
      }
    </style>
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
				<li>
					<a href="houtai.jsp" style="font-size:15px;">首页</a>
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
						<a href="sturts_select11.action">人事部</a> <!-- <a href="zongjian.jsp">总监部</a><a href="shenhebu.jsp">审核部</a><a href="caiwubu.jsp">财务部</a><a href="xinwenbu.jsp">新闻部</a> -->
					</div>
					</li>
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
						<a href="book_geren.action">用户信息审核</a><a href="ww_Reviewprojectservlet.action">公益项目审核</a> <a href='book_shen.action'>资金申请审核</a>
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
					<li><img src="images/home.png" style="margin-bottom:40px;">
					</li>
					<li style="margin-left:25px;">您当前的位置：</li>
					<li><a href="#">权限管理</a>
					</li>
					<li>></li>
					<li><a href="#">角色管理</a>
					</li>
				</ul>
			</div>
			<div class="main">
			
			
			
			
			
			
			
			
			  <form class="form-inline definewidth m20" action="FuRoles_findRoles.action" method="post">  
	   	<!--  角色名称： -->
	   <!--  <input type="text" name="name" id="name"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;  
	    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp;  -->
	   <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addUser">添加角色</button>
</form>
	<table border="1" class="table table-bordered" >
		  
		    <tr>
		        <th>角色编号</th>
		        <th>角色名称</th>
		       <th>角色状态</th>  
		        <th>操作</th>
		    </tr>
		   
			    
	        <c:forEach items="${listRR}" var="ee">
								<tr>
									
									<td class="userinfo">${ee.role_id}</td>		
									<td>${ee.role_name}</td>
									<td>${ee.statusRole}</td>								
						    		<td>					   	
					                	<div class="btn-toolbar">
					                		  <button data-toggle="modal" data-target="#changeChar" id="aa" class="btn btn-success btn-xs xiagai">修改</button>
	        								  <a  class="btn  btn-xs zhano">禁用</a>
					                  	</div>         
									</td>
							   </tr>
							</c:forEach>
	     </table>
     
     
            
          
                
             
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
					
				</div>
			</div>
		</div>
		
		  <!--弹出添加角色窗口-->
                <div class="modal fade" id="addUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加角色</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form action="index.jsp" method="post" class="definewidth m20">
				   				 		<table class="table table-bordered table-hover definewidth m10">
									        <tr>
									            <td width="10%" class="tableleft">角色名称</td>
									          <td><input type="text" name="title" id="jiaoname"/></td> 
									           
									          
									        </tr>
									   
									        <tr>
									            <td class="tableleft">权限</td>
									            <td>
									            	 <div class="zTreeDemoBackground left">
														<ul id="treeDemo" class="ztree"></ul>
													</div>
									            </td>
									        </tr>						 
							    	</table>
				
							    	<div class="modal-footer">
					                      <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
					                      <button type="button" class="btn btn-xs btn-green" data-dismiss="modal" id="baochun">保 存</button>
					                 </div>
								</form>
    						</div>
  						</div>
                       </div>
                    </div>
                </div>
                <form action="Rol_showRole.action" method="post" class="kaka"></form>
                					<SCRIPT type="text/javascript">
	
		var setting = {
			check: {
				enable: true,
				chkStyle: "checkbox",
				chkboxType: { "Y": "ps", "N": "ps" }//子类与父类之间的关系
			},
			data: {
				simpleData: {
					enable: true
				}
			},
			view: {
					showIcon: false//是否显示节点图标
				},
			
			 callback:{
                onCheck:onCheck
            }
					
			};

		var zNodes =[
			
			{ id:11, pId:1, name:"部门管理", open:true},
			{ id:111, pId:11, name:"人事部"},

			
			{ id:12, pId:1, name:"权限管理", open:true},
			{ id:121, pId:12, name:"员工管理"},
			{ id:122, pId:12, name:"角色管理"},
			
			
			{ id:13, pId:1, name:"审核管理", open:true},
			{ id:131, pId:13, name:"用户信息审核"},
			{ id:132, pId:13, name:"公益项目审核"},
			{ id:133, pId:13, name:"资金申请审核"},
			
			{ id:14, pId:1, name:"理事管理", open:true},
            { id:141, pId:14, name:"资金审核"},
			{ id:142, pId:14, name:"项目审核"},
			
			{ id:15, pId:1, name:"执行管理", open:true},
			{ id:151, pId:15, name:"新闻发布"},
			{ id:152, pId:15, name:"项目管理"},
			
			{ id:16, pId:1, name:"财务管理", open:true},
			{ id:161, pId:16, name:"收入确认"},
			{ id:162, pId:16, name:"捐款详情"},
			{ id:163, pId:16, name:"支出详情"},
			{ id:164, pId:16, name:"理事状态"},
																
			{ id:17, pId:1, name:"查询管理", open:true},
			{ id:171, pId:17, name:"用户查询"},
			{ id:172, pId:17, name:"支出项目"},
			
		];
		
		$(document).ready(function(){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		
		var aaa;
		var bbb;
           
            function onCheck(e,treeId,treeNode){
            var treeObj=$.fn.zTree.getZTreeObj("treeDemo"),
            nodes=treeObj.getCheckedNodes(true),
            v="";
            var n="";
            for(var i=0;i<nodes.length;i++){
            if(i==0){v=""; n="";}
            v+=nodes[i].name + ",";
            n+=nodes[i].id+",";
            
             //获取选中节点的值
            }
             aaa=v;
             bbb=n;
            }
            $("#jiaoname").blur(function(){
            $.ajax({
			type : "post",
			data:{rolena:$(this).val()},
			url : "Rol_chachon.action",
			dataType : "text",
			success : function(data){
				if(data=="false"){
					 $("#jiaoname").val("");
					 alert("该角色已存在哦");
					}
														
		}
		});
              
              
              
              
              
              
            });
           
          	$("#baochun").click(function(){
          		var fa=$("#jiaoname").val();
                 if(fa==""){alert("角色名不为空"); return;}
				$.ajax({
			type : "post",
			data:{shiname:aaa,shiid:bbb,rolena:$("#jiaoname").val()},
			url : "Rol_addrole.action",
			dataType : "text",
			success : function(data){
				if(data=="true"){
					alert("添加成功");
					$(".kaka").submit();
					}else{
					alert("失败");
					}
														
		}
		});
		 });
		</SCRIPT>
		
		<!--修改角色弹出窗口-->
                <div class="modal fade" id="changeChar" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改角色</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                     <form action="index.jsp" method="post" class="definewidth m20">
								   			<table class="table table-bordered table-hover definewidth m10">
								        <tr>
								            <td width="10%" class="tableleft">角色名称</td>
								            <td><input type="text" name="title" id="jjnn" disabled="disabled"/></td>
								        </tr>
								       
								        <tr>
								            <td class="tableleft">权限</td>
								            <td>
								            	 <div class="zTreeDemoBackground left">
														<ul id="treeDemo1" class="ztree"></ul>
												</div>
								            </td>
								        </tr>
								    </table>
								    
								     <div class="modal-footer">
		                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
		                                <button type="button" class="btn btn-xs btn-green" data-dismiss="modal" id="shangj">保 存</button>
		                            </div>
								</form>
                              </div>
                            </div>
                        </div>
                    </div>
                </div> 
                
                 <SCRIPT type="text/javascript">
                
											var settinga = {
												check: {
													enable: true,
													chkStyle: "checkbox",
													chkboxType: { "Y": "ps", "N": "ps" }//子类与父类之间的关系
												},
												data: {
													simpleData: {
														enable: true
													}
												},
												view: {
														showIcon: false//是否显示节点图标
													},	
												};
									
											var zNodesa =[
													
													{ id:11, pId:1, name:"部门管理", open:true},
													{ id:111, pId:11, name:"人事部"},
													
										
													
													{ id:12, pId:1, name:"权限管理", open:true},
													{ id:121, pId:12, name:"员工管理"},
													{ id:122, pId:12, name:"角色管理"},
													
													
													{ id:13, pId:1, name:"审核管理", open:true},
													{ id:131, pId:13, name:"用户信息审核"},
													{ id:132, pId:13, name:"公益项目审核"},
													{ id:133, pId:13, name:"资金申请审核"},
													
													{ id:14, pId:1, name:"理事管理", open:true},
													{ id:141, pId:14, name:"资金审核"},
													{ id:142, pId:14, name:"项目审核"},
													
													{ id:15, pId:1, name:"执行管理", open:true},
													{ id:151, pId:15, name:"新闻发布"},
													{ id:152, pId:15, name:"项目管理"},
													
													{ id:16, pId:1, name:"财务管理", open:true},
													{ id:161, pId:16, name:"收入确认"},
													{ id:162, pId:16, name:"捐款详情"},
													{ id:163, pId:16, name:"支出详情"},
													{ id:164, pId:16, name:"理事状态"},
																										
													{ id:17, pId:1, name:"查询管理", open:true},
													{ id:171, pId:17, name:"用户查询"},
													{ id:172, pId:17, name:"支出项目"},
													
												];
												 $(document).ready(function(){
												$.fn.zTree.init($("#treeDemo1"), settinga, zNodesa);
											});
											
											
											var cuttid;
												$(".xiagai").click(
												function(){
												$(this).parent().parent().parent().find(".userinfo").html();
												  // $("#jjnn").val( $(this).parent().parent().find(".haoname").html());
												var tr = $.fn.zTree.getZTreeObj("treeDemo1");
													tr.checkAllNodes(false);
												 cuttid=$(this).parent().parent().parent().find(".userinfo").html();
													$.ajax({
														type :"post",
														data:{uname:$(this).parent().parent().parent().find(".userinfo").html()},
														url :"Rol_gaijiao.action",
														dataType:"text",
														success : function(data) {
														
													    var suoid = data.split(",");
													   suoid.length=suoid.length-1;
													   var ids =suoid;
													   var treeObj = $.fn.zTree.getZTreeObj("treeDemo1");
													    var  l = ids.length; 
														for(var i = 0; i < l; i ++ ) { 
														var node = treeObj.getNodeByParam("id",ids[i]);
													    treeObj.checkNode(node,true); 
													} 
														}
													});
												}
												);
												var su="";
												$("#shangj").click(function(){
												var treeObj = $.fn.zTree.getZTreeObj("treeDemo1");
												var nodes = treeObj.transformToArray(treeObj.getNodes()); 
											    var n="";
											 	for (var i = 0; i < nodes.length; i++) { 
												var checked = nodes[i].checked; 
												if(checked){
													n+=nodes[i].id+",";
												}
													su=n;
												}  
											
												$.ajax({
														type :"post",
														data:{uname:cuttid,shiid:su},
														url :"Rol_zaigai.action",
														dataType:"text",
														success : function(data){
														if(data=="true"){
															alert("修改成功");
														}else{
															alert("失败");
														}
														
														}
												
												}); 
											});
										</SCRIPT>
										<script>
										(function() {
											$(".trone").each(
													function(){
													
													    var  bian= $(this).find(".userinfo").html();
														var zt = $(this).find(".alaz").html();
														
														 if (zt == "启用") {
														var id = $(this).find(".zhano").html("禁用");
														
														$(this).find(".zhano").attr("href","FuRoles_updateZai.action?role_id="+bian);
														
														$(this).find(".zhano").addClass("btn-danger");
														} else if (zt == "禁用") {
															var id = $(this).find(".zhano").html("启用");
														$(this).find(".zhano").attr("href","FuRoles_update.action?role_id="+bian);
														$(this).find(".zhano").addClass("btn-success");
														} 
													});
										})();
										
										</script>
	
	<div id="footer">
		<p>
			Copyright© 2017 版权所有 来源:<a>第七小组</a>
		</p>
	</div>
	<script>navList(12);</script>
	
</body>
</html>
