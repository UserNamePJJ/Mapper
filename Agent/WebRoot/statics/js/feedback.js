function removefeed(id) {
	$.getJSON("/Agent/feedremove", {
		rid : id
	}, function(data) {
		if (data == "true") {
			alert("删除成功!");
			$("." + id).parent().remove();
		} else {
			alert("删除失败!");
		}
	}, function() {
		alert("删除出现异常!");
	});
}

$(".huifu").click(function() {
	var zhi = $(this).val();
	var aid = $(this).siblings("input[type='hidden']").val();
	window.location.href = "/Agent/sendemail?name=" + zhi + "&id=" + aid;
});