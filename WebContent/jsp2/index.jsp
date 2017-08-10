<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>来取车</title>
<meta name="description" content="来取车" />
<meta name="keywords" content="来取车" />
<LINK href="${pageContext.request.contextPath}/jsp2/style/css/style.css" rel=stylesheet>
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"
	type="text/javascript"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/pic.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/banner.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/inc.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/arrow.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/zoom.js"></script>
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
</head>
<body>
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
          <input type="text" class="text" placeholder="请输入品牌或车系" value="" name="search_key" id="searchInput" onFocus="this.value=''"/>
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
  
  <div class="banner">
    <div class="bann">
      <div id="focus">
        <ul >
          <li > <a href=""><img src="${pageContext.request.contextPath}/img/guanggaotu1.jpg" alt="幻灯片1" /></a> </li>
<li > <a href=""><img src="${pageContext.request.contextPath}/img/guanggaotu2.jpg" alt="幻灯片2" /></a> </li>

        </ul>
      </div>
      
      <!-- end focus--> 
      
    </div>
    
    <!-- end bann--> 
    
  </div>
  <div class="logo"> <a href="${pageContext.request.contextPath}" title="来取车"><img src="${pageContext.request.contextPath}/jsp2/style/images/logobg.gif" alt="来取车" ></a> </div>
  
  <!-- end logo--> 
  
</div>

<div class="section">
  <div class="inProBd">
    <div class="Ttitle"><a href="${pageContext.request.contextPath}/car2?method=findByPage" title="查看更多">合作品牌 <span>Vehicles Show </span></a></div>
    <!-- end Ttitle-->
    <div class="inProBdBox clear-fix">
      <div class="inProClaList">
        <div class="picLeft"><img src="${pageContext.request.contextPath}/jsp2/style/images/index_19.jpg"></div>
        <div class="picListBd">
          <div class="picListBd2 htmlpic1" >
            <ul >             
				<dl>
				</dl>

            </ul>
            
          </div>
          <div class="picListBd2 htmlpic2" ></div>
        </div>
        <!-- end picListBd-->
        <div class="picRight"><img src="${pageContext.request.contextPath}/jsp2/style/images/index_22.jpg"></div>
      </div>
      <!-- end inProClaList-->
      <div class="proListPic" >
        <div class="proListPicF"> 
        <a href="${pageContext.request.contextPath }/car2?method=getByCarId&car_id=${hotCarList[0].car_id}" title="${hotCarList[0].car_name}">
        <img src="${pageContext.request.contextPath}/${hotCarList[0].hot_image}"  alt="${hotCarList[0].car_name}" width="288" height="216" class="PicAuto"></a>
          <div class="proListPicFT">
            <p class="proListPicFTT"><a href="${pageContext.request.contextPath }/car?method=getByCarId&car_id=${hotCarList[0].car_id}" title="${hotCarList[0].car_name}">${hotCarList[0].car_name}</a></p>
            <p class="proListPicFTTro">　${fn:substring(hotCarList[0].description,0,20) }...</p>
            <p class="proListPicFTM"><a href="${pageContext.request.contextPath }/car?method=getByCarId&car_id=${hotCarList[0].car_id}" title="${hotCarList[0].car_name}"><img src="${pageContext.request.contextPath}/jsp2/style/images/add.jpg"></a></p>
          </div>
        </div>

        <ul>
        
        <c:forEach items="${hotCarList}" var="car" varStatus="status">
          <c:if test="${status.index>0}">
          <li>
            <div class="pic">
                <img src="${pageContext.request.contextPath}/${car.hot_image}" rel="${pageContext.request.contextPath}/${car.hot_image}" alt="${car.car_name}" width="232" height="174" class="PicAuto" style="padding: 0px;">
            </div>
            <div class="intro" style="display: none;">
                <p class="introT"><a href="${pageContext.request.contextPath }/car2?method=getByCarId&car_id=${car.car_id}" title="${car.car_name}">${fn:substring(car.car_name,0,20)}</a></p>
                <p class="introTro">　　${fn:substring(car.description,0,20) }...</p>
                <p class="introI"><img src="${pageContext.request.contextPath}/jsp2/style/images/index_15.png" class="zoom"> <a href="${pageContext.request.contextPath }/car2?method=getByCarId&car_id=${car.car_id}" title="${car.car_name}"><img src="${pageContext.request.contextPath}/jsp2/style/images/index_13.png"></a></p>
            </div>
        </li>
        </c:if>
        </c:forEach>




          
        </ul>
      </div>
      <!-- end proListPic--> 
    </div>
    <!-- end inProBdBox--> 
  </div>
  <!-- end inProBd--> 
</div>
<div class="section">
  <div class="newsListBd">
    <div class="Ttitle"><a href="${pageContext.request.contextPath}/jsp2/sijizhaomu.jsp" title="查看更多">司机招募</a></div>
    <!-- end Ttitle-->
    <div class="newsList clear-fix" id="gx">
     <dl class="newsListDl">
        <a href="${pageContext.request.contextPath}/jsp2/sijizhaomu.jsp" title="司机招募条件">
        <dt class="num"><span>06</span>26</dt>
        <dd> <span class="title">司机招募条件</span> <span class="intro">　要求：3年驾龄以上，无犯罪记录...</span> </dd>
        </a>
      </dl>
<dl class="newsListDl">
        <a href="${pageContext.request.contextPath}/jsp2/sijizhaomu.jsp" title="司机招募方案">
        <dt class="num"><span>06</span>26</dt>
        <dd> <span class="title">司机招募方案</span> <span class="intro">　方案合理，可操作性强...</span> </dd>
        </a>
      </dl>

    </div>
    <!-- end serList--> 
  </div>
  <!-- end newsListBd--> 
</div>
<div class="section">
  <div class="casePic clear-fix">
    <div class="Ttitle"><a href="${pageContext.request.contextPath}/car2?method=findHotCar" title="查看更多">热销车型</a></div>
    <!-- end Ttitle--> 
  </div>
  <!-- end casePic--> 
</div>
<div class="sectionOver casePicBR">
  <div class="nextC"><img src="${pageContext.request.contextPath}/jsp2/style/images/next.png"></div>
  <div class="moreCa"><a href="${pageContext.request.contextPath}/car2?method=findHotCar" title="查看更多"><img src="${pageContext.request.contextPath}/jsp2/style/images/more.png"></a></div>
  <div id="casePicId">
    <div id="casePicIdIn">
      <div id="casePicIdList1">
        <ul class="casePicUl clear-fix">
        <c:forEach items="${hotCarList}" var="car" varStatus="status">
          <li> <a href="${pageContext.request.contextPath }/car2?method=getByCarId&car_id=${car.car_id}" title="${car.car_name}">
            <div class="casePicUlP"><img src="${pageContext.request.contextPath}/${car.hot_image}" alt="${car.car_name}" width="238" height="179" class="PicAuto"></div>
            <div class="casePicUlT">${fn:substring(car.car_name,5,25)}</div>
            <div class="casePicUlTr">${fn:substring(car.description,0,20) }...</div>
            </a> </li>
        </c:forEach>
        </ul>
      </div>
      <!-- end casePicIdList1-->
      <div id="casePicIdList2"></div>
    </div>
    <!-- end casePicIdIn--> 
  </div>
  <!-- end casePicId--> 
</div>
<div class="section">
  <div class="ccbd clear-fix">
    <div class="safeList">
      <ul class="newsRListUl">
        
      </ul>
    </div>
    <!-- end safeList-->
    <div class="company"> <span>浙江越牛网络科技有限公司</span>　　 来取车是一家集互联网+汽车+金融为一体的、致力于打造未来无忧汽车生活的创新型、服务型电子商务企业。竭诚提供可靠、便捷、专业、全面的一站式购车服务的使命，专业为本，善于服务，不断追求客户满意的理念是我公司的...</div>
    <!-- end company -->
    <div class="contactnr">
      <dl>
        <dt>手机：</dt>
        <dd>15757818156</dd>
      </dl>
      <dl>
        <dt>电话：</dt>
        <dd>400-0575-168</dd>
      </dl>
      <dl>
        <dt>邮箱：</dt>
        <dd>yueniukeji@163.com</dd>
      </dl>
      <dl>
        <dt>地址：</dt>
        <dd>绍兴市越城区迪荡 博览.财智大厦25楼</dd>
      </dl>
    </div>
    <!-- end contactnr-->
    <div class="circle">
      <div class="positionC circleT"><a href="${pageContext.request.contextPath}/jsp2/shouhoufuwu.jsp" title="售后服务">售后服务<span>after service</span></a></div>
      <div class="positionA circleT"><a href="${pageContext.request.contextPath}/jsp2/about.jsp" title="关于我们">关于我们<span>about us</span></a></div>
      <div class="positionCon circleT"><a href="${pageContext.request.contextPath}/jsp2/lianxiwomen.jsp" title="联系我们">联系我们<span>contact us</span></a></div>
    </div>
  </div>
  <!-- end ccbd--> 
</div>

<jsp:include page="/jsp2/foot.jsp"></jsp:include>


</body>
</html>
<script>
			$(function(){
				//发送ajax请求
				$.get("${pageContext.request.contextPath}/brand?method=findHotBrand",function(data){
					//获取brand的ul标签
					var $ul=$(".picListBd2 ul dl");
					
					//遍历数组
					$(data).each(function(index,element){
						//$ul.append($("<li><a href='${pageContext.request.contextPath}/car?method=findByBrandInPage&brand_id="+this.brand_id+"&currPage=1'>"+this.brand_name+"</a></li>"));
						
						$ul.append($("<dd><li><a href='${pageContext.request.contextPath}/car2?method=findByPage&brand_id="+this.brand_id+"'>"+this.brand_name+"</a></li></dd>"));
						
					});
					
				},"json");
				//发送ajax请求
				$.get("${pageContext.request.contextPath}/series?method=findHotSeries",function(data){
					//获取series的ul标签
					var $ul=$("#hotSeriesId");
					
					//遍历数组
					$(data).each(function(){
						$ul.append($("<li><a href='${pageContext.request.contextPath}/car2?method=findByPage&series_id="+this.series_id+"'>"+this.series_name+"</a></li>"));
					});
				},"json");
			});
			
</script>