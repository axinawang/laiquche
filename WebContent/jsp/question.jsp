<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WEB01</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"
	type="text/javascript"></script>
</head>

<body>
	<div class="container-fluid">

		<!-- 动态包含 -->
		<jsp:include page="/jsp/head.jsp"></jsp:include>

		<div class="container-fluid">
			<div class="main_con">
				<h3>1. 来取车是什么？</h3>
				<hr />

				<p>
					<font color="red" size="4">一种新型的购车方式“以租代购”
						租车与贷款购车的有机结合。消费者支付一定比例的保证金，并照协议按期支付租金就能拥有此款车的使用权，租期期满后就能获得该车的所有权。</font>
				</p>


				<h3>2. 来取车需要准备什么资料？</h3>
				<hr />

				<p>
					<font color="red" size="4">需要客户本人身份证、户口本、驾驶证、征信报告（个人人民银行拉取）。</font>
				</p>

				<h3>3. 我们的优势是什么？</h3>
				<hr />

				<p>
					<font color="red" size="4">相比其它的购车模式，“以租代购”有自己的优势。前期的上税、保险等费用都已由平台支付，消费者首先就省下了首付资金和各种税金、保险等前期费用，能够很好地解决意向购车者资金不足的问题，而且审核及签约流程简便，快捷。</font>
				</p>
				
				<h3>4.	如何支付车款？</h3>
				<hr />

				<p>
					<font color="red" size="4">车辆保证金（可退）与月供由指定银行卡代扣。</font>
				</p>

				<h3>5.	购买的车辆保险主要包含哪些险种？</h3>
				<hr />

				<p>
					<font color="red" size="4">交强险与商业险（100万）</font>
				</p>
				
				<h3>6.	支付首付后多久可以提车？</h3>
				<hr />

				<p>
					<font color="red" size="4">一般是在15个工作日内</font>
				</p>
				
				<h3>7.	车辆如何保养和维修？</h3>
				<hr />

				<p>
					<font color="red" size="4">客户可自由选择4S店或平台指定维修点，费用需自理</font>
				</p>
				
				<h3>8.	车辆违章如何处理？</h3>
				<hr />

				<p>
					<font color="red" size="4">用车期间，车辆发生违章事项需您承担全部责任。</font>
				</p>
				
				<h3></h3>
				<hr />

				<p>
					<font color="red" size="4"></font>
				</p>
				
				<h3>9.	发生事故如何处理和保险理赔？</h3>
				<hr />

				<p>
					<font color="red" size="4">平台配合客户处理</font>
				</p>


				<jsp:include page="/jsp/foot.jsp"></jsp:include>
			</div>
</body>

</html>