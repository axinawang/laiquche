<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container-fluid">
	<div class="col-md-4">
		<a 	href="${pageContext.request.contextPath}/index">
		  <img src="${pageContext.request.contextPath}/img/logo2.png" /></a>
	</div>
	<div class="col-md-5">
		<ul id="menuId" class="nav navbar-nav">
					<li><a
						href="${pageContext.request.contextPath}/car?method=findByPage">我要买车</a></li>
					<li><a href='${pageContext.request.contextPath}/jsp/info.jsp'>来取车介绍</a></li>
					<li><a href=''>常见问题</a></li>
					<li><a href='${pageContext.request.contextPath}/jsp/test.jsp'>下载应用</a></li>
				</ul>
	</div>
	<div class="col-md-3" style="padding-top: 20px">
		<ol class="list-inline">
			<c:if test="${ empty user}">
				<li><a
					href="${pageContext.request.contextPath}/user?method=loginUI">登录</a></li>
				<li><a
					href="${pageContext.request.contextPath}/user?method=registerUI">注册</a></li>
				<!-- <li><a href="cart.htm">购物车</a></li> -->
			</c:if>
			<c:if test="${not empty user }">
				<li>hello:${user.username}</li>
				<li><a
					href="${pageContext.request.contextPath}/user?method=logout">logout</a></li>
				<!-- <li><a href="cart.htm">购物车</a></li> -->
			</c:if>
		</ol>
	</div>
</div>
