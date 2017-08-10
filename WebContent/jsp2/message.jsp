<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta name="author" content="order by aitecms.com" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>留言_来取车</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<LINK href="${pageContext.request.contextPath}/jsp2/style/css/style.css" rel=stylesheet>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/jquery.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/pic.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/inc.js"></script>
</head>
<body>
<jsp:include page="/jsp2/head.jsp"></jsp:include>

<!-- end header-->

<div class="section mainXian">
  <div class="mainConTitle"> 关于我们 </div>
  
  <!-- end mainConTitle--> 
  
</div>
<div class="section">
  <div class="main">
    <div class="mainCon">
      <div class="mainContect">
        <div class="con">
          <div class="bookx">
            <div class="message">
              <form action="${pageContext.request.contextPath}/liuYan?method=add" method="post">
                <input name="action" value="post" type="hidden">
                <input name="diyid" value="1" type="hidden">
                <input name="do" value="2" type="hidden">
                <ul>
                  <li>
                    <p class="message_title"> <span class="c_red">*</span> 姓名： </p>
                    <p class="message_content">
                      <input name="name" id="name" size="30" maxlength="10" type="text">
                    </p>
                  </li>
                  <li>
                    <p class="message_title"> <span class="c_red">*</span> 手机号码： </p>
                    <p class="message_content">
                      <input name="tel" size="30" id="tel" maxlength="11" type="text">
                    </p>
                  </li>
				  <li>
                    <p class="message_title"> 联系地址： </p>
                    <p class="message_content">
                      <input name="address" id="address" size="30" type="text">
                  </p>
                  </li>
                  <li>
                    <p class="message_title"> 邮箱地址： </p>
                    <p class="message_content">
                      <input name="email" id="email" size="30" type="text">
                  </p>
                  </li>
				  <li>
                    <p class="message_title"> 咨询车型： </p>
                    <p class="message_content">
                      <input name="cartype" id="cartype" size="30" type="text">
                  </p>
                  </li>
                  <li class="contentb">
                    <p class="message_title"> <span class="c_red">*</span> 留言内容： </p>
                    <p class="message_content">
                      <textarea name="content" id="content" cols="45" rows="5"></textarea>
                    </p>
                  </li>
                  
                  
                  <li>
                  	<input class="tijiao" value="提 交" type="submit">
					<input name="reset" value="重 置" class="tijiao" type="reset">
                  </li>
                </ul>
              </form>
            </div>
          </div>
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