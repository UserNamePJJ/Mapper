<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>My JSP 'xiangqing.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/xiangqing.css" />

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
					<li><a href="${pageContext.request.contextPath }/thehome.html">首页</a></li>
					<li><a href="#">购物车</a></li>
					<li><a href="#">我的收藏</a></li>
					<li><a href="${pageContext.request.contextPath }/tologin">管理</a></li>
					<li><a href="${pageContext.request.contextPath }/tuichu">退出</a></li>
				</ul>
			</div>
		</div>
		</nav>
	</div>
	<div align="center">
		<div id="body">
			<div id="zuo">
				<!-- <div id="jianjie">
					<p>来自法国的罗拉玛斯亚（Laura
						Mercier）焕然妆前隔离乳（保湿款）50ml。令后续底妆好推、服帖、持久！大量保湿因子滋润肌肤，反折光成分柔焦美肤！不仅隔离脏空气，还能遮盖肌肤瑕疵，为你打造人见人爱的透亮娇颜。</p>
				</div>  -->
				<div id="tu">
					<img
						src="${pageContext.request.contextPath }/statics/img/${commodity.commodityavatar }"
						width="100%" height="500px" />
				</div>
			</div>
			<div id="you">
				<div align="left">
					<p style="font-size: 1em;color:deeppink; ">${commodity.commodityname
						}</p>
					<hr />
					<p>
						￥<span style="font-size: 1.9em;">${commodity.doDiscount
							}</span><span style="float: right;font-size: 0.5em;">价格详情 ></span>
					</p>
					<hr />
					<p>库存：${commodity.putawayinventory }</p>
					<hr />
					<c:if test="${commodity.vouchersid==1 }">
						<p>抵用券：本商品满50抵用5元</p>
					</c:if>
					<c:if test="${commodity.vouchersid==2 }">
						<p>抵用券：本商品满100抵用10元</p>
					</c:if>
					<c:if test="${commodity.vouchersid==3}">
						<p>抵用券：本商品满150抵用20元</p>
					</c:if>
					<c:if test="${commodity.vouchersid==4 }">
						<p>抵用券：本商品满200抵用50元</p>
					</c:if>
					<c:if test="${commodity.integral==0}">
						<p>积分：购买本商品没有积分</p>
					</c:if>
					<c:if test="${commodity.integral!=0}">
						<p>积分：购买本商品可获得${commodity.integral }积分</p>
					</c:if>

					<hr />
					<input type="text" name="" id="jia" value="加入购物车     >"
						style="width: 50%;height: 2em;background-color: deeppink;color: white;text-align: center;" />
				</div>
			</div>
			<div align="left" style="position: relative;bottom:15px;left: 50px;">
				<p>
					<input type="text" name="type" id="type"
						value="${commodity.propertyname }" style="width: 8%;" /> <span
						style="margin-left: 45%;font-size: 5%; color: darkgray;">分享到
						></span>
				</p>
			</div>
		</div>
		<div
			style="background-color: white;width: 80%;height:130px;margin-top: 3%;">
			<ul id="ul">
				<li id="li1"><img
					src="${pageContext.request.contextPath }/statics/img/16pic_355960_s.jpg"
					width="18%" style="margin-right: 25%;position: relative;top: 22px;" />
					<p style="margin-left: 30%;position: relative;bottom: 20PX;">
						<span>海外直采</span><br /> <span>海关监管</span>
					</p></li>
				<li id="li2"
					style="position: relative;bottom: 23px; height: 90px;display: none;">
					<p style="font-size: 15px;line-height: 30px;">
						<span>100%海外官方授权直采</span><br /> <span>商品接受海关全程监控</span><br /> <span
							style="float: right;">MORE >></span>
					</p></li>
				<li id="li3"><img
					src="${pageContext.request.contextPath }/statics/img/lightning_72px_1196085_easyicon.net.png"
					width="19%" style="margin-right: 25%;position: relative;top: 22px;" />
					<p style="margin-left: 30%;position: relative;bottom: 20PX;">
						<span>闪电发货</span><br /> <span>国内物流</span>
					</p></li>
				<li id="li4"
					style="position: relative;bottom: 23px; height: 90px;display: none;">
					<p style="font-size: 15px;line-height: 30px;">
						<span>闪电发货，国内物流</span><br /> <span>3天到手(偏远地区除外)</span><br /> <span
							style="float: right;">MORE >></span>
					</p></li>
				<li id="li5"><img
					src="${pageContext.request.contextPath }/statics/img/230x210a0a0.jpg"
					width="21%" style="margin-right: 25%;position: relative;top: 22px;" />
					<p style="margin-left: 30%;position: relative;bottom: 20PX;">
						<span>海外价格</span><br /> <span>人民币支付</span>
					</p></li>
				<li id="li6"
					style="position: relative;bottom: 23px; height: 90px;display: none;">
					<p style="font-size: 15px;line-height: 30px;">
						<span>去掉层层代理，海外价格</span><br /> <span>人民币支付</span><br /> <span
							style="float: right;">MORE >></span>
					</p></li>
				<li id="li7"><img
					src="${pageContext.request.contextPath }/statics/img/5655cb7b74ffa.jpg"
					width="20%" style="margin-right: 25%;position: relative;top: 22px;" />
					<p style="margin-left: 30%;position: relative;bottom: 20PX;">
						<span>七天包退</span><br /> <span>国内售后</span>
					</p></li>
				<li id="li8"
					style="position: relative;bottom: 23px; height: 90px;display: none;">
					<p style="font-size: 15px;line-height: 30px;">
						<span>国内售后，中文客户</span><br /> <span>7天拆封无理由退货</span><br /> <span
							style="float: right;">MORE >></span>
					</p></li>
			</ul>
		</div>
		<div id="selector">
			<div id="dao"
				style="width: 100%;border: 1px solid rgb(247,247,247);height: 40px;background-color: rgb(247,247,247)">
				<ul id="sp">
					<a href="#name1">
						<li>商品信息</li> </a>
					<a href="#name2">
						<li>商品详情</li> </a>
					<a href="#name3">
						<li>商品实拍</li> </a>
					<a href="#name4">
						<li>关于极速免税店</li> </a>
				</ul>
			</div>
			<div data-target="#dao" data-spy="scroll"
				style="background-color: white;margin-top: 3.7%;">
				<p id="name1"
					style="width: 40%;border: 1px solid black;color: white;background-color: #000000;font-size: 20px;">商品信息</p>
				<div id="xiang"
					style=" width: 35%;height: 230px;margin-right: 40%;margin-top: 5%;">
					<p>
						<span id="spm">商品名称：</span>罗拉玛斯亚保湿妝前乳 50m
					</p>
					<p>
						<span id="spm">商品型号：</span>保湿款，50ml(702011544)
					</p>
					<p>
						<span id="spm">品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌：</span>罗拉玛斯亚（Laura
						Mercier
					</p>
					<p style="margin-right: 50%;">
						<span id="spm">分&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;类：</span>妆前乳/露
					</p>
					<p>
						<span id="spm">功&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;效：</span>修护肌肤,柔肤
					</p>

				</div>
				<div
					style="width: 40%;margin-left: 45%;position: relative;bottom: 230px;">
					<img
						src="${pageContext.request.contextPath }/statics/img/1677723_200_200.jpg"
						width="53%" />
				</div>
				<div align="center" style="position: relative;bottom: 200px;">
					<img
						src="${pageContext.request.contextPath }/statics/img/htbsqPC.jpg" />
				</div>
				<p id="name2"
					style="width: 40%;border: 1px solid black;color: white;background-color: #000000;font-size: 20px;position: relative;bottom: 140px;">商品详情</p>
				<div align="center">
					<img src="${pageContext.request.contextPath }/statics/img/1.jpg" />
					<img src="${pageContext.request.contextPath }/statics/img/3.jpg" />
					<img src="${pageContext.request.contextPath }/statics/img/5.jpg" />
					<img src="${pageContext.request.contextPath }/statics/img/7.jpg" />
					<img src="${pageContext.request.contextPath }/statics/img/8.jpg" />
					<img src="${pageContext.request.contextPath }/statics/img/9.jpg" />
					<img src="${pageContext.request.contextPath }/statics/img/11.jpg" />
				</div>
				<p id="name3"
					style="width: 40%;border: 1px solid black;color: white;background-color: #000000;font-size: 20px;position: relative;bottom: 140px;">商品实拍</p>
				<div align="center" style="position: relative;bottom: 150px;">
					<img src="${pageContext.request.contextPath }/statics/img/a.jpg" />
					<img src="${pageContext.request.contextPath }/statics/img/b.jpg" />
					<img src="${pageContext.request.contextPath }/statics/img/c.jpg" />
					<img src="${pageContext.request.contextPath }/statics/img/d.jpg" />
					<img src="${pageContext.request.contextPath }/statics/img/e.png" />
				</div>
				<p id="name4"
					style="width: 40%;border: 1px solid black;color: white;background-color: #000000;font-size: 20px;">关于极速免税店</p>
				<div align="center">
					<img src="${pageContext.request.contextPath }/statics/img/f.jpg" />
					<img src="${pageContext.request.contextPath }/statics/img/g.jpg" />
				</div>
				<p id="name1"
					style="width: 40%;border: 1px solid black;color: white;background-color: #000000;font-size: 20px;">如何联系聚美极速免税店进行售后服务</p>
				<div align="center">
					<img src="${pageContext.request.contextPath }/statics/img/h.jpg" />
				</div>
			</div>


		</div>

	</div>
	<div id="di">
		<div>
			<span>极速免税店保障</span>
			<div id="di4" style="width: 60%;">
				<a>海外直邮</a><br /> <a>无忧保障</a>
			</div>
			<span id="di1">|</span>
		</div>

		<div style="height: 100px;position: relative;bottom: 4px;">
			<span>新手帮助</span>
			<div id="di4" style="width: 80%;">
				<a>常见问题</a><br> <a>违规争议处理</a>
			</div>
			<span id="di1">|</span>
		</div>
		<div style="height: 100px;position: relative;top: 16px;">
			<span>相关条款</span>
			<div id="di4" style="width: 80%;">
				<a>极速免税店招商</a><br> <a>服务条款协议</a><br> <a>用户服务协议</a><br />
			</div>
			<span id="di1">|</span>
		</div>
		<div>
			<span>客服联系方式</span>
			<div id="di4" style="width: 80%;">
				<a>400-123-8888</a><br /> <a>点击咨询在线客服</a>
			</div>

		</div>
		<p align="center">Copyright 2017, 版权所有JUMEIGLOBAL.COM
			客服电话：400-123-8888</p>
	</div>
</body>
</html>
