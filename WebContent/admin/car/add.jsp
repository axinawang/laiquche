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
		<form id="userAction_save_do" name="Form1" action="${pageContext.request.contextPath}/addCar" method="post" enctype="multipart/form-data">
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>添加车</STRONG>
						</strong>
					</td>
				</tr>

				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						名称：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="car_name" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						是否热门：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="is_hot" value='1'>是
						<input type='radio' name="is_hot" value='0' checked="checked">否
							<!-- <option value="1">是</option>
							<option value="0">否</option>
						</select> -->
					</td>
				</tr>
				<tr>
				    <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						是否下架：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="car_flag" value='1'>是
						<input type='radio' name="car_flag" value='0' checked="checked">否
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						指导价：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="guide_price" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						保证金：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="deposit" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						首付：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="down_payment" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						月供：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="month_payment" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						支付说明：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="pay_description" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						主图片：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="file" name="car_image" />
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						热门图片：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="file" name="hot_image" />
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						所属品牌：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<select name="brand_id">
							<c:forEach items="${brandList }" var="bean">
								<option value="${bean.brand_id }">${bean.brand_name }</option>
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
							<c:forEach items="${modelList }" var="bean">
								<option value="${bean.model_id }">${bean.model_name }</option>
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
							<c:forEach items="${seriesList }" var="bean">
								<option value="${bean.series_id }">${bean.series_name }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						整体图片：<input type="file" name="whole_image" />
					</td>
					<td class="ta_01" bgColor="#ffffff">
						整体标题：<input type="text" name="whole_title" value="" id="userAction_save_do_logonName" class="bg"/>
					
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						整体描述：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<textarea name="whole_description" rows="5" cols="30"></textarea>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						局部图片1：<input type="file" name="part_image1" />
					</td>
					<td class="ta_01" bgColor="#ffffff">
						标题1：<input type="text" name="part_title1" value="" id="userAction_save_do_logonName" class="bg"/>
					
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						局部描述1：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<textarea name="part_description1" rows="5" cols="30"></textarea>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						局部图片2：<input type="file" name="part_image2" />
					</td>
					<td class="ta_01" bgColor="#ffffff">
						标题2：<input type="text" name="part_title2" value="" id="userAction_save_do_logonName" class="bg"/>
					
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						局部描述2：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<textarea name="part_description2" rows="5" cols="30"></textarea>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						局部图片3：<input type="file" name="part_image3" />
					</td>
					<td class="ta_01" bgColor="#ffffff">
						标题3：<input type="text" name="part_title3" value="" id="userAction_save_do_logonName" class="bg"/>
					
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						局部描述3：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<textarea name="part_description3" rows="5" cols="30"></textarea>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						局部图片4：<input type="file" name="part_image4" />
					</td>
					<td class="ta_01" bgColor="#ffffff">
						标题4：<input type="text" name="part_title4" value="" id="userAction_save_do_logonName" class="bg"/>
					
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						局部描述4：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<textarea name="part_description4" rows="5" cols="30"></textarea>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						车身结构：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="cheshenjiegou" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						长：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="length" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						宽：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="width" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						高：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="height" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						发动机：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="fadongji" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						变速箱：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="biansuxiang" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						驱动方式：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="qudongfangshi" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						燃料形式：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="ranliaoxingshi" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						综合油耗：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="zongheyouhao" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						车身颜色：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="cheliangpeise" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						轴距：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="zhouju" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						前轮距：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="qianlunju" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后轮距(mm)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="houlunju" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						最小离地间隙(mm)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="zuixiaolidijianxi" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						整车质量(kg)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="zhengchezhiliang" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						车门数(个)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="chemenshu" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						座位数(个)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="zuoweishu" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						油箱容积(L)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="youxiangrongji" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						行李厢容积(L)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="xinglixiangrongji" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						发动机型号：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="fadongjixinghao" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						排量(mL)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="pailiang" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						进气形式：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="jinqixingshi" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						气缸排列形式：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="qigangpailiexingshi" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						气缸数(个)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="qigangshu" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						每缸气门数(个)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="meigangqimenshu" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
								<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						缸径(mm)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="gangjing" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						行程(mm)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="xingcheng" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						最大马力(Ps)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="zuidamali" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						最大功率(kW)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="zuidagonglv" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						最大功率转速(rpm)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="zuidagonglvzhuansu" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						最大扭矩(N・m)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="zuidaniuju" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						最大扭矩转速(rpm)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="zuidaniujuzhuansu" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						发动机特有技术：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="fadongjiteyoujishu" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						燃油标号：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="ranyoubiaohao" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						供油方式：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="gongyoufangshi" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						缸盖材料：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="ganggaicailiao" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						缸体材料：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="gangticailiao" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						环保标准：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="huanbaobiaozhun" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						挡位个数：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="dangweigeshu" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						变速箱类型：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="biansuxiangleixing" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						四驱形式：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="siquxingshi" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						中央差速器结构：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="zhongyangchasuqijiegou" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						前悬架类型：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="qianxuanjialeixing" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后悬架类型：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="houxuanjialeixing" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						助力类型：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="zhulileixing" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						车体结构：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="chetijiegou" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						前制动器类型：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="qianzhidongqileixing" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后制动器类型：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="houzhidongqileixing" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
								<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						驻车制动类型：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="zhuchezhidongleixing" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						前轮胎规格：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="qianluntaiguige" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后轮胎规格：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="houluntaiguige" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						备胎规格：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="beitaiguige" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						主驾驶座安全气囊：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="zhujiashizuoanquanqinang" value='2'>标配
						<input type='radio' name="zhujiashizuoanquanqinang" value='1'>选配
						<input type='radio' name="zhujiashizuoanquanqinang" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						副驾驶座安全气囊：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="fujiashizuoanquanqinang" value='2'>标配
						<input type='radio' name="fujiashizuoanquanqinang" value='1'>选配
						<input type='radio' name="fujiashizuoanquanqinang" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						前排侧气囊：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="qianpaiceqinang" value='2'>标配
						<input type='radio' name="qianpaiceqinang" value='1'>选配
						<input type='radio' name="qianpaiceqinang" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后排侧气囊：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="houpaiceqinang" value='2'>标配
						<input type='radio' name="houpaiceqinang" value='1'>选配
						<input type='radio' name="houpaiceqinang" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						前排头部气囊(气帘)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="qianpaitoubuqinang" value='2'>标配
						<input type='radio' name="qianpaitoubuqinang" value='1'>选配
						<input type='radio' name="qianpaitoubuqinang" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后排头部气囊(气帘)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="houpaitoubuqinang" value='2'>标配
						<input type='radio' name="houpaitoubuqinang" value='1'>选配
						<input type='radio' name="houpaitoubuqinang" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						膝部气囊：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="xibuqinang" value='2'>标配
						<input type='radio' name="xibuqinang" value='1'>选配
						<input type='radio' name="xibuqinang" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						胎压监测装置：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="taiyajiancezhuangzhi" value='2'>标配
						<input type='radio' name="taiyajiancezhuangzhi" value='1'>选配
						<input type='radio' name="taiyajiancezhuangzhi" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						零胎压继续行驶：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="lingtaiyajixuxingshi" value='2'>标配
						<input type='radio' name="lingtaiyajixuxingshi" value='1'>选配
						<input type='radio' name="lingtaiyajixuxingshi" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						安全带未系提示：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="anquandaiweijitishi" value='2'>标配
						<input type='radio' name="anquandaiweijitishi" value='1'>选配
						<input type='radio' name="anquandaiweijitishi" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						ISOFIX儿童座椅接口：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="isofixertongzuoyijiekou" value='2'>标配
						<input type='radio' name="isofixertongzuoyijiekou" value='1'>选配
						<input type='radio' name="isofixertongzuoyijiekou" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						发动机电子防盗：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="fadongjidianzifangdao" value='2'>标配
						<input type='radio' name="fadongjidianzifangdao" value='1'>选配
						<input type='radio' name="fadongjidianzifangdao" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						车内中控锁：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="cheneizhongkongsuo" value='2'>标配
						<input type='radio' name="cheneizhongkongsuo" value='1'>选配
						<input type='radio' name="cheneizhongkongsuo" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						遥控钥匙：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="yaokongyaoshi" value='2'>标配
						<input type='radio' name="yaokongyaoshi" value='1'>选配
						<input type='radio' name="yaokongyaoshi" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						无钥匙启动系统：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="wuyaoshiqidongxitong" value='2'>标配
						<input type='radio' name="wuyaoshiqidongxitong" value='1'>选配
						<input type='radio' name="wuyaoshiqidongxitong" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						无钥匙进入系统：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="wuyaoshijinruxitong" value='2'>标配
						<input type='radio' name="wuyaoshijinruxitong" value='1'>选配
						<input type='radio' name="wuyaoshijinruxitong" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						ABS防抱死：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="absfangbaosi" value='2'>标配
						<input type='radio' name="absfangbaosi" value='1'>选配
						<input type='radio' name="absfangbaosi" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						制动力分配(EBD/CBC等)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="zhidonglifenpei" value='2'>标配
						<input type='radio' name="zhidonglifenpei" value='1'>选配
						<input type='radio' name="zhidonglifenpei" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						刹车辅助(EBA/BAS/BA等)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="shachefuzhu" value='2'>标配
						<input type='radio' name="shachefuzhu" value='1'>选配
						<input type='radio' name="shachefuzhu" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						牵引力控制(ASR/TCS/TRC等)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="qianyinlikongzhi" value='2'>标配
						<input type='radio' name="qianyinlikongzhi" value='1'>选配
						<input type='radio' name="qianyinlikongzhi" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						车身稳定控制(ESC/ESP/DSC等)：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="cheshenwendingkongzhi" value='2'>标配
						<input type='radio' name="cheshenwendingkongzhi" value='1'>选配
						<input type='radio' name="cheshenwendingkongzhi" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						上坡辅助：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="shangpofuzhu" value='2'>标配
						<input type='radio' name="shangpofuzhu" value='1'>选配
						<input type='radio' name="shangpofuzhu" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						自动驻车：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="zidongzhuche" value='2'>标配
						<input type='radio' name="zidongzhuche" value='1'>选配
						<input type='radio' name="zidongzhuche" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						陡坡缓降：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="doupohuanjiang" value='2'>标配
						<input type='radio' name="doupohuanjiang" value='1'>选配
						<input type='radio' name="doupohuanjiang" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						可变悬架：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="kebianxuanjia" value='2'>标配
						<input type='radio' name="kebianxuanjia" value='1'>选配
						<input type='radio' name="kebianxuanjia" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						空气悬架：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="kongqixuanjia" value='2'>标配
						<input type='radio' name="kongqixuanjia" value='1'>选配
						<input type='radio' name="kongqixuanjia" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						电动天窗：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="diandongtianchuang" value='2'>标配
						<input type='radio' name="diandongtianchuang" value='1'>选配
						<input type='radio' name="diandongtianchuang" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						全景天窗：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="quanjingtianchuang" value='2'>标配
						<input type='radio' name="quanjingtianchuang" value='1'>选配
						<input type='radio' name="quanjingtianchuang" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						运动外观套件：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="yundongwaiguantaojian" value='2'>标配
						<input type='radio' name="yundongwaiguantaojian" value='1'>选配
						<input type='radio' name="yundongwaiguantaojian" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						铝合金轮圈：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="lvhejinlunquan" value='2'>标配
						<input type='radio' name="lvhejinlunquan" value='1'>选配
						<input type='radio' name="lvhejinlunquan" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						电动吸合门：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="diandongxihemen" value='2'>标配
						<input type='radio' name="diandongxihemen" value='1'>选配
						<input type='radio' name="diandongxihemen" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						侧滑门：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="cehuamen" value='2'>标配
						<input type='radio' name="cehuamen" value='1'>选配
						<input type='radio' name="cehuamen" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						电动后备厢：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="diandonghoubeixiang" value='2'>标配
						<input type='radio' name="diandonghoubeixiang" value='1'>选配
						<input type='radio' name="diandonghoubeixiang" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						感应后备厢：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="ganyinghoubeixiang" value='2'>标配
						<input type='radio' name="ganyinghoubeixiang" value='1'>选配
						<input type='radio' name="ganyinghoubeixiang" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						车顶行李架：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="chedingxinglijia" value='2'>标配
						<input type='radio' name="chedingxinglijia" value='1'>选配
						<input type='radio' name="chedingxinglijia" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						真皮方向盘：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="zhenpifangxiangpan" value='2'>标配
						<input type='radio' name="zhenpifangxiangpan" value='1'>选配
						<input type='radio' name="zhenpifangxiangpan" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						方向盘调节：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type="text" name="fangxiangpantiaojie" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						方向盘电动调节：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="fangxiangpandiandongtiaojie" value='2'>标配
						<input type='radio' name="fangxiangpandiandongtiaojie" value='1'>选配
						<input type='radio' name="fangxiangpandiandongtiaojie" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						多功能方向盘：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="duogongnengfangxiangpan" value='2'>标配
						<input type='radio' name="duogongnengfangxiangpan" value='1'>选配
						<input type='radio' name="duogongnengfangxiangpan" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						方向盘换挡：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="fangxiangpanhuandang" value='2'>标配
						<input type='radio' name="fangxiangpanhuandang" value='1'>选配
						<input type='radio' name="fangxiangpanhuandang" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						方向盘加热：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="fangxiangpanjiare" value='2'>标配
						<input type='radio' name="fangxiangpanjiare" value='1'>选配
						<input type='radio' name="fangxiangpanjiare" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						定速巡航：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="dingsuxunhang" value='2'>标配
						<input type='radio' name="dingsuxunhang" value='1'>选配
						<input type='radio' name="dingsuxunhang" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						前驻车雷达：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="qianzhucheleida" value='2'>标配
						<input type='radio' name="qianzhucheleida" value='1'>选配
						<input type='radio' name="qianzhucheleida" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后驻车雷达：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="houzhucheleida" value='2'>标配
						<input type='radio' name="houzhucheleida" value='1'>选配
						<input type='radio' name="houzhucheleida" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						倒车视频影像：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="daocheshipinyingxiang" value='2'>标配
						<input type='radio' name="daocheshipinyingxiang" value='1'>选配
						<input type='radio' name="daocheshipinyingxiang" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						行车电脑显示屏：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="xingchediannaoxianshiping" value='2'>标配
						<input type='radio' name="xingchediannaoxianshiping" value='1'>选配
						<input type='radio' name="xingchediannaoxianshiping" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						全液晶仪表盘：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="quanyejingyibiaopan" value='2'>标配
						<input type='radio' name="quanyejingyibiaopan" value='1'>选配
						<input type='radio' name="quanyejingyibiaopan" value='0' checked="checked">无
					</td>
					
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						座椅材质：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type="text" name="zuoyicaizhi" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						座椅高低调节：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="zuoyigaoditiaojie" value='2'>标配
						<input type='radio' name="zuoyigaoditiaojie" value='1'>选配
						<input type='radio' name="zuoyigaoditiaojie" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						腰部支撑调节：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="yaobuzhichengtiaojie" value='2'>标配
						<input type='radio' name="yaobuzhichengtiaojie" value='1'>选配
						<input type='radio' name="yaobuzhichengtiaojie" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						肩部支撑调节：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="jianbuzhichengtiaojie" value='2'>标配
						<input type='radio' name="jianbuzhichengtiaojie" value='1'>选配
						<input type='radio' name="jianbuzhichengtiaojie" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						主驾驶座电动调节：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="zhujiashizuodiandongtiaojie" value='2'>标配
						<input type='radio' name="zhujiashizuodiandongtiaojie" value='1'>选配
						<input type='radio' name="zhujiashizuodiandongtiaojie" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						副驾驶座电动调节：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="fujiashizuodiandongtiaojie" value='2'>标配
						<input type='radio' name="fujiashizuodiandongtiaojie" value='1'>选配
						<input type='radio' name="fujiashizuodiandongtiaojie" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后排座椅电动调节：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="houpaizuoyidiandongtiaojie" value='2'>标配
						<input type='radio' name="houpaizuoyidiandongtiaojie" value='1'>选配
						<input type='radio' name="houpaizuoyidiandongtiaojie" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						前排座椅加热：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="qianpaizuoyijiare" value='2'>标配
						<input type='radio' name="qianpaizuoyijiare" value='1'>选配
						<input type='radio' name="qianpaizuoyijiare" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后排座椅加热：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="houpaizuoyijiare" value='2'>标配
						<input type='radio' name="houpaizuoyijiare" value='1'>选配
						<input type='radio' name="houpaizuoyijiare" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						前排座椅通风：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="qianpaizuoyitongfeng" value='2'>标配
						<input type='radio' name="qianpaizuoyitongfeng" value='1'>选配
						<input type='radio' name="qianpaizuoyitongfeng" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后排座椅通风：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="houpaizuoyitongfeng" value='2'>标配
						<input type='radio' name="houpaizuoyitongfeng" value='1'>选配
						<input type='radio' name="houpaizuoyitongfeng" value='0' checked="checked">无
					</td>
					
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						GPS导航系统：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="gpsdaohangxitong" value='2'>标配
						<input type='radio' name="gpsdaohangxitong" value='1'>选配
						<input type='radio' name="gpsdaohangxitong" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						中控台彩色大屏：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="zhongkongtaicaisedaping" value='2'>标配
						<input type='radio' name="zhongkongtaicaisedaping" value='1'>选配
						<input type='radio' name="zhongkongtaicaisedaping" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						蓝牙/车载电话：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="lanyachezaidianhua" value='2'>标配
						<input type='radio' name="lanyachezaidianhua" value='1'>选配
						<input type='radio' name="lanyachezaidianhua" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						外接音源接口：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="waijieyinyuanjiekou" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						多媒体系统：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="duomeitixitong" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						扬声器数量：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="yangshengqishuliang" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						近光灯：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="jinguangdeng" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						远光灯：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="yuanguangdeng" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						日间行车灯：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="rijianxingchedeng" value='2'>标配
						<input type='radio' name="rijianxingchedeng" value='1'>选配
						<input type='radio' name="rijianxingchedeng" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						自适应远近光：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="zishiyingyuanjindeng" value='2'>标配
						<input type='radio' name="zishiyingyuanjindeng" value='1'>选配
						<input type='radio' name="zishiyingyuanjindeng" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						自动头灯：
					</td>
					<td class="ta_01" bgColor="#ffffff">
					    <input type='radio' name="zidongtoudeng" value='2'>标配
						<input type='radio' name="zidongtoudeng" value='1'>选配
						<input type='radio' name="zidongtoudeng" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						转向辅助灯：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="zhuanxiangfuzhudeng" value='2'>标配
						<input type='radio' name="zhuanxiangfuzhudeng" value='1'>选配
						<input type='radio' name="zhuanxiangfuzhudeng" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						转向头灯：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="zhuangxiangtoudeng" value='2'>标配
						<input type='radio' name="zhuangxiangtoudeng" value='1'>选配
						<input type='radio' name="zhuangxiangtoudeng" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						前雾灯：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="qianwudeng" value='2'>标配
						<input type='radio' name="qianwudeng" value='1'>选配
						<input type='radio' name="qianwudeng" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						大灯高度可调：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="dadenggaoduketiao" value='2'>标配
						<input type='radio' name="dadenggaoduketiao" value='1'>选配
						<input type='radio' name="dadenggaoduketiao" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						大灯清洗装置：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="dadengqingxizhuangzhi" value='2'>标配
						<input type='radio' name="dadengqingxizhuangzhi" value='1'>选配
						<input type='radio' name="dadengqingxizhuangzhi" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						前电动车窗：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="qiandiandongchechuang" value='2'>标配
						<input type='radio' name="qiandiandongchechuang" value='1'>选配
						<input type='radio' name="qiandiandongchechuang" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后电动车窗：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="houdiandongchengchuang" value='2'>标配
						<input type='radio' name="houdiandongchengchuang" value='1'>选配
						<input type='radio' name="houdiandongchengchuang" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						车窗防夹手功能：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="chechuangfangjiashougongneng" value='2'>标配
						<input type='radio' name="chechuangfangjiashougongneng" value='1'>选配
						<input type='radio' name="chechuangfangjiashougongneng" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后视镜电动调节：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="houshijingdiandongtiaojie" value='2'>标配
						<input type='radio' name="houshijingdiandongtiaojie" value='1'>选配
						<input type='radio' name="houshijingdiandongtiaojie" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后视镜加热：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="houshijingjiare" value='2'>标配
						<input type='radio' name="houshijingjiare" value='1'>选配
						<input type='radio' name="houshijingjiare" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						内后视镜自动防眩目：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="neihoushijingzidongfangxunmu" value='2'>标配
						<input type='radio' name="neihoushijingzidongfangxunmu" value='1'>选配
						<input type='radio' name="neihoushijingzidongfangxunmu" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						外后视镜自动防眩目：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="waihoushijingzidongfangxunmu" value='2'>标配
						<input type='radio' name="waihoushijingzidongfangxunmu" value='1'>选配
						<input type='radio' name="waihoushijingzidongfangxunmu" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后视镜电动折叠：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="houshijingdiandongzhedie" value='2'>标配
						<input type='radio' name="houshijingdiandongzhedie" value='1'>选配
						<input type='radio' name="houshijingdiandongzhedie" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						遮阳板化妆镜：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="zheyangbanhuazhuangjing" value='2'>标配
						<input type='radio' name="zheyangbanhuazhuangjing" value='1'>选配
						<input type='radio' name="zheyangbanhuazhuangjing" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后雨刷：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="houyushua" value='2'>标配
						<input type='radio' name="houyushua" value='1'>选配
						<input type='radio' name="houyushua" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						感应雨刷：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="ganyingyushua" value='2'>标配
						<input type='radio' name="ganyingyushua" value='1'>选配
						<input type='radio' name="ganyingyushua" value='0' checked="checked">无
					</td>
					
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						空调控制方式：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type="text" name="kongtiaokongzhifangshi" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后排独立空调：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="houpaidulikongtiao" value='2'>标配
						<input type='radio' name="houpaidulikongtiao" value='1'>选配
						<input type='radio' name="houpaidulikongtiao" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						后座出风口：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="houzuochufengkou" value='2'>标配
						<input type='radio' name="houzuochufengkou" value='1'>选配
						<input type='radio' name="houzuochufengkou" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						温度分区控制：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="wendufenqukongzhi" value='2'>标配
						<input type='radio' name="wendufenqukongzhi" value='1'>选配
						<input type='radio' name="wendufenqukongzhi" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						车内空气调节/花粉过滤：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="cheneikongqitiaojie" value='2'>标配
						<input type='radio' name="cheneikongqitiaojie" value='1'>选配
						<input type='radio' name="cheneikongqitiaojie" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						车载冰箱：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="chezaibingxiang" value='2'>标配
						<input type='radio' name="chezaibingxiang" value='1'>选配
						<input type='radio' name="chezaibingxiang" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						自动泊车入位：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="zidongpocheruwei" value='2'>标配
						<input type='radio' name="zidongpocheruwei" value='1'>选配
						<input type='radio' name="zidongpocheruwei" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						发动机启停技术：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="fadongjiqitingjishu" value='2'>标配
						<input type='radio' name="fadongjiqitingjishu" value='1'>选配
						<input type='radio' name="fadongjiqitingjishu" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						并线辅助：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="bingxianfuzhu" value='2'>标配
						<input type='radio' name="bingxianfuzhu" value='1'>选配
						<input type='radio' name="bingxianfuzhu" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						车道偏离预警系统：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="chedaopianliyujingxitong" value='2'>标配
						<input type='radio' name="chedaopianliyujingxitong" value='1'>选配
						<input type='radio' name="chedaopianliyujingxitong" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						主动刹车/主动安全系统：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="zhudongshachexitong" value='2'>标配
						<input type='radio' name="zhudongshachexitong" value='1'>选配
						<input type='radio' name="zhudongshachexitong" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						整体主动转向系统：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="zhengtizhudongzhuanxiangxitong" value='2'>标配
						<input type='radio' name="zhengtizhudongzhuanxiangxitong" value='1'>选配
						<input type='radio' name="zhengtizhudongzhuanxiangxitong" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						夜视系统：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="yeshixitong" value='2'>标配
						<input type='radio' name="yeshixitong" value='1'>选配
						<input type='radio' name="yeshixitong" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						中控液晶屏分屏显示：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="zhongkongyejingpingfenpingxianshi" value='2'>标配
						<input type='radio' name="zhongkongyejingpingfenpingxianshi" value='1'>选配
						<input type='radio' name="zhongkongyejingpingfenpingxianshi" value='0' checked="checked">无
					</td>
				</tr>
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						自适应巡航：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="zishiyingxunhang" value='2'>标配
						<input type='radio' name="zishiyingxunhang" value='1'>选配
						<input type='radio' name="zishiyingxunhang" value='0' checked="checked">无
					</td>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						全景摄像头：
					</td>
					<td class="ta_01" bgColor="#ffffff">
						<input type='radio' name="quanjingshexiangtou" value='2'>标配
						<input type='radio' name="quanjingshexiangtou" value='1'>选配
						<input type='radio' name="quanjingshexiangtou" value='0' checked="checked">无
					</td>
				</tr>
				
				
				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						描述：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<textarea name="description" rows="5" cols="30"></textarea>
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