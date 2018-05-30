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

<title>My JSP 'thehome1.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- css -->
<link
	href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.request.contextPath }/statics/css/thehome.css"
	rel="stylesheet" type="text/css" media="all" />
<style type="text/css">
</style>
<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js"></script>
</head>

<body>

	<div class="row">
		<nav class="navbar navbar-default" role="navigation">
		<div class="col-md-1"></div>
		<div class="col-md-7">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#menu">
					<span class="sr-only">展开导航</span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">网站标题</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="collapse navbar-collapse" id="menu">
				<ul class="nav navbar-nav">
					<li><a href="${pageContext.request.contextPath }/thehome.html">首页</a>
					</li>
					<li><a href="#">购物车</a>
					</li>
					<li><a href="#">我的收藏</a>
					</li>
					<li><a href="${pageContext.request.contextPath }/tologin">管理</a>
					</li>
					<li><a href="${pageContext.request.contextPath }/tuichu">退出</a>
					</li>
				</ul>
			</div>
		</div>
		</nav>
	</div>
	<form action="${pageContext.request.contextPath }/thehome.html">
		<div class="container" style="margin-left: 270px;">
			<div class="input-group" style="width: 840px;">
				<input type="text" name="comdityname" value="${comdityname}"
					class="form-control" placeholder="太阳伞"> <span
					class="input-group-btn">
					<button class="btn btn-default" type="submit">搜索</button> </span>
			</div>
		</div>
	</form>
	<div class="col-sm-3 col-md-3 col-lg-2">
		<div class="category">
			<div class="menu-bar"
				data-target="#category-menu,#category-menu-responsive"
				data-toggle="collapse" aria-expanded="true" role="button">
				<h4 class="category_text">菜单导航</h4>
				<span class="i-bar"><i class="fa fa-bars"></i> </span>
			</div>
		</div>
		<div id="category-menu-responsive" class="navbar collapse in"
			aria-expanded="true" role="button">
			<div class="nav-responsive">
				<ul class="main-navigation collapse in"
					style="position: relative;padding: 10px 10px;list-style-type: none;font-size: 5px;display: inline-block;">
					<c:forEach var="dao" items="${daohanList}" varStatus="statu">
						<li style="display: inline;width: 80px;margin:0px 5px 0px 0px;"
							class="col-md-6"><a href="#">${dao.propertyname}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<div class="col-sm-9 col-md-9 col-lg-8">
		<div class="container">
			<div class="product-easy">
				<div class="container">
					<div class="sap_tabs">
						<div id="horizontalTab">
							<div class="resp-tabs-container">
								<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++ -->
								<c:forEach var="com" items="${comditList}" varStatus="status">
									<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++ -->
									<div class="col-md-3 product-men"
										style="margin:8px 0px 8px 0px;width: 290px;">
										<!--  -->
										<div class="men-pro-item simpleCart_shelfItem">
											<div class="men-thumb-item">
												<img
													src="${pageContext.request.contextPath }/statics/img/${com.commodityavatar}"
													alt="" class="pro-image-front"> <img
													src="${pageContext.request.contextPath }/statics/img/${com.commodityimg}"
													alt="" class="pro-image-back">
												<div class="men-cart-pro">
													<div class="inner-men-cart-pro">
														<!--  -->
														<a href="${pageContext.request.contextPath }/xiangqing?id=${com.commodityid}&userid=${com.userid}" class="link-product-add-cart">快速浏览</a>
													</div>
												</div>
												<span class="product-new-top">月销量：${com.sales} 笔</span>

											</div>
											<div class="item-info-product ">
												<div style=" height: 30px">
													<a href="single.html">${com.commodityname}</a>
												</div>
												<div class="info-product-price" style="height: 30px">
													<!-- 折扣后的价格 -->
													<span class="item_price">￥${com.doDiscount}</span>
													<!-- 折扣前的价格 -->
													<del>￥${com.commodityprice}</del>
												</div>
												<a href="${pageContext.request.contextPath }/console1"
													class="item_add single-item hvr-outline-out button2">加入购物</a>
											</div>
										</div>
									</div>
								</c:forEach>
								<!-- +++++++++++++++++++++++++++++++++++++++++++++++++++ -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>





	<script
		src="${pageContext.request.contextPath }/statics/js/easyResponsiveTabs.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default',
				width : 'auto',
				fit : true
			});
		});
	</script>

</body>
</html>
