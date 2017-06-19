<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>车辆详情</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css" />
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
		<!-- 引入自定义css文件 style.css -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" />

		<style>
			body {
				margin-top: 20px;
				margin: 0 auto;
			}
			
			.carousel-inner .item img {
				width: 100%;
				height: 300px;
			}
		</style>
	</head>

	<body>

		
			<jsp:include page="/jsp/head.jsp"></jsp:include>


		<div class="container">
			<div class="row">
				<!-- <div style="border: 1px solid #e4e4e4;width:930px;margin-bottom:10px;margin:0 auto;padding:10px;margin-bottom:10px;">
					<a href="./index.htm">首页&nbsp;&nbsp;&gt;</a>
					<a href="./蔬菜分类.htm">蔬菜&nbsp;&nbsp;&gt;</a>
					<a>无公害蔬菜</a>
				</div> -->

				<div style="margin:0 auto;width:950px;">
					<div class="col-md-6">
						<img style="opacity: 1;width:400px;height:350px;" title="" class="medium" src="${pageContext.request.contextPath}/${bean.car_image}">
					</div>

					<div class="col-md-6">
						<div><strong>${bean.car_name}</strong></div>
						<div style="border-bottom: 1px dotted #dddddd;width:350px;margin:10px 0 10px 0;">
							<div> 厂商指导价： ${bean.guide_price}</div>
							<div>车图仅供参考，以车辆配置描述为准</div>
						</div>

						<div style="margin:10px 0 10px 0;">保证金: <strong style="color:#ef0101;">￥：${bean.deposit}</strong> 首付： <del>${bean.down_payment}</del> 月供： <del>${bean.month_payment}</del>
						</div>
<hr/>
                       <div style="margin:10px 0 10px 0;"><p style="background-color: #f07373;">${ bean.pay_description }</p> </div>

						<!-- 预约开始 -->

<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
预约到店
</button>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
×
</button>
<h4 class="modal-title" id="myModalLabel">
预约到店
</h4>
</div>
<div class="modal-body">

		<form class="form-horizontal" style="margin-top:5px;" action="${pageContext.request.contextPath}/user?method=regist" method="post">
			 <div class="form-group">
			    <label for="username" class="col-sm-2 control-label">用户名</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="username" placeholder="请输入用户名" name="username">
			    </div>
			  </div>
			   <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
			    <div class="col-sm-6">
			      <input type="password" class="form-control" id="inputPassword3" placeholder="请输入密码" name="password">
			    </div>
			  </div>
			   <div class="form-group">
			    <label for="confirmpwd" class="col-sm-2 control-label">确认密码</label>
			    <div class="col-sm-6">
			      <input type="password" class="form-control" id="confirmpwd" placeholder="请输入确认密码">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
			    <div class="col-sm-6">
			      <input type="email" class="form-control" id="inputEmail3" placeholder="Email" name="email">
			    </div>
			  </div>
			 <div class="form-group">
			    <label for="usercaption" class="col-sm-2 control-label">姓名</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="usercaption" placeholder="请输入姓名"  name="name">
			    </div>
			  </div>
			  <div class="form-group opt">  
			  <label for="inlineRadio1" class="col-sm-2 control-label">性别</label>  
			  <div class="col-sm-6">
			    <label class="radio-inline">
			  <input type="radio" name="sex" id="inlineRadio1" value="男"> 男
			</label>
			<label class="radio-inline">
			  <input type="radio" name="sex" id="inlineRadio2" value="女"> 女
			</label>
			</div>
			  </div>		
			  <div class="form-group">
			    <label for="date" class="col-sm-2 control-label">出生日期</label>
			    <div class="col-sm-6">
			      <input type="date" class="form-control"  name="birthday">		      
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <label for="date" class="col-sm-2 control-label">验证码</label>
			    <div class="col-sm-3">
			      <input type="text" class="form-control"  >
			      
			    </div>
			    <div class="col-sm-2">
			    <img src="${pageContext.request.contextPath}/image/captcha.jhtml"/>
			    </div>
			    
			  </div>
			 
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <%-- <input type="submit"  width="100" value="注册" name="submit" border="0"
				    style="background: url('${pageContext.request.contextPath}/images/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0);
				    height:35px;width:100px;color:white;"> --%>
			    </div>
			    <div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal">关闭
</button>
<button type="submit" class="btn btn-primary" name="submit">
提交
</button>
</div>
			  </div>
			</form>
</div>

</div>
</div>
</div>
<!-- 预约结束 -->
						<!-- <div style="padding:10px;border:1px solid #e7dbb1;width:330px;margin:15px 0 10px 0;;background-color: #fffee6;">
							

							
								
									<div  style="background-color: red;height:36px;width:127px;text-align: center;font-size:180%;color:white">
							
						</div>
								
						</div>  -->
						<%-- <div style="margin:10px 0 10px 0;">促销: <a target="_blank" title="限时抢购 (2014-07-30 ~ 2015-01-01)" style="background-color: #f07373;">限时抢购</a> </div>

						<div style="padding:10px;border:1px solid #e7dbb1;width:330px;margin:15px 0 10px 0;;background-color: #fffee6;">
							<div style="margin:5px 0 10px 0;">白色</div>

							<div style="border-bottom: 1px solid #faeac7;margin-top:20px;padding-left: 10px;">购买数量:
								<input id="quantity" name="quantity" value="1" maxlength="4" size="10" type="text"> </div>

							<div style="margin:20px 0 10px 0;;text-align: center;">
								<a href="cart.htm">
									<input style="background: url('${pageContext.request.contextPath}/images/product.gif') no-repeat scroll 0 -600px rgba(0, 0, 0, 0);height:36px;width:127px;" value="加入购物车" type="button">
								</a> &nbsp;收藏商品</div>
						</div> --%>
					</div>
				</div>
				<div class="clear"></div>
				<div style="width:950px;margin:0 auto;">
					<div style="background-color:#d3d3d3;width:930px;padding:10px 10px;margin:10px 0 10px 0;">
						<strong>车辆介绍</strong>
					</div>

					<div>
						<img src="${pageContext.request.contextPath}/${bean.car_image}">
					</div>

					<div style="background-color:#d3d3d3;width:930px;padding:10px 10px;margin:10px 0 10px 0;">
						<strong>车辆参数</strong>
					</div>
					<div style="margin-top:10px;width:900px;">
						<table class="table table-bordered">
							<tbody>
								<tr class="active">
									<th colspan="4">基本参数</th>
								</tr>
								<tr>
									<th width="15%">车身结构</th>
									<td width="35%">${bean.body_structure}</td>
									<th width="15%">长/宽/高</th>
									<td width="35%">${bean.length}/${bean.width}/${bean.height}</td>
								</tr>
								<tr>
									<th width="15%">发动机</th>
									<td width="35%">${bean.engine}</td>
									<th width="15%">变速箱</th>
									<td width="35%">${bean.gearbox}</td>
								</tr>
							</tbody>
						</table>
					</div>

					<!-- <div style="background-color:#d3d3d3;width:900px;">
						<table class="table table-bordered">
							<tbody>
								<tr class="active">
									<th><strong>商品评论</strong></th>
								</tr>
								<tr class="warning">
									<th>暂无商品评论信息 <a>[发表商品评论]</a></th>
								</tr>
							</tbody>
						</table>
					</div>

					<div style="background-color:#d3d3d3;width:900px;">
						<table class="table table-bordered">
							<tbody>
								<tr class="active">
									<th><strong>商品咨询</strong></th>
								</tr>
								<tr class="warning">
									<th>暂无商品咨询信息 <a>[发表商品咨询]</a></th>
								</tr>
							</tbody>
						</table>
					</div> -->
				</div>

			</div>
		</div>

		<!--
            	作者：ci2713@163.com
            	时间：2015-12-30
            	描述：页脚部分
            -->
			<jsp:include page="/jsp/foot.jsp"></jsp:include>
			

	</body>

</html>
<script>

//初始化
$(function() {
	$("#appointment").click(function(){
		alert("yuyue");
	});
});
</script>