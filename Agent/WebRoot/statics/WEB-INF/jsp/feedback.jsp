<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/feedback.css" />
<style>
</style>
<div class="right">
	<div id="tou">
		<h3 style="margin:10px 0px 0px 15px;">
			意见反馈 <span style="font-size: 15px; color: #9d9d9d;">意见反馈记录</span> <span
				style="float:right;">控制台&nbsp;&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;&nbsp;财务管理</span>
		</h3>
	</div>
	<div class="panel panel-default" style="margin: 10px 15px 0px 15px;">
		<div class="panel-heading">
			<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><span
				style="width: 40px;display:inline-block;margin-left: 5px;">发件人</span><span
				style="position: relative;border: 1px solid #f5f5f5;left: 50px;width: 900px;display:inline-block;">标题</span>
			<sp an style="">时间 </span>
		</div>
		<table class="table">
			<div>
				<c:forEach var="item" items="${getComments}">
					<li
						style="border: 1px solid #f5f5f5;padding: 5px;padding: 5px 40px 5px 15px;<c:if test="${item.staticid eq 0}">font-weight: bold;</c:if>"
						data-target="#${item.id }" data-toggle="modal"
						class="li${item.id }"><span
						class="glyphicon glyphicon-envelope" aria-hidden="true"></span><span
						style="width: 40px;display:inline-block;margin-left: 5px;">${item.addressername
							}</span><span
						style="position: relative;border: 1px solid white;left: 50px;width: 800px;display:inline-block;height: 18px;overflow: hidden;vertical-align: middle;<c:if test="${item.staticid eq 0 }">font-weight: bold;</c:if>">${item.title
							}&nbsp;<span style="color:#ddd;display:inline;">${item.content
								}</span> </span> <span
						style="display:inline-block;margin-left: 100px;width: 50px;">
							<c:if test="${item.year eq 1}">
						${item.month }月${item.date }日
						</c:if> <c:if test="${!(item.year eq 1)}">
						${item.year }/${item.month }/${item.date }
						</c:if> </span><span class="glyphicon glyphicon-remove"
						style="position: relative;left: 40px;z-index:1;"></span><span
						style="border:1px solid white;position: relative;left:28px;top:2px;width:13px;display: inline-block;height:13px;z-index:10;"
						onclick="removefeed(${item.id})" class="${item.id }"></span></li>
					<div id="${item.id }" class="modal fade">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button class="close" data-dismiss="modal">&times;</button>
									<h6 class="modal-title">${item.title }</h6>
								</div>
								<div class="modal-body">
									<h4>${item.content }</h4>
								</div>
								<div class="modal-footer">
									<input type="hidden" value="${item.addresser }" class="aid">
									<button class="btn btn-default huifu"
										value="${item.addressername }">回复</button>
									<button class="btn btn-default" data-dismiss="modal">关闭</button>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</table>
	</div>
</div>
</section>
<%@include file="/WEB-INF/jsp/common/foot.jsp"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/feedback.js"></script>
<c:forEach var="item" items="${getComments}">
	<script>
		$(".li${item.id }").click(function(){
			$(".li${item.id }").css("font-weight","lighter");
			$(".li${item.id } span").css("font-weight","lighter");
			var zhi = ${item.id}
			$.getJSON("/Agent/updateStatice",{id:zhi});
		});
	</script>
</c:forEach>