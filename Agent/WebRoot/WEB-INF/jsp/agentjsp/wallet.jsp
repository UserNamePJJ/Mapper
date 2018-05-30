<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/head.jsp"%>
<style type="text/css">
h3>span {
	font-size: 15px;
	color: #9d9d9d;
}

#tou>p>span {
	color: #f7f3f2;
	background-color: deepskyblue;
	border: deepskyblue 5px solid;
	font-size: 14px;
	border-radius: 5px;
}

.Wdate {
	width: 110px;
	height: 36px;
	border: 1px solid #ddd;
}

.ss {
	border-top-left-radius: 5px;
	border-bottom-left-radius: 5px;
}

.ssb {
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
}
</style>
<div class="right">
	<div id="tou">
		<h3 style="margin:10px 0px 0px 15px;">
			财务管理 <span style="font-size: 15px; color: #9d9d9d;">财务记录</span> <span
				style="float:right;">控制台&nbsp;&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;&nbsp;财务管理</span>
		</h3>
		<p style="margin:10px 0px 0px 15px;">
			<span>财务充值</span>&nbsp;<span>财务记录</span>
		</p>
	</div>
	<div id="tiaojian" style="margin:10px 0px 0px 0px;">
		<div class="btn-group col-md-5" role="group" id="daohan"></div>
		<div class="input-group col-md-7 col-md-offset-1"
			style="vertical-align: middle;">
			<button class="btn btn-default dropdown-toggle" type="button"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
				style="background-color:#d3d3d3;width: 80px">
				<span id="na">请选择</span> <span class="caret"></span>
			</button>
			<ul class="dropdown-menu" id="seat">
			</ul>
			
			<input type="text" Class="Wdate" readonly="readonly"
				onclick="WdatePicker();" placeholder="起始时间"
				style="margin: 0px 5px 0px 5px;text-indent: 15px;" id="ope"> <input
				type="text" Class="Wdate" readonly="readonly"
				onclick="WdatePicker();" placeholder="结束时间"
				style="margin: 0px 5px 0px 0px;text-indent: 15px;" id="clo"> <input
				type="text" placeholder="搜索交易号" id="name"
				style="width:170px;height:34px;border:1px solid #ddd;" class="ss">
				
			<span style="border:1px solid #ddd;padding:9px;" class="ssb" onclick="seach()">搜索</span>
		</div>
	</div>
	<div class="table-responsive"
		style="border-radius: 10px;border: 1px solid rgb(236,240,245);margin:20px 5px 0px 5px;overflow-y:auto; overflow-x:auto; width:auto; height:495px;">
		<table class="table table-bordered"
			style="background-color: white;border-radius: 5px;text-align: center;">
			<tr>
				<td>编号</td>
				<td>交易号</td>
				<td>姓名</td>
				<td>时间</td>
				<td>交易类型</td>
				<td>操作金额</td>
				<td>余额</td>
			</tr>
		</table>

	</div>
</div>
<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/foot.jsp"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/wallet.js"></script>


