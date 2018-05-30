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
			统计分析<span style="font-size: 15px;">统计分析</span> <span
				style="float:right; font-size: 16px;">控制台 &nbsp;&nbsp;
				&nbsp;&nbsp; <label>></label> &nbsp;&nbsp;&nbsp;&nbsp; 统计分析</span>
		</h3>
	</div>
	<!-- <div class="row" style="margin-left: 1%;margin-top: 2%;">
		<span class="col-md-1" style="font-size: 1.2em;margin-top: 0.5%;">姓名：</span>
		<div class="col-md-4 " style="margin-right: 7%;">
			<select class="form-control">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select>
		</div>
		<span class="col-md-1" style="font-size: 1.2em;margin-top: 0.5%;">姓名：</span>
		<div class="col-md-4">
			<select class="form-control">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select>
		</div>
		<div class="col-md-1">
			<input class="form-control" type="submit" value="查询" />
		</div>
	</div> -->

	<div class="container">
		<div align="center" class="col-md-6 col-xs-4" style="height: 50%;">
		
			<div id="zhu1" style=" width: 80%;height: 115%; "></div>
			<p align="center" style="position: relative;bottom:5%;">每月完成总数</p>
		</div>
		<div align="center" class="col-md-6 col-xs-4" style="height: 50%;">
		
			<div id="zhu2" style=" width: 80%;height: 115%; "></div>
			<p align="center" style="position: relative;bottom:5%;">每月退款总数</p>
		</div>
	</div>

	<div class="container" style="margin-top: 5%;">
		<div align="center" class="col-md-6 col-xs-4" style="height: 50%;">
		
			<div id="zhu3" style=" width: 80%;height: 115%"></div>
			<p align="center" style="position: relative;bottom:5%;">每月充值总金额</p>
		</div>
		<div align="center" class="col-md-6 col-xs-4" style="height: 50%;">
		
			<div id="zhu4" style=" width: 80%;height: 115%;"></div>
			<p align="center" style="position: relative;bottom:5%;">每月提现总金额</p>
		</div>
	</div>

	<div class="container" style="margin-top: 5%;font-size: 10px;">
		<div class="col-md-6 col-xs-6">
			<div id="first" style="width: 50%;height: 180px;margin-left: 25%;">

			</div>
			<p align="center">库存比例</p>
			<p align="center">
				<input type="text" disabled="disabled"
					style="background-color: #AC2925;width: 20%;height: 3%;">&nbsp;&nbsp;公司总库存
				<input type="text" disabled="disabled"
					style="background-color: rgb(60,141,188);width: 20%;height: 3%;">&nbsp;&nbsp;仓库库存
			</p>
			<p align="center">
				<input type="text" disabled="disabled"
					style="background-color: blueviolet;width: 20%;height: 3%;">&nbsp;&nbsp;上架库存
			</p>
		</div>
		<div class="col-md-6 col-xs-6">

			<div id="second" style="width: 50%;height: 180px;margin-left: 25%;">

			</div>
			<p align="center">代理商与客户总数</p>
			<p align="center">
				<input type="text" disabled="disabled"
					style="background-color: #AC2925;width: 20%;height: 3%;">&nbsp;&nbsp;代理商人数
				<input type="text" disabled="disabled"
					style="background-color: rgb(60,141,188);width: 20%;height: 3%;">&nbsp;&nbsp;客户人数
			</p>
			<p align="center">
				<input type="text" disabled="disabled"
					style="background-color: blueviolet;width: 20%;height: 3%;">&nbsp;&nbsp;总人数
			</p>
		</div>
	</div>
</div>
</section>
<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/foot.jsp"%>
<script src="${pageContext.request.contextPath }/statics/js/echarts.js"></script>
<script src="${pageContext.request.contextPath }/statics/js/zhu.js"></script>
<script src="${pageContext.request.contextPath }/statics/js/yuantu.js"></script>