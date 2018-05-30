$(document).ready(function(){
	$("#searchbutton").click(function(){
		 $(".how").remove();
		$.getJSON("/Agent/select",$("#billli").serialize(),function(data){
			$("#die").append("<div class='how' style='background-color: ghostwhite;height: 320px'></div>")
			for (var i = 0; i < data.length; i++) {
				$(".how").append( "<div class='row' style='background-color: ghostwhite;border-radius: 5px;width: 100%;margin-left: 0%' class='dia'><p class='navbar-text col-md-1 text-center'>"+data[i].billid+"</p><p class='navbar-text col-md-2 '>"+data[i].commodityName+"</p><p class='navbar-text col-md-1 '>"+data[i].commodityprice +"</p><p class='navbar-text col-md-1'>￥"+data[i].totalamount +"</p><p class='navbar-text col-md-1 '>"+data[i].userName +"</p><p class='navbar-text col-md-1 '>"+data[i].transactiontimestart+"</p><p class='navbar-text col-md-1 '>"+data[i].state +"</p><p class='navbar-text col-md-1 '><input type='button' value='查看详情'></p></div>")
			}
		});
	});
	
});