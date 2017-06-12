<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>来取车</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"
	type="text/javascript"></script>
	<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" type="text/css" />
</head>

<body>
	<div class="container-fluid">

		<jsp:include page="/jsp/head.jsp"></jsp:include>

		<!--
            	描述：轮播条
            -->
		<div class="container-fluid">
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="${pageContext.request.contextPath}/img/1.jpg">
						<div class="carousel-caption"></div>
					</div>					
				</div>

				
			</div>
		</div>
		<!--
            	描述：热门车显示
            -->
		<div class="container-fluid">
			<div class="col-md-12" style="text-align: center;">
				<h1>热&nbsp;&nbsp;门&nbsp;&nbsp;车</h1>
			</div>
			<div class="col-md-12" >
			<c:forEach items="${hotCarList}" var="car" varStatus="status">
				<div class="col-md-6" style="${status.index%2==0 ? 'text-align: right;height: 280px;':'text-align: left;height: 280px;'}" >
					<a
						href="${pageContext.request.contextPath }/car?method=getByCarId&car_id=${car.car_id}">
						<img src="${pageContext.request.contextPath}/${car.hot_image}"
						width="545px" height="273px" >
					</a>
				</div>
			</c:forEach>
			</div>
		</div>

		<jsp:include page="/jsp/foot.jsp"></jsp:include>
            
            
		
	</div>
	
</body>

</html>