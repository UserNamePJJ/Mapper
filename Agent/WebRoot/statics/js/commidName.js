
$.ajax({
	type : "GET",
	url : "/Agent/yuan.html",
	dataType : "json", // 返回数据形式为json
	success : function(result) {
		$("#yuan1").text(result[0].propertyname);
		$("#yuan2").text(result[1].propertyname);
		$("#yuan3").text(result[2].propertyname);
		$("#yuan4").text(result[3].propertyname);
		$("#yuan5").text(result[4].propertyname);
	}
});

$.ajax({
	type : "GET",
	url : "/Agent/yuan2.html",
	dataType : "json", // 返回数据形式为json
	success : function(result) {
		$("#yuan6").text(result[0].userName);
		$("#yuan7").text(result[1].userName);
		$("#yuan8").text(result[2].userName);
		$("#yuan9").text(result[3].userName);
		$("#yuan10").text(result[4].userName);
	}
});

$.ajax({
	type : "GET",
	url : "/Agent/yuan3.html",
	dataType : "json", // 返回数据形式为json
	success : function(result) {
		$("#yuan11").text(result[0].userName);
		$("#yuan12").text(result[1].userName);
		$("#yuan13").text(result[2].userName);
		$("#yuan14").text(result[3].userName);
		$("#yuan15").text(result[4].userName);
		
	}
});