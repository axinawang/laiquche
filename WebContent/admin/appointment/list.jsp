<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="${pageContext.request.contextPath}/css/Style1.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/layer/layer.js"></script>
		<script type="text/javascript">
				function showDetail(appointment_id){
					alert(appointment_id);
					$.post("${pageContext.request.contextPath}/adminAppointment",{"method":"getDetailByAid","appointment_id":appointment_id},function(data){
						
						
						var s="<table style='width:97%;text-size:24;' cellpadding='0' cellspacing='1'>";
						$(data).each(function(){
							//alert(this);
		s+=("<tr><td align='right' valign='top'>姓名：</td><td>"+this.name+"</td></tr>");
		s+="<tr><td align='right' valign='top'>性别：</td><td>"+this.sex+"</td></tr>";
		s+="<tr><td align='right' valign='top'>手机号：</td><td>"+this.telephone+"</td></tr>";
		s+="<tr><td align='right' valign='top'>预约时间：</td><td>"+this.arrive_time+"</td></tr>";
		
		s+="<tr><td align='right' valign='top'>预约的门店名字：</td><td>"+this.shop.name+"</td></tr>";
		s+="<tr><td align='right' valign='top'>预约的门店地址：</td><td>"+this.shop.addr+"</td></tr>";
		s+="<tr><td align='right' valign='top'>预约的门店电话：</td><td>"+this.shop.tel+"</td></tr>"; 
						});
						s+="</table>";
						
						layer.open({
							 type: 1,//0:信息框; 1:页面; 2:iframe层;	3:加载层;	4:tip层
						     title:"预约详情",//标题
						     area: ['800px', '500px'],//大小
						     shadeClose: true, //点击弹层外区域 遮罩关闭
						     content: s//内容
						});
					},"json"); 
				}
		</script>
	</HEAD>
	<body>
		<br>
		<form id="Form1" name="Form1" action="${pageContext.request.contextPath}/user/list.jsp" method="post">
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
				<TBODY>
					<tr>
						<td class="ta_01" align="center" bgColor="#afd1f3">
							<strong>预约列表</strong>
						</TD>
					</tr>
					
					<tr>
						<td class="ta_01" align="center" bgColor="#f5fafe">
							<table cellspacing="0" cellpadding="1" rules="all"
								bordercolor="gray" border="1" id="DataGrid1"
								style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
								<tr
									style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

									<td align="center" width="10%">
										序号
									</td>
									<td align="center" width="10%">
										预约人
									</td>
									<td align="center" width="10%">
										电话
									</td>
									<td align="center" width="10%">
										到达时间
									</td>
									<td align="center" width="10%">
										处理状态
									</td>
									<td align="center" width="50%">
										预约详情
									</td>
								</tr>
									<c:forEach items="${AllAppointments }" var="o" varStatus="vs">
										<tr onmouseover="this.style.backgroundColor = 'white'"
											onmouseout="this.style.backgroundColor = '#F5FAFE';">
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="18%">
												${vs.count }
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												${o.name }
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												${o.telephone }
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												${o.arrive_time }
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												<c:if test="${o.state==1 }">已处理 </c:if>
												<c:if test="${o.state==0 }"><a href='${pageContext.request.contextPath }/adminAppointment?method=updateState&appointment_id=${o.appointment_id}&state=1'>去处理</a></c:if>
												
											
											</td>
											<td align="center" style="HEIGHT: 22px">
												<input type="button" value="预约详情"  onclick="showDetail('${o.appointment_id}')"/>
											</td>
										</tr>
									</c:forEach>
							</table>
						</td>
					</tr>
					
				</TBODY>
			</table>
		</form>
	</body>
</HTML>

