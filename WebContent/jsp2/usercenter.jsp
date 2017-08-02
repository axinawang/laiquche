<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta name="author" content="order by aitecms.com" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<LINK href="${pageContext.request.contextPath}/jsp2/style/css/style.css" rel=stylesheet>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/jquery.js"></script>

<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/pic.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/inc.js"></script>
<meta http-equiv="mobile-agent" content="format=xhtml;url=/m/list.php?tid=1">
<script type="text/javascript">if(window.location.toString().indexOf('pref=padindex') != -1){}else{if(/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))){if(window.location.href.indexOf("?mobile")<0){try{if(/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)){window.location.href="/m/list.php?tid=1";}else if(/iPad/i.test(navigator.userAgent)){}else{}}catch(e){}}}}</script>

<style>
/*显示块字段标题内容 */

.block_title_leftShow {

background:

url(${pageContext.request.contextPath}/themes/base/images/block_title_left_bg.gif)

repeat-x;

padding-left: 10px;

padding-right: 2px;

height: 25px;

line-height: 25px;

font-size: 24px;

font-weight: bold;

color: #fff;

float: left;

text-align: center;

}

/*显示块字段标题内容 */

.block_title_leftHidden {

background:

url(${pageContext.request.contextPath}/themes/base/images/block_title_left_bgno.gif)

repeat-x;

padding-left: 10px;

padding-right: 2px;

height: 25px;

line-height: 25px;

font-size: 24px;

font-weight: bold;

color: #ccc;

float: left;

text-align: center;

cursor: pointer;

}

/*显示块字段标题右侧背景 */

.block_title_rightShow {

width: 26px;

height: 25px;

float: left;

background-image:

url(${pageContext.request.contextPath}/themes/base/images/block_title_bg.gif)

;

background-repeat: no-repeat;

}

/*显示块字段标题右侧背景 */

.block_title_rightHidden {

width: 26px;

height: 25px;

float: left;

background-image:

url(${pageContext.request.contextPath}/themes/base/images/block_title_bgno.gif)

;

background-repeat: no-repeat;

cursor: pointer;

}
.clear{
clear:both;
}
.usercontent{
margin-top:50px;
}
</style>
</head>
<body>
<jsp:include page="/jsp2/head.jsp"></jsp:include>

<!-- end header-->

<div class="section mainXian">
  <div class="mainConTitle"> 个人中心 </div>
  
  <!-- end mainConTitle--> 
  
</div>
<div class="section">
  <div class="main">
    <div class="mainCon">
      <div class="mainContect">
        <div class="block_title_bg2">

<div class="block_title_leftShow" id="leftTitleText" onclick="switchTab(this);">我的预约</div>



<div class="block_title_leftHidden" id="rightTitleText" onclick="switchTab(this);">我的收藏</div>



</div>
<div class="clear"></div>
<hr/>
<div id="leftContent" class="usercontent">
<style>

.car-list {
	padding: 10px 0;
	overflow: hidden;
}
.car-item {
	width: 300px;
	float: left;
	position: relative;
	margin-bottom: 20px;
	padding-bottom: 20px;
	background-color: #FFF;
	border: 1px solid #E6E6E6;

	font-family: PingFangSC-Regular,Helvetica,"Droid Sans",Arial,sans-serif;


}
.btn, .ft-center, .j-toast {
	text-align: center;
}
.btn, .pointer, [role="button"] {
	cursor: pointer;
}
.fix-img {
	width: 100%;
	background: url() center center no-repeat #FAFAFA;
	background-size: cover;
}
.car-item .car-text {
	margin: 0 16px;
}
.ft-orange {
	color: #FF571A;
}
.ft-gray {
	color: #666;
}
.ft-ellipsis {
	overflow: hidden;
	text-overflow: ellipsis;
	-o-text-overflow: ellipsis;
}
.car-item .car-info .j-searchMap {
	color: #4DA6FF;
	text-decoration: none;
}
</style>
<div class="car-list" id="reserve-contain">
<c:forEach items="${myAppointments}" var="myAppointment">
<div class="car-item ft-center ">
<div class="car-info">
<div class="j-item" data-carstatus="1 " data-brand="brand-122" data-seriesmodel="series-50033" data-carmodel="14620-n" data-type="1" data-carid="rrK0TYVJZm">
<div class="bg-gray fix-img r-height car-image" style="background-image: url(&quot;${pageContext.request.contextPath}/${myAppointment.car.car_image}&quot;); height: 193.5px;"> </div>

<div class="car-text">
<div class="car-title"> 
<a target='_blank' href="${pageContext.request.contextPath}/car2?method=getByCarId&car_id=${myAppointment.car.car_id}" title="${myAppointment.car.car_name }">${fn:substring(myAppointment.car.car_name,0,30) }...</a> </div>
<!--剩下的二手车-->
<div class="car-price ft-orange">
首付 ${myAppointment.car.down_payment}/
月供 ${myAppointment.car.month_payment}元
</div>
<div class="prix-price ft-orange">预约时间 ${myAppointment.arrive_time}</div>
</div>
</div>
<div class="car-text">
<hr>
<div class="ft-gray">门店电话</div>
<div class="ft-gray j-phone" data-phone="057186105588">
${myAppointment.shop.tel}</div>
<hr>
<p class="ft-gray ft-ellipsis"> ${myAppointment.shop.name} </p>
<p class="ft-gray ft-ellipsis"> ${myAppointment.shop.addr} </p>
<p>
<a class="j-searchMap pointer" data-add="${myAppointment.shop.addr}" href="http://api.map.baidu.com/geocoder?address=${myAppointment.shop.addr}&output=html">查看地图</a>
</p></div>
</div>
</div>
</c:forEach>
</div>



</div>
<div id="rightContent" class="usercontent" style="display:none;">

<div class="car-list" id="att-contain">
<c:forEach items="${myCollection}" var="car">
<div class="car-item ft-center j-item ">
<div class="bg-gray fix-img r-height car-image" style="background-image: url(&quot;${pageContext.request.contextPath}/${car.car_image}&quot;);height: 193.5px;" > </div>
<div class="car-text">
<div class="car-title ft-16">
 <a target='_blank' href="${pageContext.request.contextPath}/car2?method=getByCarId&car_id=${car.car_id}" title="${car.car_name }">${fn:substring(car.car_name,0,30) }...</a> </div>
<div class="car-price ft-sm ft-gray3">指导价${car.guide_price}</div>
<div class="car-price ft-orange ft-16">
首付 <span class="ft-weight">${car.down_payment}</span> 元&nbsp;
月供 <span class="ft-weight">${car.month_payment}</span> 元
</div>
<div class="ft-gray ft-sm cancel-attention j-cancel-attention" data-id="${car.car_id}">取消关注</div>
</div>
</div>
</c:forEach>
</div>



</div>
<script type="text/javascript">

function switchTab(obj){

	var tab = $(obj).attr("id");

	if(tab == "leftTitleText"){

	$("#leftContent").show();

	$("#rightContent").hide();

	$("#leftTitleText").attr("class","block_title_leftShow");

	

	$("#rightTitleText").attr("class","block_title_leftHidden");



	}else{

	$("#rightContent").show();

	$("#leftContent").hide();

	$("#leftTitleText").attr("class","block_title_leftHidden");



	$("#rightTitleText").attr("class","block_title_leftShow");


	}

	}
</script>
      </div>
    </div>
    <div class="clear"></div>
  </div> 
</div>

<!-- end sectionbg-->

﻿<jsp:include page="/jsp2/foot.jsp"></jsp:include>

<!-- end footer-->
<script type="text/javascript">
$(".cancel-attention").click(function(){
	alert($(this).attr("data-id"));
	var $car_id=$(this).attr("data-id");
	var _this=this;
	$.get("${pageContext.request.contextPath}/user2?method=cancelCollectCar&car_id="+$car_id,function(data){
		$(data).each(function(){
			if(this.result=="success"){
				alert("取消成功");
				$(_this).parent().parent().hide();
				
			}else{
				alert("取消失败，请再次取消，原因："+this.result);
				$(".attention-cancle").hide();
				$(".attentioned").show();
			}			
		});			
	},"json");	 
		
});
</script>
</body>
</html>