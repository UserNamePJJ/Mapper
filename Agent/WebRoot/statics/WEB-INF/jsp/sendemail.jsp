<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/feedback.css" />
<div class="right">
	<c:if test="${!empty error }">
		<script>
			alert("${error}");
		</script>
	</c:if>
	<div id="tou">
		<h3 style="margin:10px 0px 0px 15px;">
			意见反馈 <span style="font-size: 15px; color: #9d9d9d;">意见反馈记录</span> <span
				style="float:right;">控制台&nbsp;&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;&nbsp;财务管理</span>
		</h3>
	</div>
	<div
		style="border: 1px solid red;margin: 15px 15px 0px 15px;background-color: burlywood;border-radius:5px;">
		<form action="${pageContext.request.contextPath }/fasongemail"
			style="margin: 15px;">
			<c:if test="${!empty title }">
				<p>
					收件人:<input type="text" style="width: 95%;" value="${title }"
						readonly="readonly">
				</p>
			</c:if>
			<c:if test="${empty title }">
				<p>
					收件人:<input type="text" style="width: 95%;" value="系统管理员 "
						readonly="readonly">
				</p>
			</c:if>
			<p style="margin-top: 30px;">
				主&nbsp;&nbsp;&nbsp;题:<input type="text" style="width: 95.1%;"
					name="title">
			</p>
			<p style="margin-top: 30px;">
				<span style="vertical-align: top;">正&nbsp;&nbsp;&nbsp;文:</span>
				<textarea style="width: 95.1%;height: 300px;" name="context"></textarea>
			</p>
			<c:if test="${!empty title }">
				<input type="hidden" value="${sendid }" class="sendid" name="sendid">
			</c:if>
			<c:if test="${empty title }">
				<input type="hidden" value="1" class="sendid">
			</c:if>
		</form>
	</div>
	<div style="text-align: center;">
		<button type="button" class="btn btn-default fasong"
			style="margin: 15px 30px 0px 15px;">发送</button>
		<button type="button" class="btn btn-default"
			style="margin: 15px 30px 0px 15px;" id="qingkong">清空</button>
		<button type="button" class="btn btn-default shoujianxiang"
			style="margin: 15px 15px 0px 15px;">收件箱</button>
	</div>
</div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp"%>
<c:if test="${!empty title }">
	<script>
		$("#qingkong").click(function() {
			$("form input:eq(1)").val("");
			$("textarea").val("");
		});
	</script>
</c:if>
<c:if test="${empty title }">
	<script>
		$("#qingkong").click(function() {
			$("form input").val("");
			$("textarea").val("");
		});
	</script>
</c:if>
<script>
	$(".shoujianxiang").click(function() {
		window.location.href = "/Agent/feedblist.html";
	});
	$(".fasong").click(function() {
		$("form").submit();
	});
</script>
