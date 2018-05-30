<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>代理商管理系统登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" />
<style>
html,body {
	width: 100%;
	height: 100%
}

body {
	width: 100%;
}
</style>
</head>

<body
	style="background:url(${pageContext.request.contextPath }/statics/img/beijing.jpg) no-repeat;	background-size: cover;">
	<div
		class="col-xs-8 col-xs-offset-2 col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3"
		style="margin-top: 15%;">
		<form action="${pageContext.request.contextPath }/doLogin.html" method="post">
			<div class="input-group col-md-8 col-md-offset-1">
				<span class="input-group-addon"><span
					class="glyphicon glyphicon-user"></span> </span> <input
					class="form-control" type="text" placeholder="手机/邮箱/用户名"
					required="required" name="userName"/>
			</div>
			<div style="margin-top: 10%;"
				class="input-group col-md-8 col-md-offset-1">
				<span class="input-group-addon"><span
					class="glyphicon glyphicon-paste"></span> </span> <input
					class="form-control" type="password" placeholder="密码"
					required="required" name="password"/>
			</div>

			<div style="margin-top: 5%;" class="col-md-8 col-md-offset-1">
				<input type="checkbox" />下次自动登录
			</div>
			<div class="col-md-4 col-md-offset-1">
				<input id="login" class="btn btn-primary form-control" type="submit"
					value="登录" />
			</div>
			<div class="col-md-4">
				<input id="regist" class="btn btn-default form-control"
					data-target="#myModal" data-toggle="modal" type="button" value="注册" />
			</div>
		</form>
	</div>
	<div id="myModal" class="modal fade bs-example-modal-sm">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<form action="ada">
					<div class="modal-header">
						<h3>用户注册</h3>
					</div>
					<div class="modal-body">
						<div class="input-group col-md-8 col-md-offset-2">
							<span class="input-group-addon"><span
								class="glyphicon glyphicon-user"></span> </span> <input
								class="form-control" type="text" placeholder="用户名"
								required="required" />
						</div>
						<div style="margin-top: 10%;"
							class="input-group col-md-8 col-md-offset-2">
							<span class="input-group-addon"><span
								class="glyphicon glyphicon-paste"></span> </span> <input id="pass1"
								class="form-control" type="text" placeholder="密码"
								required="required" />
						</div>
						<div style="margin-top: 10%;"
							class="input-group col-md-8 col-md-offset-2">
							<span class="input-group-addon"><span
								class="glyphicon glyphicon-paste"></span> </span> <input id="pass2"
								class="form-control" type="text" placeholder="确认密码"
								required="required" />

						</div>
						<span class="col-md-offset-2" style="color: red;"></span>
						<div style="margin-top: 10%;"
							class="input-group col-md-8 col-md-offset-2">
							<span class="input-group-addon"><span
								class="glyphicon glyphicon-phone"></span> </span> <input
								class="form-control" type="text" placeholder="手机号"
								required="required" />
						</div>

					</div>
					<div class="modal-footer">
						<div class="col-md-4 col-md-offset-4">
							<input id="regist" class="btn btn-primary form-control"
								type="submit" value="注册" />
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js"></script>
	<script>
		$("#pass2").blur(function() {
			if ($("#pass1").val() != $("#pass2").val()) {
				$("#pass2").parent().next().text("两次密码不一致！");
			}
		});
	</script>
</body>
</html>
