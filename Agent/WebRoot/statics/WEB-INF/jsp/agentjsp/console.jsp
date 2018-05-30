<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/head.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/public.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/two.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/kucun.css" />
<div class="right" style="overflow: auto;">
	<div style="margin:0px 0px 0px 20px;">
		<h3>
			后台管理系统<span style="font-size: 15px;">首页</span><span
				style="float:right; font-size: 16px;">控制台 &nbsp;&nbsp;
				&nbsp;&nbsp; <label>></label> &nbsp;&nbsp;&nbsp;&nbsp; 首页
			</span>
		</h3>
	</div>
	<div class="container">
		<div class="col-md-3 col-xs-3"
			style="border:1px solid green;width: 25%;background-color: green;display: flex;margin-left:5% ;">
			<div style="flex: 7;margin-left: 5%;margin-top: 5%;">
				<span style="color: white;font-size: 40px;font-weight: bold;">${num }</span><br />
				<span style="color: white;">代理商总数</span>
			</div>
			<div style="flex: 3;margin: 5% 0;margin-right: 6%;">
				<img src="${pageContext.request.contextPath }/statics/img/user.png"
					width="120%" />
			</div>
		</div>
		<div class="col-md-3 col-xs-3"
			style="border:1px solid #AC2925;width: 25%;background-color: #AC2925;display: flex;margin-left:6% ;">
			<div style="flex: 7;margin-left: 5%;margin-top: 5%;">
				<span style="color: white;font-size: 40px;font-weight: bold;">${billCount }</span><br />
				<span style="color: white;">公司待处理订单</span>
			</div>
			<div style="flex: 3;margin: 5% 0;margin-right: 6%;">
				<img
					src="${pageContext.request.contextPath }/statics/img/wendang.png"
					width="94%" />
			</div>
		</div>
		<div class="col-md-3 col-xs-3"
			style="border:1px solid blueviolet;width: 25%;background-color: blueviolet;display: flex;margin-left:10% ;">
			<div style="flex: 7;margin-left: 5%;margin-top: 5%;">
				<span style="color: white;font-size: 40px;font-weight: bold;">${moneyCount }</span><br />
				<span style="color: white;">满消费额度客户</span>
			</div>
			<div style="flex: 3;margin: 5% 0;margin-right: 15%;">
				<img src="${pageContext.request.contextPath }/statics/img/ka.png"
					width="183%" />
			</div>
		</div>
	</div>
	<div class="container" style="margin-top: 5%;font-size: 10px;">
		<div class="col-md-4 col-xs-4">
			
			<div id="first" style="width: 50%;height: 180px;margin-left: 25%;">

			</div>
			<p align="center">商品销量总数：${modCount}</p>
			<p align="center">
				<input type="text" disabled="disabled"
					style="background-color: rgb(221,75,57);width: 20%;height: 3%;">&nbsp;&nbsp;<span
					id="yuan1"></span> <input type="text" disabled="disabled"
					style="background-color: #0080FF;width: 20%;height: 3%;">&nbsp;&nbsp;<span
					id="yuan2"></span> <input type="text" disabled="disabled"
					style="background-color: #DA70D6;width: 20%;height: 3%;">&nbsp;&nbsp;<span
					id="yuan3"></span>
			</p>
			<p align="center">
				<input type="text" disabled="disabled"
					style="background-color: green;width: 20%;height: 3%;">&nbsp;&nbsp;<span
					id="yuan4"></span> <input type="text" disabled="disabled"
					style="background-color: yellow;width: 20%;height: 3%;">&nbsp;&nbsp;<span
					id="yuan5"></span>
			</p>
		</div>
		<div class="col-md-4 col-xs-4">
			
			<div id="second" style="width: 50%;height: 180px;margin-left: 25%;">

			</div>
			<p align="center">资金池总收入：${souCount }</p>
			<p align="center">
				<input type="text" disabled="disabled"
					style="background-color: rgb(221,75,57);width: 20%;height: 3%;">&nbsp;&nbsp;<span
					id="yuan6"></span> <input type="text" disabled="disabled"
					style="background-color: #0080FF;width: 20%;height: 3%;">&nbsp;&nbsp;<span
					id="yuan7"></span> <input type="text" disabled="disabled"
					style="background-color: #DA70D6;width: 20%;height: 3%;">&nbsp;&nbsp;<span
					id="yuan8"></span>
			</p>
			<p align="center">
				<input type="text" disabled="disabled"
					style="background-color: green;width: 20%;height: 3%;">&nbsp;&nbsp;<span
					id="yuan9"></span> <input type="text" disabled="disabled"
					style="background-color: yellow;width: 20%;height: 3%;">&nbsp;&nbsp;<span
					id="yuan10"></span>
			</p>
		</div>
		<div class="col-md-4 col-xs-4">
			
			<div id="three" style="width: 50%;height: 180px;margin-left: 25%;">

			</div>
			<p align="center">资金池总支出：${zhiCount }</p>
			<p align="center">
				<input type="text" disabled="disabled"
					style="background-color: rgb(221,75,57);width: 20%;height: 3%;">&nbsp;&nbsp;<span
					id="yuan11"></span> <input type="text" disabled="disabled"
					style="background-color: #0080FF;width: 20%;height: 3%;">&nbsp;&nbsp;<span
					id="yuan12"></span> <input type="text" disabled="disabled"
					style="background-color: #DA70D6;width: 20%;height: 3%;">&nbsp;&nbsp;<span
					id="yuan13"></span>
			</p>
			<p align="center">
				<input type="text" disabled="disabled"
					style="background-color: green;width: 20%;height: 3%;">&nbsp;&nbsp;<span
					id="yuan14"></span> <input type="text" disabled="disabled"
					style="background-color: yellow;width: 20%;height: 3%;">&nbsp;&nbsp;<span
					id="yuan15"></span>	
			</p>
		</div>
	</div>


	<div class="container" style=" font-size: 10px;margin-top: 5%;">
		<div class="col-md-6 col-xs-6">
			
			<div id="qu1" style="width: 100%;height: 350px;"></div>
			<p align="center">每月支出总数</p>
			
		</div>
		<div class="col-md-6 col-xs-6">
			
			<div id="qu2" style="width: 100%;height: 350px;"></div>
			<p align="center">每月收入总数</p>
		</div>
	</div>
</div>
</section>
<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/foot.jsp"%>
<script src="${pageContext.request.contextPath }/statics/js/echarts.js"></script>
<script src="${pageContext.request.contextPath }/statics/js/yuan.js"></script>
<script src="${pageContext.request.contextPath }/statics/js/qu.js"></script>
<script
	src="${pageContext.request.contextPath }/statics/js/commidName.js"></script>