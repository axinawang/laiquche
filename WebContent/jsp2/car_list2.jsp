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
<LINK href="${pageContext.request.contextPath}/jsp2/style/css/style.css" rel=stylesheet>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"
	type="text/javascript"></script>
	<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/pic.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/inc.js"></script>
	
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
<jsp:include page="/jsp2/head.jsp"></jsp:include>
	<div class="container-fluid">

		
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
					
					<%--展示首付 --%>
					<div id="divTitle">
						<h3>首付</h3>
					</div>
					<div>
						<ul id="downPaymentId" class="list-inline">
							<li value="-1" class="downPaymentLi active">全部</li>
							<li value="0" class="downPaymentLi">1万以内</li>
							<li value="10000" class="downPaymentLi">1-2万</li>
							<li value="20000" class="downPaymentLi">2-3万</li>
							<li value="30000" class="downPaymentLi">3-4万</li>
							<li value="40000" class="downPaymentLi">4-5万</li>
							<li value="50000" class="downPaymentLi">5万以上</li>
						</ul>						
					</div>
					<%--展示首付结束 --%>
					<%--展示月供 --%>
					<div id="divTitle">
						<h3>月供</h3>
					</div>
					<div>
						<ul id="monthPaymentId" class="list-inline">
							<li value="-1" class="monthPaymentLi active">全部</li>
							<li value="0" class="monthPaymentLi">1千以内</li>
							<li value="1000" class="monthPaymentLi">1-2千</li>
							<li value="2000" class="monthPaymentLi">2-3千</li>
							<li value="3000" class="monthPaymentLi">3-4千</li>
							<li value="4000" class="monthPaymentLi">4-5千</li>
							<li value="5000" class="monthPaymentLi">5千以上</li>
						</ul>						
					</div>
					<%--展示月供结束 --%>
                    <%--展示所有车型--%>
					<div id="divTitle">
						<h3>车型</h3>
					</div>
					<div >
						<ul id="modelId" class="list-inline">
							<li value="-1" class="modelLi active">全部</li>
						</ul>
					</div>
					<%--展示所有车型结束 --%>

				</div>

				<%--展示查询到的车 --%>
				<div  class="col-md-9">
				
<!-- 搜索框 -->
<div class="input-group" style="width: 1000px; margin: 0 auto;">
    <input id="searchInput" type="text" class="form-control input-lg" placeholder="品牌或车系">
    <span id="searchId" class="input-group-addon btn btn-primary">搜索</span>
</div>

				
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
				</div>  --%>
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
<jsp:include page="/jsp2/foot.jsp"></jsp:include>
<script>
    //初始化页面
	$.init=function(){
		//给每种首付添加点击事件
		  $('.downPaymentLi').each(function(){						  
			   $(this).click(function(){
				   var $downPayment = $(this).attr("value");
				 //更改背景色
				  $(this).addClass("active").siblings().removeClass("active");
				  
				  var $brandId=$("#brandId .active").attr("value");
				  var $modelId=$("#modelId .active").attr("value");
				  var $monthPayment=$("#monthPaymentId .active").attr("value");
				  var $searchKey=encodeURI(encodeURI($("#searchInput").val()));
				  $.ajaxUninSearch($brandId,$modelId,$downPayment,$monthPayment,$searchKey);
				   
			   });
		   }); 
		
		//给每种月供添加点击事件
		  $('.monthPaymentLi').each(function(){						  
			   $(this).click(function(){
				   var $monthPayment = $(this).attr("value");
				 //更改背景色
				  $(this).addClass("active").siblings().removeClass("active");
				  
				  var $brandId=$("#brandId .active").attr("value");
				  var $modelId=$("#modelId .active").attr("value");
				  var $downPayment=$("#downPaymentId .active").attr("value");
				  var $searchKey=encodeURI(encodeURI($("#searchInput").val()));
				  $.ajaxUninSearch($brandId,$modelId,$downPayment,$monthPayment,$searchKey);
				   
			   });
		   }); 
		$("#searchId").click(function(){
			var $monthPayment = $("#monthPaymentId .active").attr("value");		 
			  
			  var $brandId=$("#brandId .active").attr("value");
			  var $modelId=$("#modelId .active").attr("value");
			  var $downPayment=$("#downPaymentId .active").attr("value");
			  var $searchKey=encodeURI(encodeURI($("#searchInput").val()));
			  $.ajaxUninSearch($brandId,$modelId,$downPayment,$monthPayment,$searchKey);
			alert($("#searchInput").val());
		});
    };
		
		//ajax联合查询车
		$.ajaxUninSearch=function($brandId,$modelId,$downPayment,$monthPayment,$searchKey){
			alert("${pageContext.request.contextPath}/car?method=findByPageAjax&brand_id="+
					$brandId+"&model_id="+$modelId+"&down_payment="+$downPayment+"&month_payment="+$monthPayment+"&search_key="+$searchKey
			);
			$.get("${pageContext.request.contextPath}/car?method=findByPageAjax&brand_id="+
					$brandId+"&model_id="+$modelId+"&down_payment="+$downPayment+"&month_payment="+$monthPayment+"&search_key="+$searchKey,function(data){
				  $.addCars(data);
			  },"json");	
		}

		//添加查询到的车子信息
		$.addCars=function(data){
			$("#carsDiv").empty();
			$(data).each(function(){
			
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
		
		
		//页面首次载入时，加载所有品牌
		$(function() {
			//初始化页面
			$.init();
			//发送ajax请求 展示所有品牌
			$.get("${pageContext.request.contextPath}/brand?method=findAll",function(data) {
				    //遍历每个品牌
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
						  if( ${ brand_id }==$(this).attr("value")) $(this).addClass("active");
						   $(this).click(function(){
							   var $brandId = $(this).attr("value");
							 //更改选中的品牌的背景色
							  $(this).addClass("active").siblings().removeClass("active");
							   //window.location = "${pageContext.request.contextPath}/car?method=findByPage&brand_id="+$brandId;
							 var $modelId=$("#modelId .active").attr("value");
							  var $downPayment=$("#downPaymentId .active").attr("value");
							  var $monthPayment=$("#monthPaymentId .active").attr("value");
							  var $searchKey=encodeURI(encodeURI($("#searchInput").val()));
							  $.ajaxUninSearch($brandId,$modelId,$downPayment,$monthPayment,$searchKey);						   
							   
						   });
					   }); 	   
					   
					
			      },"json");
			
			//ajax请求所有车型

			$.get("${pageContext.request.contextPath}/model?method=findAll",function(data) {
				    //遍历每个车型
					$(data).each(function(i) {						
							//获取brandId的ul标签
							var $ul = $("#modelId");
							$ul.append($("<li class='modelLi' value='"+this.model_id+"'>"+this.model_name+"</li>"));						
					
					});			  
						//给每个车型添加点击事件
					  $('.modelLi').each(function(){						  
						   $(this).click(function(){
							   var $modelId = $(this).attr("value");
							 //更改选中的品牌的背景色
							  $(this).addClass("active").siblings().removeClass("active");
							   //window.location = "${pageContext.request.contextPath}/car?method=findByPage&brand_id="+$brandId;
							  
							  var $brandId=$("#brandId .active").attr("value");
							  var $downPayment=$("#downPaymentId .active").attr("value");
							  var $monthPayment=$("#monthPaymentId .active").attr("value");
							  var $searchKey=encodeURI(encodeURI($("#searchInput").val()));
							  $.ajaxUninSearch($brandId,$modelId,$downPayment,$monthPayment,$searchKey);
							   
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