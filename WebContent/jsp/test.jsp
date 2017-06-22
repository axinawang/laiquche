<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title></title>
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery-ui-1.12.1/jquery-ui.min.js"></script>
		<link href="${pageContext.request.contextPath}/js/jquery-ui-1.12.1/jquery-ui.min.css" rel="stylesheet" />
		<script src="${pageContext.request.contextPath}/js/jQuery-Timepicker/jquery-ui-timepicker-addon.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery-Timepicker/i18n/jquery-ui-timepicker-zh-CN.js"></script>
		<link href="${pageContext.request.contextPath}/js/jQuery-Timepicker/jquery-ui-timepicker-addon.min.css" rel="stylesheet" />
		<script type="text/javascript">
			(function($) {

				$(function() {
					$.datepicker.regional['zh-CN'] = {
						changeMonth: true,
						changeYear: true,
						clearText: '清除',
						clearStatus: '清除已选日期',
						closeText: '关闭',
						closeStatus: '不改变当前选择',
						prevText: '<上月',
						prevStatus: '显示上月',
						prevBigText: '<<',
						prevBigStatus: '显示上一年',
						nextText: '下月>',
						nextStatus: '显示下月',
						nextBigText: '>>',
						nextBigStatus: '显示下一年',
						currentText: '今天',
						currentStatus: '显示本月',
						monthNames: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
						monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
						monthStatus: '选择月份',
						yearStatus: '选择年份',
						weekHeader: '周',
						weekStatus: '年内周次',
						dayNames: ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'],
						dayNamesShort: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
						dayNamesMin: ['日', '一', '二', '三', '四', '五', '六'],
						dayStatus: '设置 DD 为一周起始',
						dateStatus: '选择 m月 d日, DD',
						dateFormat: 'yy-mm-dd',
						firstDay: 1,
						initStatus: '请选择日期',
						isRTL: false
					};

				});

				$(function() {

					$.datepicker.setDefaults($.datepicker.regional['zh-CN']);
					
					

					$("#date_yy-mm-dd").prop("readonly", true).datepicker({
						changeMonth: true,
						dateFormat: "yy-mm-dd",
						onClose: function(selectedDate) {

						}

					});

					
					
				});
				
				
			}(jQuery));
		</script>
	</head>

	<body>
		

		<br /> 控制到年月日：
		<input id="date_yy-mm-dd" />
		
	</body>

</html>