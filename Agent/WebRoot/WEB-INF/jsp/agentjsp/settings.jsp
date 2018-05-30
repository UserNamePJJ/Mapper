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
	<div id="tou" style="margin-top: 2%;">
		<span style="font-size: 2.5em;margin-left: 2%;">系统设置 <span
			style="font-size: 0.6em;margin-left: 1%; ">系统设置</span> </span> <span
			style="float: right;margin-right: 2%;font-size: 15px;">控制台&nbsp;&nbsp;>&nbsp;&nbsp;<span
			style="color:gainsboro ;">系统设置</span> </span>
	</div>
	<div style="margin-left: 18%;margin-top: 4%;">
		<div class="form-inline" style="height:20px;" id="scolor">
			<div class="col-md-1">
				<button type="button" class="btn btn-default" id="szcolor">设置颜色</button>
			</div>
			<div class="checkbox"
				style="margin-top: 0.6%;margin-left: 6%;display: none;">
				<label> <input type="checkbox" value="0"> </label> <input type="text"
					disabled="disabled"
					style="background-color: deepskyblue;width: 40%;">
			</div>
			<div class="checkbox"
				style="margin-top: 0.6%;margin-left: 6%;display: none;">
				<label> <input type="checkbox" value="0"> </label> <input type="text"
					disabled="disabled"
					style="background-color: hotpink;width: 40%;">
			</div>
			<div class="checkbox"
				style="margin-top: 0.6%;margin-left: 6%;display: none;">
				<label> <input type="checkbox" value="0"> </label> <input type="text"
					disabled="disabled"
					style="background-color: #FF77FF;width: 40%;">
			</div>
		</div>
		<form method="get">
			<div style="margin-top: 5%;margin-left: 1.5%;">
				<p style="font-size: 1.5em;">定&nbsp;时&nbsp;提&nbsp;醒&nbsp;:</p>
				<input type="text" id="title" name="title" placeholder="任务标题"
					required="required"
					style="margin-bottom:1%;margin-left: 10%;border-radius:2px;" /> <input
					type="hidden" id="userid" value="${user.userId }" />
				<textarea id="content" required="required" class="form-control"
					rows="6" style="width: 62%;margin-left: 10%;"></textarea>
			</div>
			<div>
				<input type="datetime-local" id="time" required="required"
					style="margin: 3% 5px 0px 41%;height:25px;margin-right: 2%;border-radius:5px;">
				<button type="button" id="shezhi" class="btn btn-default"
					style="margin-top: 3%;">设置定时任务</button>
			</div>
		</form>
		<div style="margin-top: 2%;">
			<button type="submit" class="btn btn-default" data-toggle="modal"
				data-target="#mymodal">查看定时任务</button>
		</div>
		<div style="margin-top: 5%;margin-left: 55%;">
			<button type="submit" class="btn btn-default"
				style="margin-right: 7%;" data-toggle="modal" data-target="#chatime">查看历史登录时间</button>
			<button type="button" class="btn btn-default">切换登录</button>
		</div>
	</div>
	<!--查看定时任务模态框一  -->
	<input type="hidden" id="pdt" value="${pdt} ">
	<div id="mymodal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">我的定时任务</h4>
					<h6 style="color: red;">点击标题查看任务内容</h6>
				</div>
				<div class="modal-body">
					<table id="renwu">
						<tr>
							<td>任务标题</td>
							<td>任务时间</td>
							<td>操作</td>
						</tr>
					</table>
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<!--查看历史登录时间模态框二  -->
	<input type="hidden" id="pd" value="${pd} ">
	<div id="chatime" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">我的历史登录时间</h4>
					<form action="${pageContext.request.contextPath }/chahistory"
						style="margin-top: 5%;">
						<input type="text" name="historytime" Class="Wdate"
							readonly="readonly" onclick="WdatePicker();" placeholder="起始时间"
							style="margin: 0px 5px 0px 5px;text-indent: 15px;height: 4.5%;border-radius:3px;">
						<button type="submit" class="btn btn-default"
							style="margin-left: 2%;">查询</button>
					</form>
				</div>
				<div class="modal-body">
					<table id="renwu">
						<c:forEach var="historylist" items="${historylist }">
							<tr style="margin-right: 2%;">
								<td>${historylist.time }</td>
								<td>${historylist.sh}</td>
								<td>${historylist.miao }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<!--点击标题查看内容模态框三  -->
	<input type="hidden" id="pdh" value="${pdh} ">
	<div id="timecontent" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button class="close" data-dismiss="modal">&times;</button>
					<h6 class="modal-title">${timeout.title }</h6>
				</div>
				<div class="modal-body">
					<h4>${timeout.content }</h4>
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>

</div>
</section>
<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/foot.jsp"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/timeout.js"></script>