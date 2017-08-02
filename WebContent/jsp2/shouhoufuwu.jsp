<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta name="author" content="order by aitecms.com" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> 售后服务 </title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<LINK href="${pageContext.request.contextPath}/jsp2/style/css/style.css" rel=stylesheet>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/jquery.js"></script>
<script>
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
<meta http-equiv="mobile-agent" content="format=xhtml;url=/m/list.php?tid=1">
<script type="text/javascript">if(window.location.toString().indexOf('pref=padindex') != -1){}else{if(/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))){if(window.location.href.indexOf("?mobile")<0){try{if(/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)){window.location.href="/m/list.php?tid=1";}else if(/iPad/i.test(navigator.userAgent)){}else{}}catch(e){}}}}</script>
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
</head>
<body>
<jsp:include page="/jsp2/head.jsp"></jsp:include>

<!-- end header-->

<div class="section mainXian">
  <div class="mainConTitle"> 售后服务 </div>
  
  <!-- end mainConTitle--> 
  
</div>
<div class="section">
  <div class="main">
    <div class="mainCon">
      <div class="mainContect">
        <div class="con">
         开发中。。。。。
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div> 
</div>

<!-- end sectionbg-->

﻿<jsp:include page="/jsp2/foot.jsp"></jsp:include>

<!-- end footer-->

</body>
</html>