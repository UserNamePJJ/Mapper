var myChart1 = echarts.init(document.getElementById('zhu1'));
var myChart2 = echarts.init(document.getElementById('zhu2'));
var myChart3= echarts.init(document.getElementById('zhu3'));
var myChart4= echarts.init(document.getElementById('zhu4'));
var dataAxis = [];
var data = [];
var yMax = 0;
var dataShadow = [];
for (var i = 0; i < data.length; i++) {
    dataShadow.push(yMax);
}
option = {
		
    xAxis: {
    	 type: 'category',
         boundaryGap: true,
         data: (function() {
				var arr = [];
				$.ajax({
					type : "POST",
					async : false, // 同步执行
					url : "/Agent/zhu1.html",
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
        axisLine: {
            show: true
        },
        axisTick: {
            show: false
        },
        axisLabel: {
            textStyle: {
                color: '#999'
            }
        }
    },
    dataZoom: [
        {
            type: 'inside'
        }
    ],
    series: [
        { // For shadow
            type: 'bar',
            itemStyle: {
                normal: {color: 'rgba(0,0,0,0.05)'}
            },
            barGap:'-100%',
            barCategoryGap:'70%',
            data: dataShadow,
            animation: false
        },
        {
            type: 'bar',
            itemStyle: {
                normal: {
                    color: new echarts.graphic.LinearGradient(
                        0, 0, 0, 1,
                        [
                            {offset: 0, color: '#83bff6'},
                            {offset: 0.5, color: '#188df0'},
                            {offset: 1, color: '#188df0'}
                        ]
                    )
                },
                emphasis: {
                    color: new echarts.graphic.LinearGradient(
                        0, 0, 0, 1,
                        [
                            {offset: 0, color: '#2378f7'},
                            {offset: 0.7, color: '#2378f7'},
                            {offset: 1, color: '#83bff6'}
                        ]
                    )
                }
            },
            data:(function() {
				var arr = [];
				$.ajax({
					type : "POST",
					async : false, // 同步执行
					url : "/Agent/zhu1.html",
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
			})()
        }
    ]
};

// Enable data zoom when user click bar.
var zoomSize = 3;
myChart1.on('click', function (params) {
    console.log(dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)]);
    myChart1.dispatchAction({
        type: 'dataZoom',
        startValue: dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)],
        endValue: dataAxis[Math.min(params.dataIndex + zoomSize / 2, data.length - 1)]
    });
});
	myChart1.setOption(option);
	

	option1 = {
			
		    xAxis: {
		    	 type: 'category',
		         boundaryGap: true,
		         data: (function() {
						var arr = [];
						
						$.ajax({
							type : "POST",
							async : false, // 同步执行
							url : "/Agent/zhu2.html",
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
		        axisLine: {
		            show: true
		        },
		        axisTick: {
		            show: false
		        },
		        axisLabel: {
		            textStyle: {
		                color: '#999'
		            }
		        }
		    },
		    dataZoom: [
		        {
		            type: 'inside'
		        }
		    ],
		    series: [
		        { // For shadow
		            type: 'bar',
		            itemStyle: {
		                normal: {color: 'rgba(0,0,0,0.05)'}
		            },
		            barGap:'-100%',
		            barCategoryGap:'70%',
		            data: dataShadow,
		            animation: false
		        },
		        {
		            type: 'bar',
		            itemStyle: {
		                normal: {
		                    color: new echarts.graphic.LinearGradient(
		                        0, 0, 0, 1,
		                        [
		                            {offset: 0, color: '#83bff6'},
		                            {offset: 0.5, color: '#188df0'},
		                            {offset: 1, color: '#188df0'}
		                        ]
		                    )
		                },
		                emphasis: {
		                    color: new echarts.graphic.LinearGradient(
		                        0, 0, 0, 1,
		                        [
		                            {offset: 0, color: '#2378f7'},
		                            {offset: 0.7, color: '#2378f7'},
		                            {offset: 1, color: '#83bff6'}
		                        ]
		                    )
		                }
		            },
		            data:(function() {
						var arr = [];
						$.ajax({
							type : "POST",
							async : false, // 同步执行
							url : "/Agent/zhu2.html",
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
					})()
		        }
		    ]
		};

myChart2.on('click', function (params) {
    console.log(dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)]);
    myChart2.dispatchAction({
        type: 'dataZoom',
        startValue: dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)],
        endValue: dataAxis[Math.min(params.dataIndex + zoomSize / 2, data.length - 1)]
    });
});
	myChart2.setOption(option1);



	option2 = {
			
		    xAxis: {
		    	 type: 'category',
		         boundaryGap: true,
		         data: (function() {
						var arr = [];
						
						$.ajax({
							tyzpe : "POST",
							async : false, // 同步执行
							url : "/Agent/zhu3.html",
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
		        axisLine: {
		            show: true
		        },
		        axisTick: {
		            show: false
		        },
		        axisLabel: {
		            textStyle: {
		                color: '#999'
		            }
		        }
		    },
		    dataZoom: [
		        {
		            type: 'inside'
		        }
		    ],
		    series: [
		        { // For shadow
		            type: 'bar',
		            itemStyle: {
		                normal: {color: 'rgba(0,0,0,0.05)'}
		            },
		            barGap:'-100%',
		            barCategoryGap:'70%',
		            data: dataShadow,
		            animation: false
		        },
		        {
		            type: 'bar',
		            itemStyle: {
		                normal: {
		                    color: new echarts.graphic.LinearGradient(
		                        0, 0, 0, 1,
		                        [
		                            {offset: 0, color: '#83bff6'},
		                            {offset: 0.5, color: '#188df0'},
		                            {offset: 1, color: '#188df0'}
		                        ]
		                    )
		                },
		                emphasis: {
		                    color: new echarts.graphic.LinearGradient(
		                        0, 0, 0, 1,
		                        [
		                            {offset: 0, color: '#2378f7'},
		                            {offset: 0.7, color: '#2378f7'},
		                            {offset: 1, color: '#83bff6'}
		                        ]
		                    )
		                }
		            },
		            data:(function() {
						var arr = [];
						$.ajax({
							type : "POST",
							async : false, // 同步执行
							url : "/Agent/zhu3.html",
							dataType : "json", // 返回数据形式为json
							success : function(result) {
								for (var i = 0; i < result.length; i++) {
									arr.push({
										value : result[i].totalamount
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
		        }
		    ]
		};
myChart3.on('click', function (params) {
    console.log(dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)]);
    myChart3.dispatchAction({
        type: 'dataZoom',
        startValue: dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)],
        endValue: dataAxis[Math.min(params.dataIndex + zoomSize / 2, data.length - 1)]
    });
});
	myChart3.setOption(option2);


	option3 = {
			
		    xAxis: {
		    	 type: 'category',
		         boundaryGap: true,
		         data: (function() {
						var arr = [];
						
						$.ajax({
							type : "POST",
							async : false, // 同步执行
							url : "/Agent/zhu4.html",
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
		        axisLine: {
		            show: true
		        },
		        axisTick: {
		            show: false
		        },
		        axisLabel: {
		            textStyle: {
		                color: '#999'
		            }
		        }
		    },
		    dataZoom: [
		        {
		            type: 'inside'
		        }
		    ],
		    series: [
		        { // For shadow
		            type: 'bar',
		            itemStyle: {
		                normal: {color: 'rgba(0,0,0,0.05)'}
		            },
		            barGap:'-100%',
		            barCategoryGap:'70%',
		            data: dataShadow,
		            animation: false
		        },
		        {
		            type: 'bar',
		            itemStyle: {
		                normal: {
		                    color: new echarts.graphic.LinearGradient(
		                        0, 0, 0, 1,
		                        [
		                            {offset: 0, color: '#83bff6'},
		                            {offset: 0.5, color: '#188df0'},
		                            {offset: 1, color: '#188df0'}
		                        ]
		                    )
		                },
		                emphasis: {
		                    color: new echarts.graphic.LinearGradient(
		                        0, 0, 0, 1,
		                        [
		                            {offset: 0, color: '#2378f7'},
		                            {offset: 0.7, color: '#2378f7'},
		                            {offset: 1, color: '#83bff6'}
		                        ]
		                    )
		                }
		            },
		            data:(function() {
						var arr = [];
						$.ajax({
							type : "POST",
							async : false, // 同步执行
							url : "/Agent/zhu4.html",
							dataType : "json", // 返回数据形式为json
							success : function(result) {
								for (var i = 0; i < result.length; i++) {
									arr.push({
										value : result[i].totalamount
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
		        }
		    ]
		};

myChart4.on('click', function (params) {
    console.log(dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)]);
    myChart4.dispatchAction({
        type: 'dataZoom',
        startValue: dataAxis[Math.max(params.dataIndex - zoomSize / 2, 0)],
        endValue: dataAxis[Math.min(params.dataIndex + zoomSize / 2, data.length - 1)]
    });
});
	myChart4.setOption(option3);
