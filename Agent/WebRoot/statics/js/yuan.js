var num = new Array();



// 基于准备好的dom，初始化echarts实例
var myChart1 = echarts.init(document.getElementById('first'));
var myChart2 = echarts.init(document.getElementById('second'));
var myChart3 = echarts.init(document.getElementById('three'));
// 指定图表的配置项和数据
myChart1.setOption({
	 tooltip : {
	        trigger: 'item',
	        formatter: " {c} ({d}%)"
	    },
	series : [ {
		name : '商品销量百分比',
		type : 'pie',
		radius : '65%',
		itemStyle : {
			normal : {
				borderWidth : 2,
				borderColor : '#ffffff',
				label : {
					show : false
				// 隐藏标示文字
				},
				labelLine : {
					show : false
				// 隐藏标示线
				}
			}
		},
		color : [ 'rgb(221,75,57)', '#0080FF','#DA70D6','green','yellow'],
		data : (function() {
			var arr = [];
			
			$.ajax({
				type : "POST",
				async : false, // 同步执行
				url : "/Agent/yuan.html",
				dataType : "json", // 返回数据形式为json
				success : function(result) {
					for (var i = 0; i < result.length; i++) {
						
						arr.push({
							value : result[i].sales
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
	} ]
});
// 指定图表的配置项和数据
myChart2.setOption({
	 tooltip : {
	        trigger: 'item',
	        formatter: " {c} ({d}%)"
	    },
	series : [ {
		name : '访问来源',
		type : 'pie',
		radius : '65%',
		itemStyle : {
			normal : {
				borderWidth : 2,
				borderColor : '#ffffff',
				label : {
					show : false
				// 隐藏标示文字
				},
				labelLine : {
					show : false
				// 隐藏标示线
				}
			}
		},

		color : [ 'rgb(221,75,57)', '#0080FF','#DA70D6','green','yellow'],
		data : (function() {
			var arr = [];
			
			$.ajax({
				type : "POST",
				async : false, // 同步执行
				url : "/Agent/yuan2.html",
				dataType : "json", // 返回数据形式为json
				success : function(result) {
					for (var i = 0; i < result.length; i++) {
						
						arr.push({
							value : result[i].transactionprice
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
	} ]
});

myChart3.setOption({
	 tooltip : {
	        trigger: 'item',
	        formatter: " {c} ({d}%)"
	    },
	series : [ {
		name : '访问来源',
		type : 'pie',
		radius : '65%',
		itemStyle : {
			normal : {
				borderWidth : 2,
				borderColor : '#ffffff',
				label : {
					show : false
				// 隐藏标示文字
				},
				labelLine : {
					show : false
				// 隐藏标示线
				}
			}
		},

		color :  [ 'rgb(221,75,57)', '#0080FF','#DA70D6','green','yellow'],
		data : (function() {
			var arr = [];
			
			$.ajax({
				type : "POST",
				async : false, // 同步执行
				url : "/Agent/yuan3.html",
				dataType : "json", // 返回数据形式为json
				success : function(result) {
					for (var i = 0; i < result.length; i++) {
						
						arr.push({
							value : result[i].transactionprice
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
	} ]
});