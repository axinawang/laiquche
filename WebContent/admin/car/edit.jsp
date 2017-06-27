<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<LINK href="${pageContext.request.contextPath}/css/Style1.css" type="text/css" rel="stylesheet">
	</HEAD>
	
	<body>
		<!--  -->
		<form id="userAction_save_do" name="Form1" action="${pageContext.request.contextPath}/updateCar" method="post" enctype="multipart/form-data">
			&nbsp;<!-- 隐藏域 存放cid -->
			<input type="hidden" name="car_id" value="${bean.car_id }">
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>编辑车</STRONG>
						</strong>
					</td>
				</tr>

				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						名称：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="car_name" value="${bean.car_name}" id="userAction_save_do_logonName" class="bg2"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						是否热门：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<select name="is_hot">						
							<option value="1" ${bean.is_hot==1?"selected='selected'":''}>是</option>
							<option value="0" ${bean.is_hot==0?"selected='selected'":''}>否</option>
						</select>
					</td>
				</tr>
				<tr>
				    <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						是否下架：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<select name="car_flag">
							<option value="1" ${bean.car_flag==1?"selected='selected'":''}>是</option>
							<option value="0" ${bean.car_flag==0?"selected='selected'":''}>否</option>
						</select>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						指导价：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="guide_price" value="${bean.guide_price }" id="userAction_save_do_logonName" class="bg"/>
					</td>
					
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						保证金：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="deposit" value="${bean.deposit }" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						首付：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="down_payment" value="${bean.down_payment }" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						月供：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="month_payment" value="${bean.month_payment }" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						支付说明：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="pay_description" value="${bean.pay_description }" id="userAction_save_do_logonName" class="bg2"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						主图片：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="file" name="car_image"/>
						<img width="40" height="45" src="${pageContext.request.contextPath}/${bean.car_image }">
						
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						热门图片：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="file" name="hot_image"/>
						<img width="40" height="45" src="${pageContext.request.contextPath}/${bean.hot_image }">
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						车身结构：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="body_structure" value="${bean.body_structure }" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						长：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="length" value="${bean.length }" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						宽：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="width" value="${bean.width }" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						高：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="height" value="${bean.height }" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						发动机：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="engine" value="${bean.engine }" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						变速箱：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="gearbox" value="${bean.gearbox }" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						驱动方式：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="drive_mode" value="${bean.drive_mode }" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						燃料形式：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="fuel_form" value="${bean.fuel_form }" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						综合油耗：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="com_fuel_consumption" value="${bean.com_fuel_consumption }" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						车身颜色：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="body_color" value="${bean.body_color }" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						所属品牌：${bean.brand.brand_id }
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<select name="brand_id">
							<c:forEach items="${brandList }" var="item">
<option value="${item.brand_id }" ${bean.brand.brand_id==item.brand_id?"selected='selected'":'' }>${item.brand_name }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						所属车型：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<select name="model_id">
							<c:forEach items="${modelList }" var="item">
<option value="${item.model_id }" ${bean.model.model_id==item.model_id?"selected='selected'":'' }>${item.model_name }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						所属车系：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<select name="series_id">
							<c:forEach items="${seriesList }" var="item">
<option value="${item.series_id }" ${bean.series.series_id==item.series_id?"selected='selected'":'' }>${item.series_name }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						描述：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<textarea name="description" rows="5" cols="60">${bean.description }</textarea>
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