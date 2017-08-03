<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head></head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>信息提示</title>
		<LINK href="${pageContext.request.contextPath}/jsp2/style/css/style.css" rel=stylesheet>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/jquery.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/pic.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/inc.js"></script>

<style>
  body{
   margin-top:20px;
   margin:0 auto;
 }
 .carousel-inner .item img{
	 width:100%;
	 height:300px;
 }
 .container .row div{ 
	 /* position:relative;
	 float:left; */
 }
 
font {
    color: #3164af;
    font-size: 24px;
    font-weight: normal;
    padding: 0 10px;
}
 </style>
</head>
<body>


<jsp:include page="/jsp2/head.jsp"></jsp:include>

			





<div class="container" style="width:100%;background:url('${pageContext.request.contextPath}/image/regist_bg.jpg');">
<div class="row"> 

	<div class="col-md-2"></div>
	
	


	<div class="col-md-8" style="background:#fff;padding:40px 80px;margin:30px;border:7px solid #ccc;">
		${msg}
	</div>
	
	<div class="col-md-2"></div>
  
</div>
</div>

	  
	
	<jsp:include page="/jsp2/foot.jsp"></jsp:include>

</body></html>




