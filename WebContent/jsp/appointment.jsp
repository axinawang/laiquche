<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WEB01</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"
	type="text/javascript"></script>
</head>

<body>
	请留下您的联系方式并选择附近门店，我们将在24小时内安排门店销售顾问与您联系
	<form class="form-horizontal" style="margin-top: 5px;"
		action="${pageContext.request.contextPath}/appointment?method=add"
		method="post">
		<div class="form-group">
			<label for="name" class="col-sm-2 control-label">姓名</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="name"
					placeholder="请输入姓名" name="name">
			</div>
		</div>
		<div class="form-group opt">
			<label for="inlineRadio1" class="col-sm-2 control-label">性别</label>
			<div class="col-sm-6">
				<label class="radio-inline"> <input type="radio" name="sex"
					id="inlineRadio1" value="男"> 男
				</label> <label class="radio-inline"> <input type="radio" name="sex"
					id="inlineRadio2" value="女"> 女
				</label>
			</div>
		</div>

		<div class="form-group">
			<label for="telephone" class="col-sm-2 control-label">手机号</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="telephone"
					placeholder="手机号" name="telephone">
			</div>
		</div>
		<div class="form-group">
			<label for="arrive_time" class="col-sm-2 control-label">到达时间</label>
			<div class="col-sm-6">
				<input id="arrive_time" type="date" class="form-control"
					name="arrive_time">
			</div>
		</div>
		<div class="form-group">
			<label for="selected_city" class="col-sm-2 control-label">选择城市</label>
			<div class="col-sm-6">
				<select class="form-control" id="selected_city" name="selected_city">
					<option>请选择城市</option>

				</select>
			</div>
		</div>

		<div class="form-group">
			<label for="shop" class="col-sm-2 control-label">门店</label>
			<div class="col-sm-6">
				<select class="form-control" id="shop" name="shop">
					<option>请选择门店</option>

				</select>

			</div>
		</div>

		<div class="form-group">
			<label for="date" class="col-sm-2 control-label">验证码</label>
			<div class="col-sm-3">
				<input type="text" class="form-control">

			</div>
			<div class="col-sm-2">
				<img src="${pageContext.request.contextPath}/image/captcha.jhtml" />
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
					提交</button>
			</div>
		</div>
	</form>
	<script>
//初始化
$(function() {
	$("#appiont").click(function(){
		//发送ajax请求
		$.get("${pageContext.request.contextPath}/shop?method=findAll",function(data){
			//获取brand的ul标签
			var $selected=$("#shop");
			
			//遍历数组
			$(data).each(function(){
				//$ul.append($("<li><a href='${pageContext.request.contextPath}/car?method=findByBrandInPage&brand_id="+this.brand_id+"&currPage=1'>"+this.brand_name+"</a></li>"));
				$selected.append($("<option value='"+this.shop_id+"'>"+this.name+"</option>"));
				
			});
		},"json");
		//$('#myModal').modal('show');
	});
	
});
</script> 	


</body>

</html>