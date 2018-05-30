/*AJAX 读取数据 以及 条件读取数据*/
$.getJSON("docustomer", function(data) {
	for ( var i = 0; i < data.length; i++) {
		$("#customerTable").append(
				"<tr class='custtr'><td>" + data[i].userId
						+ "</td><td> <img src='/Agent/statics/img/"
						+ data[i].avatar + "' height='40px' width='50px'/>" + "</td><td>"
						+ data[i].userName + "</td><td>" + data[i].sex
						+ "</td><td>" + data[i].phone + "</td><td>"
						+ data[i].email + "</td><td>" + data[i].monetary
						+ "</td><td>" + data[i].money + "</td></tr>");
	}
});
$("#customerbtu").click(
		function() {
			$.getJSON("docustomer", $("#form1").serialize(), function(data) {
				$(".custtr").remove();
				for ( var i = 0; i < data.length; i++) {
					$("#customerTable").append(
							"<tr class='custtr'><td>" + data[i].userId
									+ "</td><td> <img src='/Agent/statics/img/"
									+ data[i].avatar + "' height='40px' width='50px'/>" + "</td><td>"
									+ data[i].userName + "</td><td>"
									+ data[i].sex + "</td><td>" + data[i].phone
									+ "</td><td>" + data[i].email + "</td><td>"
									+ data[i].monetary + "</td><td>"
									+ data[i].money + "</td></tr>");
				}
			});
		});
