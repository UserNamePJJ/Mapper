var title = null;
var userid = null;
var content = null;
var time = null;
var pd = null;

$(function() {
	$("#renwu tr:even").css("backgroundColor", "red");
	$("#renwu tr:eq(0)").css("backgroundColor", "blue");
	$("#shezhi").click(function() {
		$.ajax({
			type : "GET",
			url : "/Agent/insert.html",
			data : {
				title : $("#title").val(),
				content : $("#content").val(),
				time : $("#time").val()
			},
			dataType : "json",
			success : function(data) {
				$("#title").val("");
				$("#content").val("");
				$("#time").val("");
				if (data == "true") {
					alert("添加定时任务成功！");
					$.getJSON("/Agent/dsrw", function(data) {
						$("#renwu tr:not(:eq(0))").remove();
						var tabody = "";
						for ( var i = 0; i < data.length; i++) {
							tabody +="<tr><td>"+data[i].title+"</td><td>"+data[i].time+"</td><td><a href=/Agent/delete?id="+data[i].id+">删除</a></td></tr>";
						}
						$("#renwu").append(tabody);
					});
				} else if (data == "false") {
					alert("添加定时任务失败！");
				}
			},
			error : function() {
				alert("添加定时任务出错!");
			}
		});
	});

	$('#chatime').on('hidden.bs.modal', function() {
		$("#pd").val(2);
	});

	if ($("#pd").val() == 1) {
		$("#chatime").modal("show");
	}
	if ($("#pdh").val() == 1) {
		$("#timecontent").modal("show");
	}
	if ($("#pdt").val() == 1) {
		$("#mymodal").modal("show");
	}

	$.getJSON("/Agent/dsrw", function(data) {
		$("#renwu tr:not(:eq(0))").remove();
		var tabody = "";
		for ( var i = 0; i < data.length; i++) {
			tabody +="<tr><td>"+data[i].title+"</td><td>"+data[i].time+"</td><td><a href=/Agent/delete?id="+data[i].id+">删除</a></td></tr>";
		}
		$("#renwu").append(tabody);
	});

});
