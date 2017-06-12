<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container-fluid">
<ul id="myTab" class="nav nav-tabs">
	<li id="tabsTitle1"class="active"><a href="#tabs1" data-toggle="tab">热门品牌</a></li>
	<li id="tabsTitle2"><a href="#tabs2" data-toggle="tab">热门车系</a></li>
	
</ul>
<div id="myTabContent" class="tab-content">
	<div class="tab-pane fade in active" id="tabs1">
	<ul id="hotBrandId" class="list-inline" title="热门品牌">

		</ul>
	</div>
	<div class="tab-pane fade" id="tabs2">
		<ul id="hotSeriesId" class="list-inline" title="热门车系">

		</ul>
	</div>
	
</div>
<script>
$(function () {
	$("#tabsTitle1").mouseover(function (e) {		
        $(this).addClass("active").siblings().removeClass("active");
        $("#tabs1").addClass("in active");
        $("#tabs2").removeClass("in active");
    });
	$("#tabsTitle2").mouseover(function (e) {		
        $(this).addClass("active").siblings().removeClass("active");
        $("#tabs2").addClass("in active");
        $("#tabs1").removeClass("in active");
    });
});
    
</script>


	<div style="text-align: center; margin-top: 5px;">
		<ul class="list-inline">
			<li><a href="info.html">关于我们</a></li>
			<li><a>我要买车</a></li>
			<li><a>来取车介绍</a></li>
			<li><a>常见问题</a></li>
			<li><a>下载应用</a></li>
		</ul>
	</div>
	<div style="text-align: center; margin-top: 5px; margin-bottom: 20px;">
		Copyright &copy; 2017-2018 越牛科技 版权所有</div>
</div>
<script>
			$(function(){
				//发送ajax请求
				$.get("${pageContext.request.contextPath}/brand?method=findHotBrand",function(data){
					//获取brand的ul标签
					var $ul=$("#hotBrandId");
					
					//遍历数组
					$(data).each(function(){
						//$ul.append($("<li><a href='${pageContext.request.contextPath}/car?method=findByBrandInPage&brand_id="+this.brand_id+"&currPage=1'>"+this.brand_name+"</a></li>"));
						$ul.append($("<li><a href='${pageContext.request.contextPath}/car?method=findByPage&brand_id="+this.brand_id+"'>"+this.brand_name+"</a></li>"));
						
					});
				},"json");
				//发送ajax请求
				$.get("${pageContext.request.contextPath}/series?method=findHotSeries",function(data){
					//获取series的ul标签
					var $ul=$("#hotSeriesId");
					
					//遍历数组
					$(data).each(function(){
						$ul.append($("<li><a href='${pageContext.request.contextPath}/car?method=findByPage&series_id="+this.series_id+"&currPage=1'>"+this.series_name+"</a></li>"));
					});
				},"json");
			});
			
</script>