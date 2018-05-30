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

.ideal-wrap {
	float: left;
	clear: both;
	position: relative;
	margin: .5em 0;
}

input {
	width: 200px;
}

form {
	margin: 15% 0 0 30%;
}
</style>
<div class="right" style="padding:0px 0px 0px 10px;">
	<form id="my-form" action="doCommodityAdd"
		enctype="multipart/form-data" method="post">
		<section class="ideal-tabs-content" style="display: block;">

			<div class="ideal-wrap">
				<label class="ideal-label" style="width: 68px;">商品名称:</label><span
					class="ideal-field invalid"><input id="commodityname"
					name="commodityname" type="text" autocomplete="off"><i
					class="ideal-icon ideal-icon-valid" style="display: none;"></i><i
					class="ideal-icon ideal-icon-invalid" style="display: block;"></i></span><span
					class="ideal-error" style="display: none;">此处是必填的.</span>
			</div>

			<div class="ideal-wrap">
				<label class="ideal-label" style="width: 68px;">分类:</label><span
					class="ideal-field"><select id="propertyname"
					name="propertyname" autocomplete="off">
						<option value="">--请选择--</option>
						<c:forEach items="${types }" var="type">
							<option value="${type }">${type }</option>
						</c:forEach>
				</select><i class="ideal-icon ideal-icon-valid" style="display: none;"></i><i
					class="ideal-icon ideal-icon-invalid" style="display: block;"></i></span><span
					class="ideal-error" style="display: none;">此处是必填的.</span>
			</div>

			<div class="ideal-wrap">
				<label class="ideal-label" style="width: 68px;">单价:</label><span
					class="ideal-field invalid"><input id="commodityprice"
					name="commodityprice" type="text" autocomplete="off"><i
					class="ideal-icon ideal-icon-valid" style="display: none;"></i><i
					class="ideal-icon ideal-icon-invalid" style="display: block;"></i></span><span
					class="ideal-error" style="display: none;">此处是必填的.</span>
			</div>
<div class="ideal-wrap">
				<label class="ideal-label" style="width: 68px;">数量:</label><span
					class="ideal-field invalid"><input id="number"
					name="number" type="text" autocomplete="off"><i
					class="ideal-icon ideal-icon-valid" style="display: none;"></i><i
					class="ideal-icon ideal-icon-invalid" style="display: block;"></i></span><span
					class="ideal-error" style="display: none;">此处是必填的.</span>
			</div>
			<div class="ideal-wrap">
				<label class="ideal-label" style="width: 68px;">图片:</label>
				<div id="show" style="display:inline;">


					<input type="text" size="30" name="commodityavatar" id="upfile"
						style="margin-left: -2px"> <input type="file" id="fileEle"
						name="fileEle" class="smt"
						style="margin-right:255px; display:none" formmethod="POST"
						value="上传图片" onchange="upfile.value=this.value"> <input
						type="button" value="上传图片" onclick="fileEle.click()" class="smt"
						style="position: absolute; top: 0px;right: -69px; width: 60px;">


				</div>
			</div>

			<div class="ideal-wrap" style="margin-top:10px">
				<label class="ideal-label" style="width: 68px;">积分:</label><span
					class="ideal-field"><input name="integral" data-ideal="url"
					type="text" autocomplete="off"><i
					class="ideal-icon ideal-icon-valid" style="display: none;"></i><i
					class="ideal-icon ideal-icon-invalid" style="display: none;"></i></span><span
					class="ideal-error" style="display: none;"></span>
			</div>

			<div class="ideal-wrap" style="margin-top:10px">
				<label class="ideal-label" style="width: 68px;">抵用券级别:</label><span
					class="ideal-field"> <select name="vouchersid">
						<option value="">--请选择--</option>
						<c:forEach items="${vouchers }" var="voucher">
							<option value="${voucher.id }">满${voucher.maxconsume }减${voucher.maxdiscount }</option>
						</c:forEach>
				</select><i class="ideal-icon ideal-icon-valid" style="display: none;"></i><i
					class="ideal-icon ideal-icon-invalid" style="display: none;"></i></span><span
					class="ideal-error" style="display: none;"></span>
			</div>
			<div class="ideal-wrap" style="margin-top:10px">
				<button class="btn btn-primary" type="submit">保存</button>
				<button class="btn btn-default" type="reset">重置</button>
			</div>
		</section>

	</form>

</div>

</section>
<script
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script>
	/* $("#commodityname").blur(function() {
		$.ajax({
			url : "checkCommodityname",
			data : {
				commodityname : $(this).val()
			},
			dataType : "json",
			success : function(data) {
				alert(data);
			}
		});
	}); */
</script>
<%@include file="/WEB-INF/jsp/common/foot.jsp"%>
