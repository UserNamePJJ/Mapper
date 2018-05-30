$.getJSON("home",function(data){
		for ( var i = 0; i < data.length; i++) {
		
			$("#ulnva").append("<li style='text-align: center ;font-size: 20px'>" +
								"<a>"+data[i]+"</a>" +
								"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
								"<a>"+data[i+1]+"</a>" +
							
								" </li>"     
			);
			i++;
			/*i++;*/
			$("#ulnva li").hover(function () {
		        $(this).css({"background-color":"yellow"});
		    },function () {
		        $(this).css({"background-color":"white"});
		    });
			$("li a").click(function() {
				
			});
		}
});

