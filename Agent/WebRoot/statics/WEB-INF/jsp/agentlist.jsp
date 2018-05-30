<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/dailishang.css" />

<div class="right">
	<div style="margin-left:15px;">
		<h3>
			代理商管理 <span style=" font-size: 15px;">代理商管理</span> <span
				style="float:right; font-size: 16px;">控制台 &nbsp;&nbsp;
				&nbsp;&nbsp; <label>></label> &nbsp;&nbsp;&nbsp;&nbsp; 代理商管理</span>
		</h3>
	</div>

	<form id="form" method="get" action="##" style="margin-left: 15px;">
		<div id="condition">
			<div class="col-lg-2" style="left:-14px">
				<div class="form-group">
					<input type="text" name="userName" class="form-control"
						placeholder="客户姓名模糊查询" value="${userName}">
				</div>
			</div>
			<div class="col-lg-2" style="left:-14px">
				<div class="form-group">
					<input type="text" name="monetary" class="form-control"
						placeholder="消费金额查询" value="${monetary}">
				</div>
			</div>
			<button class="btn btn-default " id="selectbtu" type="button"
				style=" background-color: #DDDDDD" value="">搜索</button>
		</div>
	</form>
	<div class="table-responsive"
		style="border-radius: 10px;border: 1px solid rgb(236,240,245);margin:20px 5px 0px 15px;overflow-y:auto; overflow-x:auto; width:auto; height:520px;">
		<table class="table table-bordered"
			style="background-color: white;border-radius: 5px;text-align: center;"
			id="table">
			<tr class="firstTr">
				<td>编号</td>
				<td>姓名</td>
				<td>性别</td>
				<td>身份证号</td>
				<td>电话</td>
				<td>邮箱</td>
				<td>已消费金额</td>
				<td>级别</td>
				<td>操作</td>
			</tr>
		</table>
	</div>
</div>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/agentdel.js"></script>
</section>

<%@include file="/WEB-INF/jsp/common/foot.jsp"%>
