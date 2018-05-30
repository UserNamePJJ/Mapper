<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/head.jsp"%>
<style type="text/css">
#head {
	padding: 10px;
}

#condition {
	padding: -15px;
}

.tow>h2>span {
	font-size: 15px;
	color: #8c8c8c;
}

.tow>p {
	float: right;
}
</style>
<div class="right" style="padding:0px 0px 0px 10px;">
	<div class="tow">
		<h3>
			客户管理 <span style=" font-size: 15px;">客户记录</span> <span
				style="float:right; font-size: 16px;">控制台 &nbsp;&nbsp;
				&nbsp;&nbsp; <label>></label> &nbsp;&nbsp;&nbsp;&nbsp; 客户管理</span>
		</h3>
	</div>
	<form method="post" id="form1" action="##">
		<div id="condition">
			<div class="col-lg-2" style="left:-14px">
				<div class="form-group">
					<input type="text" name="userName" class="form-control"
						placeholder="客户姓名模糊查询" value="${userName }">
				</div>
			</div>
			<div class="col-lg-2" style="left:-14px">
				<div class="form-group">
					<input type="text" name="monetary" class="form-control"
						placeholder="消费金额查询" value="${monetary }">
				</div>
			</div>
			<button class="btn btn-default" type="button"
				style=" background-color: #DDDDDD" id="customerbtu">搜索</button>
		</div>
	</form>
	<div class="table-responsive"
		style="border-radius: 10px;margin:20px 10px 0px 0px;">
		<table border="1" cellpadding="3" cellspacing="0" id="customerTable"
			class="table table-bordered"
			style="background-color: white;border-radius: 5px;text-align:center;">
			<tr>
				<td>客户编号</td>
				<td>头像</td>
				<td>客户姓名</td>
				<td>性别</td>
				<td>联系方式</td>
				<td>电子邮箱</td>
				<td>消费金额</td>
				<td>账户余额</td>
				
			</tr>
			
		</table>
	</div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/customerlist.js"></script>

</section>
<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/foot.jsp"%>