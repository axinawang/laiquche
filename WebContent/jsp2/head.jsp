<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
        <form  name="formsearch" action="/plus/search.php">
          <input type="hidden" name="kwtype" value="0" />
          <input type="text" class="text" value="请输入搜索关键词" name="q" id="q" onFocus="this.value=''" onBlur="if(!value){value=defaultValue}"  />
          <input class="btnSubmit" type="submit" value="" >
        </form>
      </div>
      
      <!-- end search--> 
      
    </div>
    
    <!-- end notice-->
    
    <div class="toptel">
      <ul class="topNav" id="navUl">
        <li><a href="${pageContext.request.contextPath}/jsp2/a/message">留言</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp2/member/index.php">登录</a></li>
      </ul>
      <script language="javascript" type="text/javascript">
		CheckLogin();
	  </script>
      <!-- end topNav--> 
      
      <span>400-0575-168</span>全国服务热线： </div>
    
    <!-- end toptel--> 
    
  </div>
  
  <!-- end ntbd-->
  
  <div  class="navgrp">
    <div class="navbd">
      <ul class="nav" id="nav">
        <li><a href="${pageContext.request.contextPath}" >网站首页</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp2/about.jsp/">关于我们</a>
          <div id="navChild"> 
          
          </div>
        </li><li><a href="${pageContext.request.contextPath}/car2?method=findByPage">合作品牌</a>
          <div id="navChild"> 
          
           <a href="/plus/list.php?tid=3">本田系列</a> 
          
           <a href="/plus/list.php?tid=4">尼桑系列</a> 
          
           <a href="/plus/list.php?tid=6">别克系列</a> 
          
           <a href="/plus/list.php?tid=7">斯柯达系列</a> 
          
           <a href="/plus/list.php?tid=16">比亚迪系列</a> 
          
           <a href="/a/car/c3/">现代系列</a> 
          
          </div>
        </li><li><a href="/a/case/">热销车型</a>
          <div id="navChild"> 
          
          </div>
        </li><li><a href="/a/xuzhi/">售后服务</a>
          <div id="navChild"> 
          
          </div>
        </li><li><a href="/a/news/">司机招募</a>
          <div id="navChild"> 
          
          </div>
        </li><li><a href="/a/rongyu/">个人中心</a>
          <div id="navChild"> 
          
          </div>
        </li><li><a href="/a/contact/">联系我们</a>
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
  <div class="logo"> <a href="/" title="来取车"><img src="${pageContext.request.contextPath}/jsp2/style/images/logobg.gif" alt="来取车" ></a> </div>
  
  <!-- end logo--> 
  
</div>