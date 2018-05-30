<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/head.jsp"%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/kucun.css" />
<style>
#inp {
	color: white;
	border: none;
	height: 30px;
	border-radius: 4px;
}

#info>td {
	vertical-align: middle;
}
</style>
<div class="right" style="padding:0px 0px 0px 10px;">
	<div class="header">
		<div class="tow">
			<h3>
				库存管理 <span style=" font-size: 15px;">库存管理</span> <span
					style="float:right; font-size: 16px;">控制台 &nbsp;&nbsp;
					&nbsp;&nbsp; <label>></label> &nbsp;&nbsp;&nbsp;&nbsp; 库存管理 </span>
			</h3>
		</div>
		<input type="button" value="查看公司记录表" id="inp" class="inp"
			style="margin-bottom: 9px;	background-color: deepskyblue;" /> <input
			type="button" value="入库" id="ru"
			style="border:1px solid mediumseagreen;background-color: mediumseagreen;margin-bottom: 8px;padding:5px 10px;border-radius:5px;" />
		<input type="button" value="出库" id="chu"
			style="border:1px solid mediumseagreen;background-color: mediumseagreen;margin-bottom: 8px;padding:5px 10px;border-radius:5px;" />
	</div>
	<div class="table-responsive"
		style="  height: 510px; border-radius: 10px;margin:10px 10px 0px 0px;">
		<table border="1" cellpadding="3" cellspacing="0"
			class="table table-bordered"
			style=" background-color: white;border-radius: 5px;text-align:center;">
			<tr>
				<td>ID</td>
				<td>产品名称</td>
				<td>属性名称</td>
				<td>库存合计
					<div class="i">i</div></td>
				<td>仓库库存</td>
				<td>上架库存</td>

				<td>状态</td>
				<td style="width: 20%;">操作</td>
			</tr>
			<c:forEach items="${kucun }" var="cd">
				<tr id="info">
					<td>${cd.id}</td>
					<td style="font-size: small;width: 230px;">${cd.commodityname}</td>
					<td>${cd.propertyname}</td>
					<td>${cd.totalinventory}</td>
					<td>${cd.warehouseinventory }</td>
					<td>${cd.putawayinventory }</td>
					<td>${cd.state }</td>
					<td><input type="button" value="入库" name="${cd.commodityid}"
						id="ru"
						style="border:1px solid mediumseagreen;background-color: mediumseagreen;padding:2px 5px;border-radius:5px;" />
						<input type="button" value="出库" id="chu" name="${cd.commodityid}"
						style="border:1px solid mediumseagreen;background-color: mediumseagreen;padding:2px 5px;border-radius:5px;" />
						<input type="button" value="查看记录" id="inp"
						style="background-color: deepskyblue;margin-top: 2px;"
						onclick="window.location.href='/Agent/inventoryview?cdID=${cd.commodityid}'" />
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
</section>
<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/foot.jsp"%>
<script>
	$(".inp").click(function() {
		location.href = "/Agent/inventoryview";
	});
	$("#ru,#chu").click(
			function() {
				var name = $(this).attr("name");
				if (name != null) {
					location.href = "inventoryAccess?cdID="
							+ $(this).attr("name") + "&transactiontype="
							+ $(this).val();
				} else {
					location.href = "inventoryAccess?transactiontype="
							+ $(this).val();
				}
			});
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/kucun.js"></script>