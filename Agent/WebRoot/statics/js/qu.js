var myChart1 = echarts.init(document.getElementById('qu1'));
option = {
	    xAxis: {
	        type: 'category',
	        data: (function() {
				var arr = [];
				$.ajax({
					type : "POST",
					async : false, // 同步执行
					url : "/Agent/qu1.html",
					dataType : "json", // 返回数据形式为json
					success : function(result) {
						for (var i = 0; i < result.length; i++) {
							
							arr.push({
								value : result[i].yue
							});
						}
					},
					error : function(errorMsg) {
						alert("不好意思,图表请求数据失败啦!");
						myChart1.hideLoading();
					}
				});
				return arr;
			})()
	    },
	    yAxis: {
	        type: 'value'
	    },
	    series: [{
	        data: (function() {
				var arr = [];
				
				$.ajax({
					type : "POST",
					async : false, // 同步执行
					url : "/Agent/qu1.html",
					dataType : "json", // 返回数据形式为json
					success : function(result) {
						for (var i = 0; i < result.length; i++) {
							
							arr.push({
								value : result[i].billCount
							});
						}
					},
					error : function(errorMsg) {
						alert("不好意思,图表请求数据失败啦!");
						myChart1.hideLoading();
					}
				});
				return arr;
			})(),
	        type: 'line'
	    }]
	};

myChart1.setOption(option);

var myChart2 = echarts.init(document.getElementById('qu2'));
option = {
	    xAxis: {
	        type: 'category',
	        data: (function() {
				var arr = [];
				$.ajax({
					type : "POST",
					async : false, // 同步执行
					url : "/Agent/qu2.html",
					dataType : "json", // 返回数据形式为json
					success : function(result) {
						for (var i = 0; i < result.length; i++) {
							arr.push({
								value : result[i].yue
							});
						}
					},
					error : function(errorMsg) {
						alert("不好意思,图表请求数据失败啦!");
						myChart1.hideLoading();
					}
				});
				return arr;
			})()
	    },
	    yAxis: {
	        type: 'value'
	    },
	    series: [{
	        data: (function() {
				var arr = [];
				$.ajax({
					type : "POST",
					async : false, // 同步执行
					url : "/Agent/qu2.html",
					dataType : "json", // 返回数据形式为json
					success : function(result) {
						for (var i = 0; i < result.length; i++) {
							
							arr.push({
								value : result[i].billCount
							});
						}
					},
					error : function(errorMsg) {
						alert("不好意思,图表请求数据失败啦!");
						myChart1.hideLoading();
					}
				});
				return arr;
			})(),
	        type: 'line'
	    }]
	};

myChart2.setOption(option);