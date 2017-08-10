<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta name="author" content="order by aitecms.com" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>司机招募</title>
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
  <div class="mainConTitle"> 司机招募 </div>
  
  <!-- end mainConTitle--> 
  
</div>
<div class="section">
  <div class="main">
    <div class="mainCon">
      <div class="mainContect">
        <div class="con">
         要求：3年驾龄以上，无犯罪记录
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