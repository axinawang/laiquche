<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="header">
  <div class="ntbd">
    <div class="notice">
      <div class="title">网站公告：</div>
      <div class="noticenr">
        <marquee  onmouseover="this.stop()" onMouseOut="this.start()" scrollamount="2"  >
        来取车
        </marquee>
      </div>
      <div class="search">
        <form  name="formsearch" action="${pageContext.request.contextPath}/car2?method=findByPage" method="post">
          <input type="text" class="text" placeholder="请输入品牌或车系" value="" name="search_key" id="searchInput" onFocus="this.value=''" />
          <input class="btnSubmit" type="submit" value="" >
        </form>
      </div>
      
      <!-- end search--> 
      
    </div>
    
    <!-- end notice-->
    
    <div class="toptel">
      <ul class="topNav" id="navUl">
        <c:if test="${ empty user}">
				<li><a
					href="${pageContext.request.contextPath}/user2?method=registerUI">注册</a></li>
				<li><a
					href="${pageContext.request.contextPath}/user2?method=loginUI">登录/</a></li>
				
			</c:if>
			<c:if test="${not empty user }">
				<li><a
					href="${pageContext.request.contextPath}/user2?method=logout">logout</a></li>
				<li>hello:${user.username}/</li>
				
			</c:if>
        <li><a href="${pageContext.request.contextPath}/jsp2/message.jsp">留言/</a></li>
      </ul>

      <!-- end topNav--> 
      
      <span>400-0575-168</span>全国服务热线： </div>
    
    <!-- end toptel--> 
    
  </div>
  
  <!-- end ntbd-->
  
  <div  class="navgrp">
    <div class="navbd">
      <ul class="nav" id="nav">
        <li><a href="${pageContext.request.contextPath}" >网站首页</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp2/about.jsp">关于我们</a>
          <div id="navChild"> 
          
          </div>
        </li><li><a href="${pageContext.request.contextPath}/car2?method=findByPage">合作品牌</a>
          <!-- <div id="navChild"> 
          
           <a href="/plus/list.php?tid=3">本田系列</a> 
          
           <a href="/plus/list.php?tid=4">尼桑系列</a> 
          
           <a href="/plus/list.php?tid=6">别克系列</a> 
          
           <a href="/plus/list.php?tid=7">斯柯达系列</a> 
          
           <a href="/plus/list.php?tid=16">比亚迪系列</a> 
          
           <a href="/a/car/c3/">现代系列</a> 
          
          </div> -->
        </li><li><a href="${pageContext.request.contextPath}/car2?method=findHotCar">热销车型</a>
          <div id="navChild"> 
          
          </div>
        </li><li><a href="${pageContext.request.contextPath}/jsp2/shouhoufuwu.jsp">售后服务</a>
          <div id="navChild"> 
          
          </div>
        </li><li><a href="${pageContext.request.contextPath}/jsp2/sijizhaomu.jsp">司机招募</a>
          <div id="navChild"> 
          
          </div>
        </li><li><a href="${pageContext.request.contextPath}/user2?method=userUI">个人中心</a>
          <div id="navChild"> 
          
          </div>
        </li><li><a href="${pageContext.request.contextPath}/jsp2/lianxiwomen.jsp">联系我们</a>
          <div id="navChild"> 
          
          </div>
        </li>
      </ul>
    </div>
  </div>
  
  <!-- end navgrp-->
  
  <div class="banners">
    <div class="bann">
      <div>
        <li> <a><img src="${pageContext.request.contextPath}/jsp2/style/images/nei.jpg" /></a> </li>
      </div>
    </div>
  </div>
  <div class="logo"> <a href="${pageContext.request.contextPath}" title="来取车"><img src="${pageContext.request.contextPath}/jsp2/style/images/logobg.gif" alt="来取车" ></a> </div>
  
  <!-- end logo--> 
  
</div>