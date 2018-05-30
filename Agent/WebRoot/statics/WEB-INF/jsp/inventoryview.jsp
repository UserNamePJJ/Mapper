<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/public.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/two.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/kucun.css" />
<div class="right">
	<div class="tow" style="margin: 0px 15px;">
		<h3>
			库存管理 <span style=" font-size: 15px;">库存记录</span> <span
				style="float:right; font-size: 16px;">控制台 &nbsp;&nbsp;
				&nbsp;&nbsp; <label>></label> &nbsp;&nbsp;&nbsp;&nbsp; 库存管理 </span>
		</h3>
	</div>
	<div id="table"
		style="margin: 0px 15px 0px 15px;">
		<table border="1" cellpadding="3" cellspacing="0"
			class="table table-bordered"
			style=" background-color: white;border-radius: 5px;text-align:center;">
			<tr>
				<td>ID</td>
				<td>产品名称</td>
				<td>属性名称</td>
				<td>操作</td>
				<td>数量</td>
				<td>库存合计</td>
			</tr>
			<c:forEach items="${kucuns }" var="kucun">
				<tr>
					<td>${kucun.id }</td>
					<td>${kucun.commodityname }</td>
					<td>${kucun.propertyname }</td>
					<td>${kucun.transactiontype }</td>
					<td>${kucun.transactionnum }</td>
					<td>${kucun.totalinventory }</td>
				</tr>
			</c:forEach>
		</table>/,
		<input type="button" value="返回" id="chu"
			style="border:1px solid mediumseagreen;background-color: mediumseagreen;margin-bottom: 8px;padding:5px 15px;border-radius:5px;position: fixed;right: 25px;bottom:10px;" onclick="window.history.go(-1)" />
	</div>
</div>
</div>

</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp"%>
<script>
	$("#jilu").click(function() {
		location.href = "/inventoryview";
	});
</script>