<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta name="author" content="order by aitecms.com" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>合作品牌</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<LINK href="${pageContext.request.contextPath}/jsp2/style/css/style.css" rel=stylesheet>
<LINK href="${pageContext.request.contextPath}/jsp2/style/css/page.css" rel=stylesheet>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/jquery.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/include/dedeajax2.js"></script>

<script>
	function CheckLogin(){
	  var taget_obj = document.getElementById('navUl');
	  myajax = new DedeAjax(taget_obj,false,false,'','','');
	  myajax.SendGet2("/member/ajax_loginsta.php");
	  DedeXHTTP = null;
	};
	$(function(){
		$('.codepic').hover(function(){
			$('.code').css('display','block')
		})
		$('.codepic').mouseout(function(){
			$('.code').css('display','none')
		})
	})
</script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/pic.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/inc.js"></script>
<meta http-equiv="mobile-agent" content="format=xhtml;url=/m/list.php?tid=2">
<script type="text/javascript">if(window.location.toString().indexOf('pref=padindex') != -1){}else{if(/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))){if(window.location.href.indexOf("?mobile")<0){try{if(/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)){window.location.href="/m/list.php?tid=2";}else if(/iPad/i.test(navigator.userAgent)){}else{}}catch(e){}}}}</script>
<!--[if IE]>
<script type="text/javascript" src="/style/js/pie.js"></script>
<SCRIPT>
    $(function() {
        if (window.PIE) {
            $('#focus .btn span').each(function() {
                PIE.attach(this);
            });
        }
    });
</SCRIPT>
<![endif]-->
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

.lqcleft ul .active {
	background-color: red;
}
.lqcleft li{
text-align:center;
}
.lqcleft li:hover {
	cursor: pointer;
	background-color: #888;
	color: #fff;
	
}
</style>

</head>

<body>
<jsp:include page="/jsp2/head.jsp"></jsp:include>

<!-- end header-->

<div class="section mainXian">
  <div class="mainConTitle"> 合作品牌 </div>
  
  <!-- end mainConTitle--> 
  
</div>
<!--<div class="section">-->
	
<div class="list_left">

        
		<div id="divContet" class="lqcleft">
			<dl class="tbox">
				<dt><strong>品牌</strong></dt>
				<ul id="brandId"><li value="-1" class="brandLi">全部</li>&nbsp;
				
				</ul>
				<div id="divJianhua" style="float:right">
							<a href="#">更多品牌</a>
			   </div>
			</dl>
		</div>
		<div class="lqcleft">
			<dl class="tbox">
				<dt><strong>首付</strong></dt>
				<ul id="downPaymentId" class="list-inline">
							<li value="-1" class="downPaymentLi active">全部</li>
							<li value="0" class="downPaymentLi">1万以内</li>
							<li value="10000" class="downPaymentLi">1-2万</li>
							<li value="20000" class="downPaymentLi">2-3万</li>
							<li value="30000" class="downPaymentLi">3-4万</li>
							<li value="40000" class="downPaymentLi">4-5万</li>
							<li value="50000" class="downPaymentLi">5万以上</li>
						</ul>
			</dl>
		</div>

        	
		<div class="lqcleft">
			<dl class="tbox">
				<dt><strong>月供</strong></dt>
				<ul id="monthPaymentId" class="list-inline">
							<li value="-1" class="monthPaymentLi active">全部</li>
							<li value="0" class="monthPaymentLi">1千以内</li>
							<li value="1000" class="monthPaymentLi">1-2千</li>
							<li value="2000" class="monthPaymentLi">2-3千</li>
							<li value="3000" class="monthPaymentLi">3-4千</li>
							<li value="4000" class="monthPaymentLi">4-5千</li>
							<li value="5000" class="monthPaymentLi">5千以上</li>
						</ul>
		    </dl>
		</div>
		<div class="lqcleft">
			<dl class="tbox">
				<dt><strong>车型</strong></dt>
				<ul id="modelId" class="list-inline">
							<li value="-1" class="modelLi active">全部</li>
						</ul>
		</dl>
		</div>
	</div><!-- /pright -->
<!--</div>-->
  <div class="list_main">
    	
    <div class="mainCon">
      <div id="carsDiv" class="mainConList">
      <c:forEach items="${page_bean.list}" var="p">
        <dl class="pic1">
          <a target='_blank' href="${pageContext.request.contextPath}/car2?method=getByCarId&car_id=${p.car_id}" title="${fn:substring(p.car_name,0,30) }...">
          <dt class="pic"> <img src="${pageContext.request.contextPath}/${p.car_image}" alt="${fn:substring(p.car_name,0,30) }..." width="320" height="240" class="PicAuto">
            <div class="intro">${fn:substring(p.description,0,30) }...</div>
          </dt>
          <dd class="title">${fn:substring(p.car_name,0,30) }...</dd>
          </a>
        </dl>
      </c:forEach>    
        
       <!--  <div class="clear"></div> -->
      </div>
      
      <!-- end mainConList--> 
      
      <!--分页样式-->
      
      <div class="pagess">
        <ul>
         <li><a>首页</a></li>
<li class="thisclass"><a>1</a></li>
<li><a href='/plus/list.php?tid=2&TotalResult=14&PageNo=2'>2</a></li>
<li><a href='/plus/list.php?tid=2&TotalResult=14&PageNo=2'>下一页</a></li>
<li><a href='/plus/list.php?tid=2&TotalResult=14&PageNo=2'>末页</a></li>

        </ul>
        </div>

    </div>
    
    <!-- end main_con-->
    
    <div class="clear"></div>
  </div>
  
  <!-- end main--> 
  
</div>
 <div class="clear"></div>
<!-- end sectionbg-->

﻿<jsp:include page="/jsp2/foot.jsp"></jsp:include>

<!-- end footer-->
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
		
			var content="<dl class='pic1'>"+
			"<a target='_blank' href='${pageContext.request.contextPath}/car2?method=getByCarId&car_id="+this.car_id+"' title='"+this.car_name.substring(0,30)+"...'>"+
				"<dt class='pic'> "+
				   "<img src='${pageContext.request.contextPath}/"+this.car_image+"' alt='"+this.car_name.substring(0,30)+"...' width='320' height='240' class='PicAuto'/>"+
				   "<div class='intro'>"+this.description.substring(0,30)+"...</div>"+
				"</dt><dd class='title'>"+this.car_name.substring(0,30)+"...</dd>"+
			"</a></dl>";
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
				    
					    $('#divContet dl ul li:gt(7)').hide();
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
                if ($('#divContet dl ul li:gt(7)').is(':visible')) {
                    $('#divContet dl ul li:gt(7)').hide();
                    $('#divJianhua a').html('更多品牌');
                }
                else {
                    $('#divContet dl ul li:gt(7)').show();
                    $('#divJianhua a').html('收起品牌');
                }
            });
			
		});
		
			
	</script>
</body>
</html>