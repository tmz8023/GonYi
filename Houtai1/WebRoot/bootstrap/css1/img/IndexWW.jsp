<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
	 <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    
    <link rel="stylesheet" href="css/zTreeStyle.css" type="text/css"></link>
	  
	  <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
	  
	  <script type="text/javascript" src="js/jquery.ztree.all.min.js"></script>
	  
	  <script type="text/javascript" src="js/jquery.ztree.core.min.js"></script>
	
	  <script type="text/javascript" src="js/jquery.ztree.excheck.min.js"></script>
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
    <form class="form-inline definewidth m20" action="FuRoles_findRoles.action" method="post">  
	   	 角色名称：
	    <input type="text" name="name" id="name"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;  
	    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp; 
	   <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addUser">添加角色</button>
</form>
	<table class="table table-bordered table-hover definewidth m10" >
		    <thead>
		    <tr>
		        <th>角色编号</th>
		        <th>角色名称</th>
		         <th>角色备注</th>
		       <th>角色状态</th>  
		        <th>操作</th>
		    </tr>
		    </thead>
			    
	        <c:forEach items="${findrole}" var="userinfo">
	        	<tr class="trone">
	        		<td class="success userinfo" id="userinfo">${userinfo.role_id }</td>
	        		<td class="success haoname">${userinfo.role_name }</td>
	        		<td class="success">${userinfo.role_comment }</td>
	        		 <td class="success alaz">${userinfo.state_name }</td>  
	        		<td class="success">
	        			<button data-toggle="modal" data-target="#changeChar" class="btn btn-success btn-xs xiagai">修改</button>
	        			<a  class="btn  btn-xs zhano">禁用</a>
	        		</td>
	        	</tr>
	        </c:forEach>
	     </table>
     
     
            
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
                <form action="FuRoles_findAlljs.action" method="post" class="kaka"></form>
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
			{ id:1, pId:0, name:"后台管理", open:true},
			{ id:11, pId:1, name:"菜品管理", open:true},
			{ id:111, pId:11, name:"菜品种类"},
			{ id:112, pId:11, name:"菜品信息"},

			
			{ id:12, pId:1, name:"后厨管理", open:true},
			{ id:121, pId:12, name:"后厨工作"},
			{ id:122, pId:12, name:"传菜管理"},
			
			{ id:13, pId:1, name:"前台管理", open:true},
			{ id:131, pId:13, name:"桌台管理"},
			{ id:132, pId:13, name:"桌台信息"},
			
			{ id:14, pId:1, name:"订单管理", open:true},
			{ id:141, pId:14, name:"订单详情"},
			
			{ id:15, pId:1, name:"人员管理", open:true},
			{ id:151, pId:15, name:"部门管理"},
			{ id:152, pId:15, name:"员工管理"},
			
			{ id:16, pId:1, name:"系统管理", open:true},
			{ id:161, pId:16, name:"角色管理"},
			{ id:162, pId:16, name:"用户管理"},
			
			{ id:17, pId:1, name:"客户管理", open:true},
			{ id:171, pId:17, name:"客户信息管理"},
			
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
			url : "Quanxian_chachon.action",
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
			url : "Quanxian_addrole.action",
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
													{ id:1, pId:0, name:"后台管理", open:true},
													{ id:11, pId:1, name:"菜品管理", open:true},
													{ id:111, pId:11, name:"菜品种类"},
													{ id:112, pId:11, name:"菜品信息"},
										
													
													{ id:12, pId:1, name:"后厨管理", open:true},
													{ id:121, pId:12, name:"后厨工作"},
													{ id:122, pId:12, name:"传菜管理"},
													
													{ id:13, pId:1, name:"前台管理", open:true},
													{ id:131, pId:13, name:"桌台管理"},
													{ id:132, pId:13, name:"桌台信息"},
													
													{ id:14, pId:1, name:"订单管理", open:true},
													{ id:141, pId:14, name:"订单详情"},
													
													{ id:15, pId:1, name:"人员管理", open:true},
													{ id:151, pId:15, name:"部门管理"},
													{ id:152, pId:15, name:"员工管理"},
													
													{ id:16, pId:1, name:"系统管理", open:true},
													{ id:161, pId:16, name:"角色管理"},
													{ id:162, pId:16, name:"用户管理"},
													
													{ id:17, pId:1, name:"客户管理", open:true},
													{ id:171, pId:17, name:"客户信息管理"},
													
												];
												 $(document).ready(function(){
												$.fn.zTree.init($("#treeDemo1"), settinga, zNodesa);
											});
											var cuttid;
												$(".xiagai").click(
												function(){
												   $("#jjnn").val( $(this).parent().parent().find(".haoname").html());
												var tr = $.fn.zTree.getZTreeObj("treeDemo1");
													tr.checkAllNodes(false);
												 cuttid=$(this).parent().parent().find(".userinfo").html();
													$.ajax({
														type :"post",
														data:{cus_id:$(this).parent().parent().find(".userinfo").html()},
														url :"Quanxian_gaijiao.action",
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
														data:{cus_id:cuttid,shiid:su},
														url :"Quanxian_zaigai.action",
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
            
  	</body>
</html>


