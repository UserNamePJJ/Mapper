<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>

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
			礼品管理 <span style=" font-size: 15px;">礼品管理</span> <span
				style="float:right; font-size: 16px;">控制台 &nbsp;&nbsp;
				&nbsp;&nbsp; <label>></label> &nbsp;&nbsp;&nbsp;&nbsp; 礼品管理
			</span>
		</h3>
	</div>
	<form method="post"
		action="${pageContext.request.contextPath }/GiftList.html">
		<div id="condition">
			<div class="col-lg-2" style="left:-14px">
				<div class="form-group">
					<input type="text" name="needintegral" class="form-control"
						placeholder="兑换积分">
				</div>

			</div>

			<button class="btn btn-default  " type="submit"
				style=" background-color: #DDDDDD">搜索</button>
			<button class="btn btn-default  " id="insert" type="button"
				style=" background-color: #DDDDDD">添加</button>
		</div>
	</form>
	<div class="table-responsive"
		style="  height: 510px; border-radius: 10px;margin:20px 10px 0px 0px;">
		<table border="1" cellpadding="3" cellspacing="0"
			class="table table-bordered"
			style=" background-color: white;border-radius: 5px;text-align:center;">
			<tr>
				<td>ID</td>
				<td>图片</td>
				<td>名称</td>
				<td>兑换积分</td>
				<td>数量</td>
				<td>操作</td>
			</tr>
			<c:forEach var="gift" items="${giftList}">
				<tr>
					<td>${gift.id}</td>
					<td><img
						src="${pageContext.request.contextPath }/statics/img/${gift.avatarimg}"
						height="40px" width="50px" alt="" /></td>
					<td style="font-size: small;width: 230px;">${gift.giftname}</td>
					<td>${gift.needintegral}</td>
					<td>${gift.giftnumber}</td>
					<td><a class="btn btn-default  "
						href="${pageContext.request.contextPath }/del?id=${gift.id}"
						type="button" style=" background-color: #DDDDDD">删除</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp"%>
<script>
	$("#insert").click(function() {
		location.href = "GiftInsert.html";
	});
	if ($("table").height() > 480) {

		$(".table-responsive").css("overflow", "auto");
	} else {
		$(".table-responsive").css("overflow", "auto");
	}
</script>