<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>来取车_注册用户</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
		<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/js/jquery-validation-1.17.0/jquery.validate.js" type="text/javascript"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-8 col-sm-offset-2">
				<div class="page-header">
					<div class="alert alert-info" role="alert">
						<h4>来取车用户注册</h4>
						
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">用户注册</h3>
					</div>
					<div class="panel-body">
						<form id="signupForm" class="form-horizontal" action="${pageContext.request.contextPath}/user2?method=regist" method="post">
							

							<div class="form-group">
								<label class="col-sm-4 control-label" for="username">用户名</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="username" name="username" placeholder="请输入用户名" />
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-4 control-label" for="email">Email</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="email" name="email" placeholder="Email" />
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-4 control-label" for="telephone">手机号码</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" id="telephone" name="telephone" placeholder="手机号码" />
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-4 control-label" for="password">密码</label>
								<div class="col-sm-5">
									<input type="password" class="form-control" id="password" name="password" placeholder="请输入密码" />
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-4 control-label" for="confirm_password">密码确认</label>
								<div class="col-sm-5">
									<input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="请输入重复密码" />
								</div>
							</div>

							<div class="form-group">
			                      <label for="checkcode" class="col-sm-4 control-label">验证码</label>
			                      <div class="col-sm-2">
			                         <input id="checkcode" type="text" class="form-control" name="checkcode" >
			                      </div>
			                      <div class="col-sm-3">
			                           <img src="kaptcha.jpg" id="kaptchaImage" />
			                      </div>
			    
			                </div>
			 
			  <div class="form-group">
			    <div class="col-sm-9 col-sm-offset-4">
			      <input type="submit"  width="100" value="注册" name="submit" border="0"
				    style="background: url('${pageContext.request.contextPath}/images/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0);
				    height:35px;width:100px;color:white;">
			    </div>
			  </div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	jQuery.validator.addMethod("isMobile", function(value, element) {  
	    var length = value.length;  
	    var mobile = /^1(3|4|5|7|8)\d{9}$/;  
	    return this.optional(element) || (length == 11 && mobile.test(value));  
	}, "请正确填写您的手机号码"); 
/* 		$.validator.setDefaults( {
			submitHandler: function () {
				alert( "submitted!" );
			}
		} ); */

		$( document ).ready( function () {
			
			$('#kaptchaImage').click(
	                function() {
	                    $(this).hide().attr('src','kaptcha.jpg?' + Math.floor(Math.random() * 100)).fadeIn();
	                });
		    
			$( "#signupForm11" ).validate( {
				rules: {
					username: {
						required: true,
						minlength: 6,
						maxlength:18
					},
					password: {
						required: true,
						minlength: 6,
						maxlength:18
					},
					confirm_password: {
						required: true,
						minlength: 6,
						maxlength:18,
						equalTo: "#password"
					},
					email: {
						required: true,
						email: true
					},
					telephone: {
						 required : true,  
				         minlength : 11,	  
				         isMobile : true  
					},
					checkcode : {  
			            required : true,  
			            rangelength: [5,5]
			        }  

				},
				messages: {
					username: {
						required: "请输入用户名",
						minlength:  $.validator.format("请输入一个长度最少是 {0} 的用户名"),
						maxlength:  $.validator.format("请输入一个长度最多是 {0} 的用户名")
					},
					password: {
						required: "密码必填",
						minlength:  $.validator.format("请输入一个长度最少是 {0} 的密码"),
						maxlength:  $.validator.format("请输入一个长度最多是 {0} 的密码")
					},
					confirm_password: {
						required: "确认密码必填",
						minlength:  $.validator.format("请输入一个长度最少是 {0} 的确认密码"),
						maxlength:  $.validator.format("请输入一个长度最多是 {0} 的确认密码"),
						equalTo: "请输入与上面相同的密码"
					},
					email: "请输入正确的邮箱账号",
					telephone:{ 
						required : "请输入手机号", 
						minlength : "确认手机不能小于11个字符",  
			            isMobile : "请正确填写您的手机号码"
					},
					checkcode: {  
			            required : "请输入验证码",  
			            rangelength : "字符串长度为5"  
			        }  

				},
				errorElement: "em",
				errorPlacement: function ( error, element ) {
					// Add the `help-block` class to the error element
					error.addClass( "help-block" );

					// Add `has-feedback` class to the parent div.form-group
					// in order to add icons to inputs
					element.parents( ".col-sm-5" ).addClass( "has-feedback" );

					if ( element.prop( "type" ) === "checkbox" ) {
						error.insertAfter( element.parent( "label" ) );
					} else {
						error.insertAfter( element );
					}

					// Add the span element, if doesn't exists, and apply the icon classes to it.
					if ( !element.next( "span" )[ 0 ] ) {
						$( "<span class='glyphicon glyphicon-remove form-control-feedback'></span>" ).insertAfter( element );
					}
				},
				success: function ( label, element ) {
					// Add the span element, if doesn't exists, and apply the icon classes to it.
					if ( !$( element ).next( "span" )[ 0 ] ) {
						$( "<span class='glyphicon glyphicon-ok form-control-feedback'></span>" ).insertAfter( $( element ) );
					}
				},
				highlight: function ( element, errorClass, validClass ) {
					$( element ).parents( ".col-sm-5" ).addClass( "has-error" ).removeClass( "has-success" );
					$( element ).next( "span" ).addClass( "glyphicon-remove" ).removeClass( "glyphicon-ok" );
				},
				unhighlight: function ( element, errorClass, validClass ) {
					$( element ).parents( ".col-sm-5" ).addClass( "has-success" ).removeClass( "has-error" );
					$( element ).next( "span" ).addClass( "glyphicon-ok" ).removeClass( "glyphicon-remove" );
				}
			} );
		} );
	</script>

</body>
</html>
