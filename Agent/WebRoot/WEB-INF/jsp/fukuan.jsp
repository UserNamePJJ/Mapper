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


<title>My JSP 'fukuan.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="shortcut icon"
	href=" ${pageContext.request.contextPath }/statics/img/qqico.ico" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/fukuan.css" />
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
	<div id="content">
		<nav class="row za">
		<div class="col-md-9">
			<div class="row">
				<div class="daohang col-md-2">
					<span class="state">所有订单</span> <span class="da">|</span>
				</div>
				<div class="daohang col-md-2">
					<span class="state">待付款</span> <span class="da">|</span>
				</div>
				<div class="daohang col-md-2">
					<span class="state">待发货</span> <span class="da">|</span>
				</div>
				<div class="daohang col-md-2">
					<span class="state">待收货</span> <span class="da">|</span>
				</div>
				<div class="daohang col-md-2">
					<span class="state">待评价</span>

				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="row">
				<div class="col-md-5"></div>
				<div class="daohang col-md-7">
					<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>订单回收站

				</div>
			</div>
		</div>
		</nav>

		<div class="row sea">
			<ul>
				<li class="col-md-3">宝贝</li>
				<li class="col-md-1">单价</li>
				<li class="col-md-1">数量</li>
				<li class="col-md-2">商品操作</li>
				<li class="col-md-1">实付款</li>
				<li class="col-md-2" id="gu">
					<button style="font-size: 1em;" type="button">
						<span id="ji">交易状态</span> <span class="caret" id="san"></span>
					</button>
					<div
						style="height: 270px;line-height: 30px;width: 100px;border-radius: 5px;"
						id="dw">
						<ul style="margin-left: -30px;" id="ut">
							<li>交易状态</li>
							<br />
							<li>等待买家付款</a>
							</li>
							<br />
							<li>付款确认中</li>
							<br />
							<li>买家已付款</li>
							<br />
							<li>卖家已发货</li>
							<br />
							<li>交易成功</li>
							<br />
							<li>交易关闭</li>
							<br />
							<li>退款中的订单</li>
						</ul>
					</div></li>
				<li class="col-md-2">交易操作</li>
			</ul>

		</div>

		<div class="billlist"></div>
		<div id="load"></div>



		<!-- 
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">订单信息</h4>
      </div>
      <div class="modal-body">
      <div class="row">
      <div class="col-md-4">  订单编号: dls11111123</div>
      <div class="col-md-4">  交易编号: pjj123</div>
       
      </div>
       <div class="row" style="margin-top: 20px">
      <div class="col-md-4">  成交时间: 2018-05-14</div>
      <div class="col-md-4">  付款时间: 2018-05-17</div>
      <div class="col-md-4">  确认时间: 2018-05-17</div>
      </div>
      
      <div style="border:1px solid #e8e8e8; width: auto;margin-top: 20px">
      <table   >
      <tr style="text-align:center;"><td >宝贝</td>	<td>宝贝属性</td><td>状态</td><td>单价(元)</td><td>数量</td><td>优惠</td><td>商品总价(元)</td><td>运费(元)</td></tr>
      <tr><td class="tdd">宝贝</td><td class="tdd" style="text-align:center;"><strong>—</strong></td><td class="tdd">状态</td> <td class="tdd">单价(元)</td><td class="tdd">数量</td><td class="tdd" style="text-align:center;"><strong>—</strong></td><td class="tdd">商品总价(元)</td><td class="tdd">运费(元)</td></tr>
      </table>
      </div>
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div> -->

	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/statics/js/jquery-rotate-min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/statics/js/fukuan.js"></script>


</body>
</html>
