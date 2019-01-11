<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cs" uri="http://cs.xyafu/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>客户管理-BootCRM</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
	
	<link href="<%=basePath%>css/bootstrap-select.min.css" rel="stylesheet" type="text/css" />
	
	
	<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<script src="<%=basePath%>js/bootstrap-select.min.js"></script>
<script src="<%=basePath%>js/defaults-zh_CN.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>

</head>


<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>visit/list.action">BOOT客户管理系统 v2.0</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>张经理</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>今天晚上开会，讨论一下下个月工作的事...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               用户：${USER_SESSION.user_name}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath}/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/customer/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 客户管理
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/visit/list.action">
				      <i class="fa fa-dashboard fa-fw" ></i> 客户拜访
				    </a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
  
  
  
    <!-- 客户列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">拜访管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="post" 
				      action="${pageContext.request.contextPath }/visit/list.action">
					<div class="form-group">
						<label for="customerName">客户名称</label> 
						<input type="text" class="form-control" id="customerName" 
						                   value="${custName}" name="custName" />
					</div>
					<div class="form-group">
						<label for="customerFrom">客户来源</label> 
						<select	class="form-control" id="customerFrom" name="custSource">
							<option value="">--请选择--</option>
							<c:forEach items="${fromType}" var="item">
								<option value="${item.dict_id}"
								       <c:if test="${item.dict_id == custSource}">selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="custIndustry">所属行业</label> 
						<select	class="form-control" id="custIndustry"  name="custIndustry">
							<option value="">--请选择--</option>
							<c:forEach items="${industryType}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == custIndustry}"> selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group">
						<label for="custLevel">客户级别</label>
						<select	class="form-control" id="custLevel" name="custLevel">
							<option value="">--请选择--</option>
							<c:forEach items="${levelType}" var="item">
								<option value="${item.dict_id}"
								        <c:if test="${item.dict_id == custLevel}"> selected</c:if>>
								    ${item.dict_item_name }
								</option>
							</c:forEach>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newCustomerDialog" onclick="clearCustomer()">新建</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">客户信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>拜访编号</th>
								<th>客户编号</th>
								<th>客户名称</th>
								<th>业务员编号</th>
								<th>业务员姓名</th>
								<th>拜访时间</th>
								<th>拜访方式</th>
								<th>拜访地点</th>
								<th>拜访内容</th>
								<th>操作</th>
							</tr>
						</thead>
				
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr style="text-align: center;">
									<td>${row.visit_id}</td>
									<td>${row.customer_id}</td>
									<td>${row.customer_name}</td>
									<td>${row.user_id}</td>
									<td>${row.user_name}</td>
									<td>${row.visit_time}</td>
								    <td>${row.visit_type}</td>
								    <td>${row.visit_place}</td>
								    <td>${row.remark}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick= "editCustomer(${row.visit_id})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteCustomer(${row.visit_id})">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<cs:page url="${pageContext.request.contextPath }/visit/list.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 客户列表查询部分  end-->
</div>


<!-- 创建客户模态框 -->
<div class="modal fade" id="newCustomerDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建拜访信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_customer_form">
				   
				   <div class="form-group">
						<label for="new_customerId" class="col-sm-2 control-label">
						    客户Id
						</label>
						
						<div class="col-sm-10">
						<select class="selectpicker" data-live-search="true" data-size="5" id="new_customerId" name="cust_Id" onchange="show()">
						<option value="">--请选择--</option>
								<c:forEach items="${cus}" var="item">
									<option id="op" value="${item.cust_id}">${item.cust_id }</option>
								</c:forEach>
						</select>
							
						</div>
					</div>
					<div class="form-group">
						<label for="new_customerName" class="col-sm-2 control-label">
						    客户名称
						</label>
						<div class="col-sm-10">
							<select class="selectpicker" data-live-search="true" data-size="5" id="new_customerName" name="cust_name">
						<option value="">--请选择--</option>
								<c:forEach items="${cus}" var="item">
									<option  value="${item.cust_name}">${item.cust_name }</option>
								</c:forEach>
						</select>
						</div>
					</div>
					<div class="form-group">
						<label for="user_id" class="col-sm-2 control-label">业务员Id</label>
						<div class="col-sm-10">
						
						<select class="selectpicker" data-live-search="true" data-size="5" id="user_id" name="user_id">
						<option value="">--请选择--</option>
								<c:forEach items="${user}" var="item">
									<option  value="${item.user_id}">${item.user_id }</option>
								</c:forEach>
						</select>
							
						</div>
					</div>
					<div class="form-group">
						<label for="user_name" class="col-sm-2 control-label">业务员</label>
						<div class="col-sm-10">
						
						<select class="selectpicker" data-live-search="true" data-size="5" id="user_name" name="user_name">
						<option value="">--请选择--</option>
								<c:forEach items="${user}" var="item">
									<option  value="${item.user_name}">${item.user_name }</option>
								</c:forEach>
						</select>
							
						</div>
					</div>
					<div class="form-group">
						<label for="visit_type" class="col-sm-2 control-label">拜访方式</label>
						<div class="col-sm-10">
						<select	class="form-control" id="visit_type"  name="visit_type" style="width: 225px;">
							<option value="">--请选择--</option>
							<option value="网络">网络</option>
							<option value="电话">电话</option>
							<option value="现实面对面">现实面对面</option>
						</select>	
						</div>
					</div>
					<div class="form-group">
						<label for="visit_place" class="col-sm-2 control-label">拜访地点</label>
						<div class="col-sm-10">
							<input type="text"  style="width: 225px;" class="form-control" id="visit_place" placeholder="拜访地点" name="visit_place" />
						</div>
					</div>
					<div class="form-group">
						<label for="visit_time" class="col-sm-2 control-label">拜访时间</label>
						<div class="col-sm-10">
							<input type="date"  style="width: 225px;" class="form-control" id="visit_time" placeholder="2019/01/01" name="visit_time" />
						</div>
					</div>
					<div class="form-group">
						<label for="remark" class="col-sm-2 control-label">拜访内容</label>
						<div class="col-sm-10">
							<textarea rows="" cols=""  style="width: 225px;" class="form-control" id="remark" placeholder="拜访内容" name="remark"></textarea> 
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createVisit()">创建客户</button>
			</div>
		</div>
	</div>
</div>


<!-- 修改客户模态框 -->
<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改拜访信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_customer_form">
					<input type="hidden" id="change_visit_id" name="visit_id"/>
					 <div class="form-group">
						<label for="new_customerId" class="col-sm-2 control-label">
						    客户Id
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="change_new_customerId" placeholder="客户Id" name="cust_Id" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_customerName" class="col-sm-2 control-label">
						    客户名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="change_new_customerName" placeholder="客户名称" name="cust_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="user_id" class="col-sm-2 control-label">业务员Id</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="change_user_id" placeholder="业务员Id" name="user_id" />
						</div>
					</div>
					<div class="form-group">
						<label for="user_name" class="col-sm-2 control-label">业务员</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="change_user_name" placeholder="业务员" name="user_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="visit_type" class="col-sm-2 control-label">拜访方式</label>
						<div class="col-sm-10">
						<select	class="form-control" id="change_visit_type"  name="visit_type">
							<option value="">--请选择--</option>
							<option value="网络">网络</option>
							<option value="电话">电话</option>
							<option value="现实面对面">现实面对面</option>
						</select>	
						</div>
					</div>
					<div class="form-group">
						<label for="visit_place" class="col-sm-2 control-label">拜访地点</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="change_visit_place" placeholder="拜访地点" name="visit_place" />
						</div>
					</div>
					<div class="form-group">
						<label for="visit_time" class="col-sm-2 control-label">拜访时间</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="change_visit_time" placeholder="拜访时间" name="visit_time" />
						</div>
					</div>
					<div class="form-group">
						<label for="remark" class="col-sm-2 control-label">拜访内容</label>
						<div class="col-sm-10">
							<textarea rows="" cols="" class="form-control" id="change_remark" placeholder="拜访内容" name="remark"></textarea> 
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateCustomer()">保存修改</button>
			</div>
		</div>
	</div>
</div>



<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建客户窗口中的数据
	function clearCustomer() {
		
		$("#new_customerId").options.val("");
	    $("#new_customerName").options.val("");
	    $("#user_id").val("")
	    $("#user_name").val("")
	    $("#visit_type").val("")
	    $("#visit_place").val("")
	    $("#visit_time").val("");
	    $("#remark").val(""); 
	}
	
	function show(){
		var a=$("#new_customerId").val();
		$.ajax({
			type:"post",
			url:"<%=basePath%>visit/getCustById.action",
			data:{"a":a},
			success:function(data){
				$("#opp").style.visibility="hidden";
				
			}
		});
		
	}
	
	// 创建客户
	function createVisit() {
	$.post("<%=basePath%>visit/create.action",
	$("#new_customer_form").serialize(),function(data){
	        if(data == "OK"){
	            alert("客户创建成功！");
	            window.location.reload();
	        }else{
	            alert("客户创建失败！");
	            window.location.reload();
	        }
	    });
	}
	
	
	// 通过id获取修改的客户信息
	function editCustomer(id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>visit/getVisitById.action",
	        data:{"id":id},
	        success:function(data) {
	        	$("#change_visit_id").val(data.visit_id);
	            $("#change_new_customerId").val(data.customer_id);
	            $("#change_new_customerName").val(data.customer_name);
	            $("#change_user_id").val(data.user_id)
	            $("#change_user_name").val(data.user_name)
	            $("#change_visit_type").val(data.visit_type)
	            $("#change_visit_place").val(data.visit_place);
	            $("#change_visit_time").val(data.visit_time);
	            $("#change_remark").val(data.remark);
	        }
	    });
	}
	
    // 执行修改客户操作
	function updateCustomer() {
		$.post("<%=basePath%>visit/update.action",$("#edit_customer_form").serialize(),function(data){
			if(data == "OK"){
				alert("客户信息更新成功！");
				window.location.reload();
			}else{
				alert("客户信息更新失败！");
				window.location.reload();
			}
		});
	}
	
	// 删除客户
	function deleteCustomer(id) {
	    if(confirm('确实要删除该客户吗?')) {
			$.post("<%=basePath%>visit/delete.action",{"id":id},
				function(data){
			        if(data == "OK"){
			            alert("客户删除成功！");
			            window.location.reload();
			        }else{
			            alert("删除客户失败！");
			            window.location.reload();
			        }
			});
	    }
	 }
	
	

</script>


</body>
</html>