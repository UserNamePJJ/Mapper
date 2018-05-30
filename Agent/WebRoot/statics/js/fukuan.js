$(document)
		.ready(
				function() {

					$(".daohang")
							.click(
									function() {
										$(".daohang").removeClass("sty")
										var index = $(".daohang").index(this);
										$(".daohang:eq(" + index + ")")
												.addClass("sty");
										$(".tab").remove();

										$
												.getJSON(
														"/Agent/load1",
														"index=" + index,
														function(data) {

															var str = "";
															for ( var i = 0; i < data.length; i++) {
																var time = strFormat(data[i].transactiontimestart);
																str += "<div class='tab'><table  border='0' cellspacing='0' cellpadding='0' style='border-color: gray;'><tr><td colspan='8'><div class='row'><div class='col-md-2'>"
																		+ time
																		+ "</div>"
																		+ "<div class='col-md-2'>"
																		+ data[i].billid
																		+ "</div><div class='col-md-2'><a href='tencent://message/?uin=1317327867&site=qq&menu=yes'><img  src='../statics/img/q.png' width='15px' />联系卖家</a></div>"
																		+ "<div class='col-md-5'></div><div class='col-md-1'><a href='javascript:;' ><i class='del' onclick='del("
																		+ data[i].billid
																		+ ","
																		+ index
																		+ ")'>uu</i><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a></div>"
																		+ "</div></tr><tr><td style='width:90px;'><img src='/Agent/statics/img/"
																		+ data[i].commodityavatar
																		+ "' width='90px' height='90px' /></td><td style='width: 160px;'>"
																		+ data[i].commodityName
																		+ "</td><td style='width: 73px;color:red'>￥"
																		+ data[i].commodityprice
																		+ "</td><td style='width: 65px;'>"
																		+ data[i].number
																		+ "</td><td style='width: 138px;'>投诉卖家</td><td style='width: 70px;color:red'>￥"
																		+ data[i].totalamount
																		+ "</td><td><a href='#'>"
																		+ data[i].state
																		+ "</a><br /></td><td style='width: 115px;'><a href='#' onclick='model("
																		+ data[i].billid
																		+ ")'>订单详情</a></td></tr>"
																		+ "</table></div>"
															}
															$(".billlist")
																	.append(str);
														});

									});
					$(".sea button").click(function() {
						$("#san").rotate(180);

						$("#dw").show();

					});

					$("#dw").hover(function() {

					}, function() {
						$("#dw").hide();
						$("#san").rotate(0);
					});

					$("#ut li").click(function() {
						var index = $("#ut li").index(this);
						var cont = $(this).html();
						$("#ji").html(cont)
						$("#dw").hide();
						$("#san").rotate(0);
					});

					$(".sp").click(function() {
						alert("fdfdf")
						var index = $(".sp").index(this);
						var bid = $(".billid:eq(" + index + ")").html();

					});

					function load() {

						$(".daohang:eq(0)").addClass("sty");
						$
								.getJSON(
										"/Agent/load",
										function(data) {

											var str = "";
											for ( var i = 0; i < data.length; i++) {
												var time = strFormat(data[i].transactiontimestart);
												str += "<div class='tab'><table  border='0' cellspacing='0' cellpadding='0' style='border-color: gray;'><tr><td colspan='8'><div class='row'><div class='col-md-2'>"
														+ time
														+ "</div>"
														+ "<div class='col-md-2 bi'>"
														+ data[i].billid
														+ "</div><div class='col-md-2'><a href='tencent://message/?uin=1317327867&site=qq&menu=yes'><img style='background-color:#e8e8e8 ;' src='../statics/img/q.png' width='15px' />联系卖家</a></div>"
														+ "<div class='col-md-5'></div><div class='col-md-1'><a href='javascript:;' ><i class='del' onclick='del("
														+ data[i].billid
														+ ",-1)'>uu</i><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a></div>"
														+ "</div></tr><tr><td style='width:90px;'><img src='/Agent/statics/img/"
														+ data[i].commodityavatar
														+ "' width='90px' height='90px' /></td><td style='width: 160px;padding-right: 18px'>"
														+ data[i].commodityName
														+ "</td><td style='width: 73px;color:red'>￥"
														+ data[i].commodityprice
														+ "</td><td style='width: 57px;'>"
														+ data[i].number
														+ "</td><td style='width: 135px;'>投诉卖家</td><td style='width: 68px;color:red'>￥"
														+ data[i].totalamount
														+ "</td><td><a href='#'>"
														+ data[i].state
														+ "</a><br /></td><td style='width: 115px;'><a href='#' onclick='model("
														+ data[i].billid
														+ ")'>订单详情</a></td></tr>"
														+ "</table></div>"
											}
											$(".billlist").append(str);
										});
					}

					load();
				});

// 时间转换
function strFormat(obj) {
	var date = new Date(obj);
	var y = 1900 + date.getYear();
	var m = "0" + (date.getMonth() + 1);
	var d = "0" + date.getDate();
	return y + "-" + m.substring(m.length - 2, m.length) + "-"
			+ d.substring(d.length - 2, d.length);
}

// 删除订单提示
function del(bi, num) {

	if (window.confirm("确认要删除选择的数据吗？")) {
		$("#load").show();
		if (num >= 0) {
			var t1 = window.setTimeout("hello()", 1000);// 使用字符串执行方法
			var t2 = window.setTimeout("hello2(" + bi + "," + num + ")", 1200);
		} else {

			var t1 = window.setTimeout("hello()", 1000);// 使用字符串执行方法
			// window.clearTimeout(t1);//去掉定时器
			var t2 = window.setTimeout("hello1(" + bi + ")", 1200);

		}

	}

}

function model(big) {
	$
			.getJSON(
					"/Agent/billcont",
					"billid=" + big,
					function(data) {
						$("#myModal").remove();
						var str = "";
						for ( var i = 0; i < data.length; i++) {
							str += "<div class='modal fade' id='myModal' tabindex='-1' role='dialog' aria-labelledby='myModalLabel'>"
									+ "<div class='modal-dialog' role='document'><div class='modal-content'><div class='modal-header'>"
									+ "<button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>"
									+ "<h4 class='modal-title' id='myModalLabel'>订单信息</h4> </div> <div class='modal-body'><div class='row'>"
									+ "<div class='col-md-4'>  订单编号: "
									+ data[i].billid
									+ "</div> <div class='col-md-4'>  交易编号: pjj123</div></div>"
									+ "<div class='row' style='margin-top: 20px'> <div class='col-md-4'>  成交时间: "
									+ data[i].transactiontimestart
									+ "</div>"
									+ "<div class='col-md-4'>  付款时间: "
									+ data[i].transactiontimeend
									+ "</div> <div class='col-md-4'>  确认时间: 2018-05-17</div></div>"
									+ "<div style='border:1px solid #e8e8e8; width: auto;margin-top: 20px'><table><tr style='text-align:center;'><td >宝贝</td>	<td>宝贝属性</td><td>状态</td><td>单价(元)</td><td>数量</td><td>优惠</td><td>商品总价(元)</td><td>运费(元)</td></tr>"
									+ "<tr><td class='tdd' style='width:220px'><div class='row'><div class='col-md-4'><img src='/Agent/statics/img/"
									+ data[i].commodityavatar
									+ "' width='80px' height='80px' /></div><div class='col-md-8'>"
									+ data[i].commodityName
									+ "</div></div></td><td class='tdd' style='text-align:center;'><strong>—</strong></td><td class='tdd'>"
									+ data[i].state
									+ "</td> <td class='tdd' style='text-align:center;'>"
									+ data[i].commodityprice
									+ "</td><td class='tdd' style='text-align:center;'>"
									+ data[i].number
									+ "</td><td class='tdd' style='text-align:center;'><strong>—</strong></td><td class='tdd' style='text-align:center;'>"
									+ data[i].totalamount
									+ "</td><td class='tdd' style='text-align:center;'>10.00</td></tr>"
									+ "</table></div></div><div class='modal-footer'><button type='button' class='btn btn-primary' data-dismiss='modal' id='bu'>Close</button></div></div></div></div>"

						}
						$("#content").append(str);

					});

	$('#myModal').modal('toggle');

}

$("#bu").click(function() {
	$('#myModal').modal('toggle')
});

function hello() {
	$("#load").hide();

}
function hello1(bi) {
	$
			.getJSON(
					"/Agent/deletebill",
					"billid=" + bi,
					function(data) {
						$(".tab").remove();
						var str = "";
						for ( var i = 0; i < data.length; i++) {
							var time = strFormat(data[i].transactiontimestart);
							str += "<div class='tab'><table  border='0' cellspacing='0' cellpadding='0' style='border-color: gray;'><tr><td colspan='8'><div class='row'><div class='col-md-2'>"
									+ time
									+ "</div>"
									+ "<div class='col-md-2 bi'>"
									+ data[i].billid
									+ "</div><div class='col-md-2'><a href='tencent://message/?uin=1317327867&site=qq&menu=yes'><img style='background-color:#e8e8e8 ;' src='../statics/img/q.png' width='15px' />联系卖家</a></div>"
									+ "<div class='col-md-5'></div><div class='col-md-1'><a href='javascript:;' ><i class='del' onclick='del("
									+ data[i].billid
									+ ",-1)'>uu</i><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a></div>"
									+ "</div></tr><tr><td style='width:90px;'><img src='/Agent/statics/img/"
									+ data[i].commodityavatar
									+ "' width='90px' height='90px' /></td><td style='width: 160px;padding-right: 18px'>"
									+ data[i].commodityName
									+ "</td><td style='width: 73px;color:red'>￥"
									+ data[i].commodityprice
									+ "</td><td style='width: 57px;'>"
									+ data[i].number
									+ "</td><td style='width: 135px;'>投诉卖家</td><td style='width: 68px;color:red'>￥"
									+ data[i].totalamount
									+ "</td><td><a href='#'>"
									+ data[i].state
									+ "</a><br /></td><td style='width: 115px;'><a href='#' onclick='model("
									+ data[i].billid
									+ ")'>订单详情</a></td></tr>"
									+ "</table></div>"
						}
						$(".billlist").append(str);
					});
}
function hello2(bi, num) {
	$
			.getJSON(
					"/Agent/deletebillo",
					"billid=" + bi + "&num=" + num,
					function(data) {
						$(".tab").remove();
						var str = "";
						for ( var i = 0; i < data.length; i++) {
							var time = strFormat(data[i].transactiontimestart);
							str += "<div class='tab'><table  border='0' cellspacing='0' cellpadding='0' style='border-color: gray;'><tr><td colspan='8'><div class='row'><div class='col-md-2'>"
									+ time
									+ "</div>"
									+ "<div class='col-md-2 bi'>"
									+ data[i].billid
									+ "</div><div class='col-md-2'><a href='tencent://message/?uin=1317327867&site=qq&menu=yes'><img style='background-color:#e8e8e8 ;' src='../statics/img/q.png' width='15px' />联系卖家</a></div>"
									+ "<div class='col-md-5'></div><div class='col-md-1'><a href='javascript:;' ><i class='del' onclick='del("
									+ data[i].billid
									+ ","
									+ num
									+ ")'>uu</i><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a></div>"
									+ "</div></tr><tr><td style='width:90px;'><img src='/Agent/statics/img/"
									+ data[i].commodityavatar
									+ "' width='90px' height='90px' /></td><td style='width: 160px;padding-right: 18px'>"
									+ data[i].commodityName
									+ "</td><td style='width: 73px;color:red'>￥"
									+ data[i].commodityprice
									+ "</td><td style='width: 57px;'>"
									+ data[i].number
									+ "</td><td style='width: 135px;'>投诉卖家</td><td style='width: 68px;color:red'>￥"
									+ data[i].totalamount
									+ "</td><td><a href='#'>"
									+ data[i].state
									+ "</a><br /></td><td style='width: 115px;'><a href='#' onclick='model("
									+ data[i].billid
									+ ")'>订单详情</a></td></tr>"
									+ "</table></div>"
						}
						$(".billlist").append(str);
					});
}