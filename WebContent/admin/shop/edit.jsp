<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<LINK href="${pageContext.request.contextPath}/css/Style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	
	<body>
		<form id="userAction_save_do" name="Form1" action="${pageContext.request.contextPath}/updateShop" method="post" enctype="multipart/form-data">
			<!-- 隐藏域 存放shop_id -->
			<input type="hidden" name="shop_id" value="${bean.shop_id }">
			&nbsp;
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>编辑门店</STRONG>
						</strong>
					</td>
				</tr>

				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						名称：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="name" value="${bean.name }" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						所属城市：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<select name="city">
							<c:forEach items="${cityList }" var="city">
								<option value="${city.city_id }" ${bean.city.city_id==city.city_id?"selected='selected'":''}>${city.name }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
				    <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						地址：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="addr" value="${bean.addr }" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						电话：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="tel" value="${bean.tel }" id="userAction_save_do_logonName" class="bg"/>
					</td>
					
				</tr>				
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						门面图片：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="file" name="image" value='${bean.image }'/>
						<img width="40" height="45" src="${pageContext.request.contextPath}/${bean.image }">
						
					</td>
					
				</tr>				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						描述：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<textarea name="des" rows="5" cols="30">${bean.des }</textarea>
					</td>
				</tr>
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						门店拥有的车：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<select name="carList" multiple="multiple">
							<c:forEach items="${carList }" var="car">
								
								<option value="${car.car_id }" <c:forEach items='${selectedCarList }' var='selectedCar'>
									<c:if test='${car.car_id==selectedCar.car_id }'>selected='selected'</c:if>
								</c:forEach>>${car.car_name }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
			
				<tr>
					<td class="ta_01" style="WIDTH: 100%" align="center"
						bgColor="#f5fafe" colSpan="4">
						<button type="submit" id="userAction_save_do_submit" value="确定" class="button_ok">
							&#30830;&#23450;
						</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<button type="reset" value="重置" class="button_cancel">&#37325;&#32622;</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回"/>
						<span id="Label1"></span>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>