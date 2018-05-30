$(document)
		.ready(
				function() {

					function initl() {
						$
								.getJSON(
										"/Agent/wallet/walletlist",
										function(data) {
											$("#daohan")
													.append(
															"<button type='button' class='btn btn-success' onclick='select(0)'>全部</button>")
											for ( var i = 0; i < data.length; i++) {
												$("#daohan")
														.append(
																"<button type='button' class='btn btn-success' onclick='select("
																		+ data[i].id
																		+ ")'>"
																		+ data[i].typename
																		+ "</button>");
											}
										});
					}
					function init2() {
						$
								.getJSON(
										"/Agent/wallet/seatlist",
										function(data) {
											var st = "";
											for ( var i = 0; i < data.length; i++) {
												st += "<li class='ae'><a href='javascript:;' onclick='show(\""
														+ data[i].seatname
														+ "\")'>"
														+ data[i].seatname
														+ "</a></li>";
											}
											$("#seat").append(st);
										});
					}

					initl();
					init2();
					select(0);
				});
function show(se) {
	$("#na").html(se)
}


function seach(){
	var typ=$("#na").html();
	var ope=$("#ope").val();
	var clo=$("#clo").val();
	var name=$("#name").val();
	$.getJSON(
			"/Agent/wallet/selectWallet1",
			"typ=" + typ+"&ope="+ope+"&clo="+clo+"&name="+name,
			function(data) {
				$("table tr:not(:eq(0))").remove();
				for ( var i = 0; i < data.length; i++) {
					$("table")
							.append(
									"<tr><td>"
											+ data[i].walletid
											+ "</td><td>"
											+ data[i].billid
											+ "</td><td>"
											+ data[i].userName
											+ "</td><td>"
											+ data[i].transactiontimeend
											+ "</td><td>"
											+ data[i].typename
											+ "</td><td>"
											+ data[i].transactionprice
											+ "</td><td>"
											+ data[i].money
											+ "</td></tr>");
				}
			});
}



function select(id) {
	$.getJSON(
					"/Agent/wallet/selectWallet",
					"id=" + id,
					function(data) {
						$("table tr:not(:eq(0))").remove();
						for ( var i = 0; i < data.length; i++) {
							$("table")
									.append(
											"<tr><td>"
													+ data[i].walletid
													+ "</td><td>"
													+ data[i].billid
													+ "</td><td>"
													+ data[i].userName
													+ "</td><td>"
													+ data[i].transactiontimeend
													+ "</td><td>"
													+ data[i].typename
													+ "</td><td>"
													+ data[i].transactionprice
													+ "</td><td>"
													+ data[i].money
													+ "</td></tr>");
						}
					});
}
;