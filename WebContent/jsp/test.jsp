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

	</body>

</html>