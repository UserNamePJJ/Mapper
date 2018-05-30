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
	<form id="my-form" action="doInsert" enctype="multipart/form-data"
		method="post">
		<section class="ideal-tabs-content" style="display: block;">

			<div class="ideal-wrap">
				<label class="ideal-label" style="width: 68px;">赠品名称:</label><span
					class="ideal-field invalid"><input id="giftname"
					name="giftname" type="text" autocomplete="off"><i
					class="ideal-icon ideal-icon-valid" style="display: none;"></i><i
					class="ideal-icon ideal-icon-invalid" style="display: block;"></i></span><span
					class="ideal-error" style="display: none;">此处是必填的.</span>
			</div>

			<div class="ideal-wrap">
				<label class="ideal-label" style="width: 68px;">数量:</label><span
					class="ideal-field"><input id="giftnumber" name="giftnumber"
					data-ideal="required email" type="text" autocomplete="off"><i
					class="ideal-icon ideal-icon-valid" style="display: none;"></i><i
					class="ideal-icon ideal-icon-invalid" style="display: block;"></i></span><span
					class="ideal-error" style="display: none;">此处是必填的.</span>
			</div>

			<div class="ideal-wrap">
				<label class="ideal-label" style="width: 68px;">图片:</label>
				<div id="show" style="display:inline;">


					<input type="text" size="30" name="avatarimg" id="upfile"
						style="margin-left: -2px"> <input type="file" id="fileEle" name="fileEle"
						class="smt" style="margin-right:255px; display:none"
						formmethod="POST" value="上传文件" onchange="upfile.value=this.value">
					<input type="button" value="上传文件" onclick="fileEle.click()"
						class="smt"
						style="position: absolute; top: 0px;right: -69px; width: 60px;">


				</div>
			</div>
			<div class="ideal-wrap" style="margin-top:10px">
				<label class="ideal-label" style="width: 68px;">所需积分:</label><span
					class="ideal-field"><input name="needintegral"
					data-ideal="url" type="text" autocomplete="off"><i
					class="ideal-icon ideal-icon-valid" style="display: none;"></i><i
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
<script>
	
</script>
<%@include file="/WEB-INF/jsp/common/foot.jsp"%>
