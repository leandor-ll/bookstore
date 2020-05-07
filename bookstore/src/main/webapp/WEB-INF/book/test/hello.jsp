<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath }/js/jquery-3.2.1.min.js"></script>

	<script type="text/javascript"
	src="${pageContext.servletContext.contextPath }/js/echarts.js"></script>
	<script type="text/javascript">
		$(function(){
			var myChart = echarts.init(document.getElementById('div'));
			myChart.setOption = {
				      tooltip : {
				        trigger: 'axis',
				        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
				            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
				        }
				    },
				    xAxis: {
				        type: 'category',
				        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
				    },
				    yAxis: {
				        type: 'value',
				        
				    },
				    series: [{
				        data: [120, 200, 150, 80, 70, 110, 130],
				        type: 'bar'
				    }]
				};
		})
	</script>

<title>应用图表echarts</title>
</head>
<body>

	<h1>hahaha</h1>
	<div id="div"></div>
	
</body>
</html>