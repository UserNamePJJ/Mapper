<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/bill.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/public.css" />
<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/head.jsp"%>
<div class="right" style="padding:0px 0px 0px 10px;">
	<div class="tow">
		<h3>
			订单管理 <span style=" font-size: 15px;">订单管理</span> <span
				style="float:right; font-size: 16px;">控制台 &nbsp;&nbsp;
				&nbsp;&nbsp; <label>></label> &nbsp;&nbsp;&nbsp;&nbsp; 订单管理</span>
		</h3>
	</div>
	<div style="width: 100%">
		<ul class="nav nav-tabs"
			style="background-color: #eeeeeec2;padding-top: 5px;width: 80%;padding-left: 5px;">
			<li class="active"><a href="#name1" onclick="allfk()">所有订单</a></li>
			<li><a href="#name1" onclick="ddfk(1)">等待付款</a></li>
			<li><a href="#name1" onclick="ddfk(2)">待发货</a></li>
			<li><a href="#" onclick="ddfk(3)">已发货</a></li>
			<li><a href="#" onclick="ddfk(4)">交易成功</a></li>
			<li><a href="#" onclick="ddfk(5)">交易关闭</a></li>
		</ul>
		<!--选项卡面板-->
		<div class="tab-content" style="margin-left:-10px;">
			<div class="tab-pane  in active" id="name1"
				style="background-color: whitesmoke">
				<div class="row" style="margin: 10px 0px 0px 10px">
					<form class="form-inline " id="billli">
						<div class="form-group ">
							<label for="exampleInputName2">订单号:</label> <input
								style="width:120px" type="text" class="form-control"
								name="billid" id="exampleInputName2">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail5">商品名称:</label> <input type="email"
								name="commodityName" class="form-control"
								id="exampleInputEmail5">
						</div>
						<div class="form-group">
							<label for="exampleInputName2">收货人:</label> <input type="text"
								name="userName" class="form-control" id="exampleInputName7">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail2">收货人地区:</label> <input
								type="email" name="address" class="form-control"
								id="exampleInputEmail3">
						</div>
						<input type="button" class="form-control" value="查询"
							id="searchbutton" />
					</form>
				</div>
			</div>
			<div class="tab-pane" id="name2"></div>
		</div>

	</div>

	<!--表信息-->
	<div style="border-radius: 5px;margin:0px 5px 0px 0px;height: 400px">
		<div class="row "
			style="background-color: #87c212;border-radius: 5px;width: 100%;margin-left: 0%;color: white;">
			<p class="navbar-text col-md-1 text-center">订单编号</p>
			<p class="navbar-text col-md-2 ">商品名称</p>
			<p class="navbar-text col-md-1 ">数量</p>
			<p class="navbar-text col-md-1 ">总价</p>
			<p class="navbar-text col-md-1 ">收货人</p>
			<p class="navbar-text col-md-1 ">订单时间</p>
			<p class="navbar-text col-md-1 ">状态</p>
			<p class="navbar-text col-md-1 ">操作</p>
		</div>
		<div
			style="overflow-y:auto; overflow-x:auto; width:auto; height:400px;border: 1px solid gainsboro"
			id="die">
			<div class="how" style="background-color: ghostwhite;height: 400px">
				<c:if test="${billlist !=null }">
					<c:forEach var="bill" items="${billlist }">
						<div class="row "
							style="border-radius: 5px;width: 100%;margin-left: 0%" id="dia">
							<p class="navbar-text col-md-1 text-center">${bill.billid }</p>
							<p class="navbar-text col-md-2 ">${bill.commodityName }</p>
							<p class="navbar-text col-md-1 ">${bill.commodityprice }</p>
							<p class="navbar-text col-md-1 ">￥${bill.totalamount }</p>
							<p class="navbar-text col-md-1 ">${bill.userName }</p>
							<p class="navbar-text col-md-1 ">${bill.transactiontimestart
								}</p>
							<p class="navbar-text col-md-1 " style="color:red">${bill.state
								}</p>
							<p class="navbar-text col-md-1 ">
								<input type="button" value="查看详情">
							</p>
						</div>
					</c:forEach>
				</c:if>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/bill.js"></script>
<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/foot.jsp"%>
<script>
	$('.nav a').click(function(e) {
		e.preventDefault();
		$(this).tab('show');
	});
	function ddfk(state) {
		$(".how").remove();

		$
				.getJSON(
						"/Agent/ddfk",
						{
							state : state
						},
						function(data) {
							$("#die")
									.append(
											"<div class='how' style='background-color: ghostwhite;height: 320px'></div>")
							for ( var i = 0; i < data.length; i++) {

								if (state == 2) {
									$(".how")
											.append(
													"<div class='row' style='background-color: ghostwhite;border-radius: 5px;width: 100%;margin-left: 0%' class='dia'><p class='navbar-text col-md-1 text-center'>"
															+ data[i].billid
															+ "</p><p class='navbar-text col-md-2 '>"
															+ data[i].commodityName
															+ "</p><p class='navbar-text col-md-1 '>"
															+ data[i].commodityprice
															+ "</p><p class='navbar-text col-md-1 '>￥"
															+ data[i].totalamount
															+ "</p><p class='navbar-text col-md-1 '>"
															+ data[i].userName
															+ "</p><p class='navbar-text col-md-1 '>"
															+ data[i].transactiontimestart
															+ "</p><p class='navbar-text col-md-1 ' style='color:red'>"
															+ data[i].state
															+ "</p><p class='navbar-text col-md-1 '><button type='button' class='btn btn-default' aria-label='Left Align'> <span class='glyphicon glyphicon-shopping-cart' aria-hidden='true'></span>发货</button></p></div>");
								} else {

									$(".how")
											.append(
													"<div class='row' style='background-color: ghostwhite;border-radius: 5px;width: 100%;margin-left: 0%' class='dia'><p class='navbar-text col-md-1 text-center'>"
															+ data[i].billid
															+ "</p><p class='navbar-text col-md-2 '>"
															+ data[i].commodityName
															+ "</p><p class='navbar-text col-md-1 '>"
															+ data[i].commodityprice
															+ "</p><p class='navbar-text col-md-1 '>￥"
															+ data[i].totalamount
															+ "</p><p class='navbar-text col-md-1 '>"
															+ data[i].userName
															+ "</p><p class='navbar-text col-md-1 '>"
															+ data[i].transactiontimestart
															+ "</p><p class='navbar-text col-md-1 ' style='color:red'>"
															+ data[i].state
															+ "</p><p class='navbar-text col-md-1 '><input type='button' value='查看详情'></p></div>")
								}
							}
						});
	}
	function allfk() {
		$(".how").remove();
		$
				.getJSON(
						"/Agent/select",
						function(data) {
							$("#die")
									.append(
											"<div class='how' style='background-color: ghostwhite;height: 320px'></div>")
							for ( var i = 0; i < data.length; i++) {
								$(".how")
										.append(
												"<div class='row' style='background-color: ghostwhite;border-radius: 5px;width: 100%;margin-left: 0%' class='dia'><p class='navbar-text col-md-1 text-center'>"
														+ data[i].billid
														+ "</p><p class='navbar-text col-md-2 '>"
														+ data[i].commodityName
														+ "</p><p class='navbar-text col-md-1 '>"
														+ data[i].commodityprice
														+ "</p><p class='navbar-text col-md-1 '>￥"
														+ data[i].totalamount
														+ "</p><p class='navbar-text col-md-1 '>"
														+ data[i].userName
														+ "</p><p class='navbar-text col-md-1 '>"
														+ data[i].transactiontimestart
														+ "</p><p class='navbar-text col-md-1 ' style='color:red'>"
														+ data[i].state
														+ "</p><p class='navbar-text col-md-1 '><input type='button' value='查看详情'></p></div>")
							}
						});

	}
</script>