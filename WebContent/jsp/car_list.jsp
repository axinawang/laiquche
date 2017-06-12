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

#leftColumn ul .active {
	background-color: red;
}

#leftColumn li:hover {
	cursor: pointer;
	background-color: #888;
	color: #fff;
}
</style>


</head>

<body>
	<div class="container-fluid">

		<jsp:include page="/jsp/head.jsp"></jsp:include>
		<hr />
		<div class="container-fluid">
			<div class="row-fluid">
				<%--左侧栏 --%>
				<div class="col-md-3" id="leftColumn">
					<%--展示所有品牌 --%>
					<div id="divTitle">
						<h3>品牌</h3>
					</div>
					<div id="divContet">
						<ul id="brandId" class="list-inline">
							<li value="-1" class="brandLi">全部</li>
						</ul>
						<div id="divJianhua" style="float:right">
							<a href="#">更多品牌</a>
						</div>
					</div>

					<%--展示所有品牌结束 --%>


				</div>

				<%--展示查询到的车 --%>
				<div  class="col-md-9">
					<div  id="carsDiv" class="row" style="width: 1100px; margin: 0 auto;">
						
						<c:forEach items="${page_bean.list}" var="p">
							<div class="col-md-4" style="margin: 5px 0px">
								<div style="border: 1px solid #555; padding: 2px">
									<a target='_blank' 
										href="${pageContext.request.contextPath}/car?method=getByCarId&car_id=${p.car_id}">
										<img src="${pageContext.request.contextPath}/${p.car_image}"
										width="330" height="330" style="display: inline-block;">
									</a>

									<p>
										<a target='_blank' 
											href="${pageContext.request.contextPath}/car?method=getByCarId&car_id=${p.car_id}"
											style='color: green'>${fn:substring(p.car_name,0,30) }...</a>
									</p>
									<p>
										<font color="#FF0000">指导价：&yen;${p.guide_price }</font>
									</p>
									<p>
										<font color="#FF0000">首付：&yen;${p.down_payment }</font>
									</p>
									<p>
										<font color="#FF0000">月供：&yen;${p.month_payment }</font>
									</p>
								</div>
							</div>
						</c:forEach>
					</div>

					<!--分页 -->
					<div style="width: 380px; margin: 0 auto; margin-top: 50px;">
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
				</div> 
					<!-- 分页结束=======================        -->


				</div>
				<%--展示查询到的车结束 --%>
			</div>
			<!-- 		商品浏览记录:        -->
			<%-- <div
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
				</div> --%>

		</div>
	</div>

<script>
		//添加查询到的车子信息
		$.addCars=function(data){
			$("#carsDiv").empty();
			$(data).each(function(){
				alert(this.car_name);
				
				var content="<div class='col-md-4' style='margin: 5px 0px'><div style='border: 1px solid #555; padding: 2px'>"+
				"<a target='_blank' href=${pageContext.request.contextPath}/car?method=getByCarId&car_id="+this.car_id+">"+
				"<img src=${pageContext.request.contextPath}/"+this.car_image+" width='330' height='330' style='display: inline-block;'></a>"+
			"<p><a target='_blank' href=${pageContext.request.contextPath}/car?method=getByCarId&car_id="+this.car_id+" style='color: green'>"+this.car_name+"</a></p>"+
				"<p><font color='#FF0000'>指导价：&yen;"+this.guide_price+ "</font></p>"+
				"<p><font color='#FF0000'>首付：&yen;"+this.down_payment+"</font></p>"+
			    "<p><font color='#FF0000'>月供：&yen;"+this.month_payment+"</font></p>"+
			"</div></div>";
				$("#carsDiv").append(content);
				
			});
		};
		$(function() {
			
			//发送ajax请求
			$.get("${pageContext.request.contextPath}/brand?method=findAll",function(data) {
				    //遍历数组
					$(data).each(function(i) {						
							//获取brandId的ul标签
							var $ul = $("#brandId");
							$ul.append($("<li class='brandLi' value='"+this.brand_id+"'>"+this.brand_name+"</li>"));						
					
					});
				    
					    $('#divContet ul li:gt(7)').hide();
	                    $('#divJianhua a').html('更多品牌');
						//$ul.append($("<li><a href='${pageContext.request.contextPath}/car?method=findByBrandInPage&brand_id="+this.brand_id+"&currPage=1'>"+this.brand_name+"</a></li>"));
					  
						//给每个品牌添加点击事件
					  $('.brandLi').each(function(){
						  if( ${brand_id}==$(this).attr("value")) $(this).addClass("active");
						   $(this).click(function(){
							   var $brandId = $(this).attr("value");
							   //window.location = "${pageContext.request.contextPath}/car?method=findByPage&brand_id="+$brandId;
							  $.get("${pageContext.request.contextPath}/car?method=findByPageAjax&brand_id="+$brandId,function(data){
								  $.addCars(data);
							  },"json");						   
							   
						   });
					   }); 	   
					   
					
			      },"json");
			//品牌展开更多 收起
			$('#divJianhua a').click(function () {
                if ($('#divContet ul li:gt(7)').is(':visible')) {
                    $('#divContet ul li:gt(7)').hide();
                    $('#divJianhua a').html('更多品牌');
                }
                else {
                    $('#divContet ul li:gt(7)').show();
                    $('#divJianhua a').html('收起品牌');
                }
            });
			
		});
		
			
	</script>

</body>

</html>