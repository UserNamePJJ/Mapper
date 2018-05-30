/*AJAX 读取数据 以及 条件读取数据*/
	$.getJSON("doagent",function(data) {
						for ( var i = 0; i < data.length; i++) {
							$("#table").append(
											"<tr class='tr01'><td>"
													+ data[i].userId
													+ "</td><td>"
													+ data[i].userName
													+ "</td><td>"
													+ data[i].sex
													+ "</td><td>"
													+ data[i].idCard
													+ "</td><td>"
													+ data[i].phone
													+ "</td><td>"
													+ data[i].email
													+ "</td><td>"
													+ data[i].monetary
													+ "</td><td>"
													+ data[i].userRoleName
													+ "</td><td><button  id='delbtn' class='btn btn-default' userid="
													+ data[i].userId
													+ " username="
													+ data[i].userName
													+ " type='button' onclick='delAgent("+data[i].userId+")' style='background-color: mediumseagreen;'>刪除</button></td></tr>");
						}
					});

	$("#selectbtu").click(
				function() {
						$.getJSON("doagent",$("#form").serialize(),
										function(data) {
											$(".tr01").remove();
											for ( var i = 0; i < data.length; i++) {
												$("#table")
														.append(
																"<tr class='tr01'><td>"
																		+ data[i].userId
																		+ "</td><td>"
																		+ data[i].userName
																		+ "</td><td>"
																		+ data[i].sex
																		+ "</td><td>"
																		+ data[i].idCard
																		+ "</td><td>"
																		+ data[i].phone
																		+ "</td><td>"
																		+ data[i].email
																		+ "</td><td>"
																		+ data[i].monetary
																		+ "</td><td>"
																		+ data[i].userRoleName
																		+ "</td><td><button id='delbtn' class='btn btn-default' userid="
																		+ data[i].userId
																		+ " username="
																		+ data[i].userName
																		+ " type='submit' onclick='delAgent("+data[i].userId+")' style=' background-color: mediumseagreen;'>刪除</button></td></tr>");
											}
										});
					});
	
	
function delAgent(index) {
	$.getJSON("delAgent","id="+index,function(data) {
		$(".tr01").remove();
		for ( var i = 0; i < data.length; i++) {
			$("#table")
					.append(
							"<tr class='tr01'><td>"
									+ data[i].userId
									+ "</td><td>"
									+ data[i].userName
									+ "</td><td>"
									+ data[i].sex
									+ "</td><td>"
									+ data[i].idCard
									+ "</td><td>"
									+ data[i].phone
									+ "</td><td>"
									+ data[i].email
									+ "</td><td>"
									+ data[i].monetary
									+ "</td><td>"
									+ data[i].userRoleName
									+ "</td><td><button id='delbtn' class='btn btn-default' userid="
									+ data[i].userId
									+ " username="
									+ data[i].userName
									+ " type='submit' onclick='delAgent("+data[i].userId+")' style=' background-color: mediumseagreen;'>刪除</button></td></tr>");
		}
	});
	
}

	
	
