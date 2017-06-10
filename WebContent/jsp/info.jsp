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
				<h2>购车流程</h2>
				<hr />
				<div>
					<p>
						<font color="red">线上报名--></font>
					</p>

					<p>
						<font color="red">客服联系--></font>
					</p>
					<p>
						<font color="red">线下提交申请</font>
					</p>
					<h2>购车方式一（不含购置税与首保）</h2>
				<hr />
				<div>
					<p>
						<font color="red">保证金--></font>
					</p>

					<p>
						<font color="red">月供3年</font>
					</p>
					
					<h2>购车方式二（含购置税与首保）</h2>
				<hr />
				<div>
					<p>
						<font color="red">保证金--></font>
					</p>
<p>
						<font color="red">首付--></font>
					</p>
					<p>
						<font color="red">月供3年</font>
					</p>
					

				</div>
			</div>
		</div>
		<jsp:include page="/jsp/foot.jsp"></jsp:include>
	</div>


</body>

</html>