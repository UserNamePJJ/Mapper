$(".left>dl ul>li").hover(function() {
	$(this).css("background-color", "wheat");
}, function() {
	var zhi = $(this).css("border");
	if (zhi != "1px solid rgb(255, 255, 255)") {
		$(this).css("background-color", "wheat");
	} else {
		$(this).css("background-color", "white");
	}
});
$(".left>dl ul>li").click(
		function() {
			var index = $(".left>dl ul>li").index(this);
			var zhi = $(".left>dl ul>li:eq(" + index + ")>span:nth-of-type(2)")
					.attr("class");
			if (zhi != "glyphicon glyphicon-menu-left") {
				$(".left>dl ul>li:eq(" + index + ")").next("div").hide();
				$(".left>dl ul>li:eq(" + index + ")").css("background-color",
						"white");
				$(".left>dl ul>li:eq(" + index + ")").css("border",
						"1px solid white");
				$(".left>dl ul>li:eq(" + index + ")>span:nth-of-type(2)").attr(
						"class", "glyphicon glyphicon-menu-left");
			} else {
				$(".left>dl ul>li:eq(" + index + ")").next("div").show();
				$(".left>dl ul>li:eq(" + index + ")").css("background-color",
						"wheat");
				$(".left>dl ul>li:eq(" + index + ")").css("border",
						"1px solid wheat");
				$(".left>dl ul>li:eq(" + index + ")>span:nth-of-type(2)").attr(
						"class", "glyphicon glyphicon-menu-down");
			}
		});
$("#ku").click(function() {
	window.location.href = "/Agent/inventoryAccess";
});
$("#ck").click(function() {
	window.location.href = "/Agent/inventoryAccess";
});
$("#jilu").click(function() {
	window.location.href = "/Agent/inventoryview";
});
$("#szcolor").click(function() {
	if ($(this).parent().siblings().is(":hidden")) {
		$(this).parent().siblings().show();
	} else {
		$(this).parent().siblings().hide();
	}
});
setInterval(function() {
	$.getJSON("/Agent/tishi", function(data) {
		if (data == "true") {
			alert("您有一个定时任务该执行!");
		}
	});
}, 500)
$("#scolor input").click(
		function() {
			$(this).val($("#scolor input").index(this));
			$(this).parent().parent().siblings("div[class='checkbox']").find(
					"input[type='checkbox']").prop("checked", false);
			$(this).parent().parent().siblings("div[class='checkbox']").find(
					"input[type='checkbox']").val(0);
			$("header").css("background",
					$(this).parent().next().css("background-color"));
			if ($(this).prop("checked") == false) {
				$("header").css("background", "mediumseagreen");
				$(this).val(0);
				var Days = 10; // 此 cookie 将被保存 10 天
				var exp = new Date(); // new Date("December 31, 9998");
				exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
				document.cookie = "co=" + $(this).val() + ";expire="
						+ exp.toGMTString();
				document.cookie = "corpg=mediumseagreen;expire="
						+ exp.toGMTString();
			} else {
				var Days = 10; // 此 cookie 将被保存 10 天
				var exp = new Date(); // new Date("December 31, 9998");
				exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
				document.cookie = "co=" + $(this).val() + ";expire="
						+ exp.toGMTString();
				document.cookie = "corpg="
						+ $(this).parent().next().css("background-color")
						+ ";expire=" + exp.toGMTString();
			}
			;
		});

function ys() {
	var i = document.cookie.split(";")[0].split("=")[1];
	$("#scolor input:eq(" + i + ")").prop("checked", true);
	$("header").css("background", document.cookie.split(";")[1].split("=")[1]);
};
ys();
