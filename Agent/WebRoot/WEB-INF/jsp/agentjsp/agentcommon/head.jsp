<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>代理商管理系统</title>

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
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/head.css" />
</head>
<body>
	<header>
	<p
		style="color: white;flex: 3;text-align: center;font-size: 20px;margin-top:5px;">后台管理</p>
	<p style="flex: 2;">
		<span class="glyphicon glyphicon-align-justify"
			style="margin:10px 0px 0px 10px;"></span>
	</p>
	<p style="flex:15;">
		<span style="float: right;" class="headRight"><span
			class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a
			href="${pageContext.request.contextPath }/tuichu">退出</a><span
			class="glyphicon glyphicon-cog" aria-hidden="true"></span>
	</p>
	</header>
	<section>
	<div class="left" style="overflow: hidden;">
		<dl>
			<dt>
				<img
					src="${pageContext.request.contextPath }/statics/img/${user.avatar}"
					style="height: 50px;width: 50px;">&nbsp;&nbsp; <label>${user.userName
					}<br /> <span><img
						src="${pageContext.request.contextPath }/statics/img/在线.png"><a
						href="${pageContext.request.contextPath }/tuichu"
						style="font-size: 2px">在线</a> </span> </label>
			</dt>
			<dd>代理商模块</dd>
			<ul>
				<li><span class="glyphicon glyphicon-blackboard"
					aria-hidden="true"></span><a
					href="${pageContext.request.contextPath }/console">控制台</a><span
					class="glyphicon glyphicon-menu-left" aria-hidden="true"></span></li>
				<li><span class="glyphicon glyphicon-list-alt"
					aria-hidden="true"></span><a
					href="${pageContext.request.contextPath }/billlist">订单管理</a><span
					class="glyphicon glyphicon-menu-left" aria-hidden="true"></span></li>
				<li><span class="glyphicon glyphicon-user" aria-hidden="true"></span><a
					href="${pageContext.request.contextPath }/inventorylist">库存管理</a><span
					class="glyphicon glyphicon-menu-left" aria-hidden="true"></span></li>
			</ul>
			<dd>平台模块</dd>
			<ul>
				<li><span class="glyphicon glyphicon-list" aria-hidden="true"></span><a
					href="${pageContext.request.contextPath }/commoditylist">产品管理</a><span
					class="glyphicon glyphicon-menu-left" aria-hidden="true"></span></li>
				<div class="daili" style="display: none;">
					<p class="xiala" style="margin:0px 0px 5px 10px;">
						<input type="radio"><a href="#" style="font-weight:100;">产品分类</a>
					</p>
					<p class="xiala" style="margin:10px 0px 0px 10px;">
						<input type="radio"><a href="#" style="font-weight:100;">产品列表</a>
					</p>
					<p class="xiala"
						style="margin:10px 0px 0px 10px;padding:0px 0px 5px 0px;">
						<input type="radio"><a href="#" style="font-weight:100;">产品属性</a>
					</p>
				</div>
				<li><span class="glyphicon glyphicon-tasks" aria-hidden="true"></span><a
					href="${pageContext.request.contextPath }/wallet/wallet">财务管理</a><span
					class="glyphicon glyphicon-menu-left" aria-hidden="true"></span></li>
				<li><span class="glyphicon glyphicon-user" aria-hidden="true"></span><a
					href="${pageContext.request.contextPath }/customer.html">客户管理</a><span
					class="glyphicon glyphicon-menu-left" aria-hidden="true"></span></li>
				<li><span class="glyphicon glyphicon-magnet" aria-hidden="true"></span><a
					href="${pageContext.request.contextPath }/sendemail">意见反馈</a><span
					class="glyphicon glyphicon-menu-left" aria-hidden="true"></span></li>
				<li><span class="glyphicon glyphicon-th" aria-hidden="true"></span><a
					href="${pageContext.request.contextPath }/statistical">统计分析</a><span
					class="glyphicon glyphicon-menu-left" aria-hidden="true"></span></li>
				<li><span class="glyphicon glyphicon-cog" aria-hidden="true"></span><a
					href="${pageContext.request.contextPath }/chatime">系统设置</a><span
					class="glyphicon glyphicon-menu-left" aria-hidden="true"></span></li>
			</ul>
		</dl>
	</div>