<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<!--
            	时间：2015-12-30
            	描述：页脚
            -->
			<div class="container-fluid">
				<div style="margin-top:50px;">
				<%-- 
					<img src="${pageContext.request.contextPath}/img/footer.jpg" width="100%" height="78" alt="我们的优势" title="我们的优势" />
				 --%>
				 </div>
				 <!--热门品牌  -->
				 <div style="text-align: left;margin-top: 5px;">
				 	
					<ul id="hotBrandId" class="list-inline" title="热门品牌" >						
					<li>热门品牌</li>
					</ul>
				</div>
				 <!--热门车系 -->
				<div style="text-align: left;margin-top: 5px;">
				 	
					<ul id="hotSeriesId" class="list-inline" title="热门车系" >						
					<li>热门车系</li>
					</ul>
				</div>
		
				<div style="text-align: center;margin-top: 5px;">
					<ul class="list-inline">
						<li><a href="info.html">关于我们</a></li>
						<li><a>我要买车</a></li>
						<li><a>来取车介绍</a></li>
						<li><a>常见问题</a></li>
						<li><a>下载应用</a></li>
					</ul>
				</div>
				<div style="text-align: center;margin-top: 5px;margin-bottom:20px;">
					Copyright &copy; 2017-2018 越牛科技 版权所有
				</div>
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