<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/head.jsp"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/public.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/two.css" />
<div class="right">
	<div class="row" style="padding-left:15px;">
		<span class="col-md-2 col-xs-4" id="ad">产品管理</span> <span
			class="col-md-2 col-xs-4  col-xs-pull-1" id="ade">产品管理</span> <span
			class="col-md-1 col-xs-2 col-md-offset-6" id="ada">控制台&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;></span><span
			class="col-md-1 col-xs-2 col-xs-offset-1" id="add">商品管理</span>
	</div>
	<div class="row" style="padding-left:15px;">
		<div class="col-md-2 ">
			<input type="button" class="commodityAdd" value="添加商品" id="inp"
				style="margin-top: 3px;" />
		</div>
	</div>
	<form action="${pageContext.request.contextPath }/commoditylist"
		method="post">
		<div class="row" style="margin-top: 5px;padding-left:15px;">
			<div class="col-md-2 ">
				<span class="ae" style="border-right-style: none;">上架(${countUp
					})</span><span class="ae">下架(${countDown })</span>
			</div>
			<div class="col-md-1 col-md-pull-1"
				style="margin-left: 20px; margin-top: -6px;">
				<select name="propertyname">
					<option value="">-选择分类-</option>
					<c:forEach var="type" items="${types }">
						<option value="${type }">${type }</option>
					</c:forEach>
					<span class="caret"></span>
				</select>
			</div>
			<div class="col-md-3 col-md-offset-5">
				<div class="input-group"
					style="margin-top: -10px; margin-right: -55px;">
					<input type="text" name="commodityname" class="form-control "
						placeholder="搜索商品"> <span class="input-group-btn">
						<!-- 容易出错点：写成input-group-addon-->
						<button class="btn btn-primary" type="submit">搜索</button> </span>
				</div>
			</div>
		</div>
	</form>
	
	<div class="table-responsive" id="tab" style="margin:0px 15px 0px 15px;border-radius:10px;">
		<table border="1" cellpadding="3" cellspacing="0"
			class="table table-bordered"
			style=" background-color: white;border-radius: 5px;text-align:center;">
			<tr style="text-align: center;">
				<td>ID</td>
				<td>商品图片</td>
				<td>商品名称</td>
				<td>库存</td>
				<td>置顶</td>
				<td>包邮</td>
				<td>积分</td>
				<td>销量</td>
				<td>抵用券</td>
			</tr>
			<c:forEach items="${commodityList }" var="cd">
				<tr id="info" style="text-align: center;">
					<td>${cd.commodityid}</td>
					<td><img
						src="${pageContext.request.contextPath }/statics/img/${cd.commodityavatar}"
						height="40px" width="50px" alt="" />
					</td>
					<td style="font-size: small;width: 230px;">${cd.commodityname}</td>
					<td>${cd.totalinventory}</td>
					<td>${cd.isstick }</td>
					<td>${cd.ispinkage }</td>
					<td>${cd.integral }</td>
					<td>${cd.sales }</td>
					<td>${cd.issales }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
<%@include file="/WEB-INF/jsp/agentjsp/agentcommon/foot.jsp"%>
<script>
	$(function() {
		function setRem() {
			var size = $(window).width();
			var nowsize = (size / 375 * 10);
			$("html").css("font-size", parseInt(nowsize, 10) + "px")
		}
		;
		setRem();
		$(function() {
			var time;
			$(window).bind("resize", function() {
				clearTimeout(time);
				time = setTimeout(function() {
					setRem();
				}, 100);
			});
		});
	});
	$(".commodityAdd").click(function() {
		location.href = "${pageContext.request.contextPath }/commodityAdd";
	});
</script>
