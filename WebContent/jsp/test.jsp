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
		<style type="text/css">
        body
        {
            font-size: 13px;
        }
        #divTotle
        {
            border: solid 1px #eee;
            width: 301px;
            overflow: hidden;
        }
        #divTitle
        {
            background-color: #eee;
            padding: 8px;
            height: 18px;
            cursor: hand;
        }
        #divTitle h3
        { padding: 0px;
            margin: 0px;
            float: left;
        }
        #divTitle span
        {
            float: right;
            margin-top: 3px;
        }
        #divContet
        {
            padding: 8px;
            height:120px;
             }
        #divContet ul
        {
            list-style-type: none;
            margin: 0px;
            padding: 0px;
        }
        #divContet ul li
        {
            float: left;
            width: 95px;
            height: 23px;
            line-height: 23px;
        }
        #divJianhua
        {
            float: right;
            padding-top: 5px;
            padding-bottom: 5px;
        }
    </style>
	</head>

	<body>

		
			<jsp:include page="/jsp/head.jsp"></jsp:include>

 <div id="divTotle">
        <div id="divTitle">
            <h3>
                图书分类</h3>
            <a href="#">收起</a>
        </div>
        <div id="divContet">
            <ul>
                <li><a href="#">小说</a><i>(1110)</i></li>
                <li><a href="#">文艺</a><i>(230)</i></li>
                <li><a href="#">青春</a><i>(1430)</i></li>
                <li><a href="#">少儿</a><i>(1560)</i></li>
                <li><a href="#">生活</a><i>(870)</i></li>
                <li><a href="#">社科</a><i>(1460)</i></li>
                <li><a href="#">管理</a><i>(1450)</i></li>
                <li><a href="#">计算机</a><i>(1780)</i></li>
                <li><a href="#">教育</a><i>(930)</i></li>
                <li><a href="#">工具书</a><i>(3450)</i></li>
                <li><a href="#">引进版</a><i>(980)</i></li>
                <li><a href="#">其他类</a><i>(3230)</i></li>
            </ul>
            <div id="divJianhua">
                <a href="#">简化</a>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $('#divTitle a').click(function () {
                if ($('#divContet ul').is(':visible')) {
                    $('#divContet ul').hide(2000);
                    $(this).html('展开');
                }
                else {
                    $('#divContet ul').show(2000);
                    $(this).html('收起');
                }
            })
            $('#divJianhua a').click(function () {
                if ($('#divContet ul li:gt(4)').is(':visible')) {
                    $('#divContet ul li:gt(4)').hide();
                    $('#divJianhua a').html('更多');
                }
                else {
                    $('#divContet ul li:gt(4)').show();
                    $('#divJianhua a').html('简化');
                }
            })
        })
    
    </script>
		
		<!--
            	作者：ci2713@163.com
            	时间：2015-12-30
            	描述：页脚部分
            -->
			<jsp:include page="/jsp/foot.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span8">
				<a id="modal-372827" href="#modal-container-372827" role="button"
					class="btn" data-toggle="modal">触发遮罩窗体</a>

				<div id="modal-container-372827" class="modal hide fade"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h3 id="myModalLabel">标题栏</h3>
					</div>
					<div class="modal-body">
						<p>显示信息</p>
					</div>
					<div class="modal-footer">
						<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
						<button class="btn btn-primary">保存设置</button>
					</div>
				</div>
			</div>
			<div class="span4"></div>
		</div>
	</div>



<h2>创建模态框（Modal）</h2>
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
开始演示模态框
</button>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
×
</button>
<h4 class="modal-title" id="myModalLabel">
模态框（Modal）标题
</h4>
</div>
<div class="modal-body">
<font>会员注册</font>USER REGISTER
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
提交更改
</button>
</div>
			  </div>
			</form>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal">关闭
</button>
<button type="button" class="btn btn-primary">
提交更改
</button>
</div>
</div>
</div>
</div>

</body>

</html>