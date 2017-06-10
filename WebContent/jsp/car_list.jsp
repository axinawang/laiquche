<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>车辆列表</title>
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
	<link href="${pageContext.request.contextPath}/css/base.css" type="text/css" rel="stylesheet" />
<style>
body {
	margin-top: 20px;
	margin: 0 auto;
	width: 100%;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}
ul .active{
	background-color: red;
}
</style>


</head>

<body>
	<div class="container-fluid">

		<!-- 头部的顶部 -->
		<div class="container-fluid">
			<div class="col-md-4">
				<img src="${pageContext.request.contextPath}/img/logo2.png" />
			</div>
			<div class="col-md-5">
				<img src="${pageContext.request.contextPath}/img/header.png" />
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
		<!--
            	时间：2015-12-30
            	描述：导航条
            -->
		<div class="container-fluid">
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand"
							href="${pageContext.request.contextPath}/index">首页</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul id="menuId" class="nav navbar-nav">
							<li><a
								href="${pageContext.request.contextPath}/car?method=findByPage">我要买车<span
									class="sr-only">(current)</span></a></li>
							<li><a
								href='${pageContext.request.contextPath}/jsp/info.jsp'>来取车介绍</a></li>
							<li><a href=''>常见问题</a></li>
							<li><a href=''>下载应用</a></li>
						</ul>


						<form class="navbar-form navbar-right" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search">
							</div>
							<button type="submit" class="btn btn-default">搜索</button>
						</form>

						

					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>

		<div class="container-fluid">
			<div class="row-fluid">

				<div class="accordion" id="accordion-527728">
				<%--展示所有品牌 --%>
					<div class="accordion-group">					
						<div class="accordion-heading">						
						  <ul id="brandId" class="list-inline" title="品牌">                        
							<li><a class="accordion-toggle" data-toggle="collapse"
								data-parent="#accordion-527728" href="#accordion-element-80741">更多品牌</a>
							</li>
							<li value="-1" class="active" >全部</li>
					      </ul>
						</div>
						<div id="accordion-element-80741" class="accordion-body collapse in">
							<div class="accordion-inner">
								<div style="text-align: left; margin-top: 5px;">
									<ul id="brandMoreId" class="list-inline" title="更多品牌">                                     
									</ul>
								</div>
							</div>
						</div>
					</div>
					<%--展示所有品牌结束 --%>
					
				</div>
                <%--展示查询到的车 --%>
				<div class="row" style="width: 1210px; margin: 0 auto;">
					<div class="col-md-12"></div>
					<c:forEach items="${page_bean.list}" var="p">
						<div class="col-md-2">
							<a
								href="${pageContext.request.contextPath}/car?method=getByCarId&car_id=${p.car_id}">
								<img src="${pageContext.request.contextPath}/${p.car_image}"
								width="170" height="170" style="display: inline-block;">
							</a>
							<p>
								<a
									href="${pageContext.request.contextPath}/car?method=getByCarId&car_id=${p.car_id}"
									style='color: green'>${fn:substring(p.car_name,0,10) }...</a>
							</p>
							<p><font color="#FF0000">指导价：&yen;${p.guide_price }</font>	</p>
						</div>
					</c:forEach>
				</div>
			    <%--展示查询到的车结束 --%>
			    
				<!--分页 -->
				<%-- <div style="width: 380px; margin: 0 auto; margin-top: 50px;">
					<ul class="pagination"
						style="text-align: center; margin-top: 10px;">
						<!-- 判断当前页是否是首页  -->
						<c:if test="${page_bean.currPage == 1 }">
							<li class="disabled"><a href="javascript:void(0)"
								aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
							</li>
						</c:if>

						<c:if test="${page_bean.currPage != 1 }">
							<li><a
								href="${pageContext.request.contextPath}/car?method=findByPage&currPage=${page_bean.currPage-1}&cid=${param.cid}"
								aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
							</li>
						</c:if>



						<!-- 展示所有页码 -->
						<c:forEach
							begin="${page_bean.currPage-5>0?page_bean.currPage-5:1 }"
							end="${page_bean.currPage+4>page_bean.totalPage?page_bean.totalPage:page_bean.currPage+4 }"
							var="n">
							<!-- 判断是否是当前页 -->
							<c:if test="${page_bean.currPage==n }">
								<li class="active"><a href="javascript:void(0)">${n }</a></li>
							</c:if>
							<c:if test="${page_bean.currPage!=n }">
								<li><a
									href="${pageContext.request.contextPath}/product?method=findByPage&currPage=${n}&cid=${param.cid}">${n }</a></li>
							</c:if>
						</c:forEach>


						<!-- 判断是否是最后一页 -->
						<c:if test="${page_bean.currPage == page_bean.totalPage }">
							<li class="disabled"><a href="javascript:void(0)"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</c:if>
						<c:if test="${page_bean.currPage != page_bean.totalPage }">
							<li><a
								href="${pageContext.request.contextPath}/product?method=findByPage&currPage=${page_bean.currPage+1}&cid=${param.cid}"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</c:if>

					</ul>
				</div> --%>
				<!-- 分页结束=======================        -->

				<!--
       		商品浏览记录:
        -->
				<div
					style="width: 1210px; margin: 0 auto; padding: 0 9px; border: 1px solid #ddd; border-top: 2px solid #999; height: 246px;">

					<h4 style="width: 50%; float: left; font: 14px/30px"微软雅黑 ";">浏览记录</h4>
					<div style="width: 50%; float: right; text-align: right;">
						<a href="">more</a>
					</div>
					<div style="clear: both;"></div>

					<div style="overflow: hidden;">

						<ul style="list-style: none;">
							<li
								style="width: 150px; height: 216; float: left; margin: 0 8px 0 0; padding: 0 18px 15px; text-align: center;"><img
								src="${pageContext.request.contextPath}/products/1/cs10001.jpg"
								width="130px" height="130px" /></li>
						</ul>

					</div>
				</div>

			</div>
		</div>
	</div>


	<jsp:include page="/jsp/foot.jsp"></jsp:include>
	<script>
		$(function() {
			
			//发送ajax请求
			$.get("${pageContext.request.contextPath}/brand?method=findAll",function(data) {
				    //获取brand的ul标签
					var $ul = $("#brandId");
					//遍历数组
					$(data).each(function() {
						//$ul.append($("<li><a href='${pageContext.request.contextPath}/car?method=findByBrandInPage&brand_id="+this.brand_id+"&currPage=1'>"+this.brand_name+"</a></li>"));
						$ul.append($("<li><a href='${pageContext.request.contextPath}/car?method=findByBrand&brand_id="	+ this.brand_id	+ "'>"+ this.brand_name	+ "</a></li>"));});
					//给每个品牌添加点击事件
					$('#brandId li').click(function(){
					    alert("brandId li is clicked");

					});
			      },"json");
			
		});
			
	</script>

</body>

</html>