<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/head.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/public.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/two.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/kucun.css" />
<div class="right">
	<div class="tow" style="margin: 0px 15px;">
		<h3>
			库存管理 <span style=" font-size: 15px;">库存出入</span> <span
				style="float:right; font-size: 16px;">控制台 &nbsp;&nbsp;
				&nbsp;&nbsp; <label>></label> &nbsp;&nbsp;&nbsp;&nbsp; 库存管理 </span>
		</h3>
	</div>
	<div id="table">
		<form class="form-horizontal"
			action="${pageContext.request.contextPath }/addInventory"
			method="post">
			<input style="display:none;" name="transactiontype"
				value="${transactiontype}" />
			<c:choose>
				<c:when test="${empty show}">
					<div class="form-group" style="margin-top: 50px;margin-left: 20%;">
						<label for="inputEmail3" class="col-sm-3 control-label">商品名称：</label>
						<select id="commodityid" name="commodityid" style="width: 16%;">
							<option selected="selected">--请选择--</option>
							<c:forEach var="commodity" items="${commodityList }">
								<option value="${commodity.commodityid }">${commodity.commodityname
									}</option>
							</c:forEach>
						</select>
					</div>
				</c:when>
				<c:otherwise>
					<input style="display:none;" name="commodityid" value="${cdId}" />
				</c:otherwise>
			</c:choose>
			<div class="form-group" style="margin:3% 0;margin-left: 28%;">
				<label for="inputEmail3" class="col-sm-2 control-label">数量：</label>
				<div style="margin-left: 17%;width: 18%;">
					<input type="text" name="transactionnum" class="form-control"
						id="inputPassword3" placeholder="请输入出/入库数量">
				</div>
			</div>
			<div class="form-group" style="margin-left: 24%;">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary" style="margin: 0px 40px 0px 0px;">确定</button>
					<button type="button" class="btn btn-default" onclick="window.history.go(-1)">取消</button>
				</div>
			</div>
		</form>
	</div>
</div>
</div>
</section>

<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/foot.jsp"%>
