<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
<link href="${pageContext.request.contextPath}/css/left.css" rel="stylesheet" type="text/css"/>
<link rel="StyleSheet" href="${pageContext.request.contextPath}/css/dtree.css" type="text/css" />
</head>
<body>
<table width="100" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="12"></td>
  </tr>
</table>
<table width="100%" border="0">
  <tr>
    <td>
<div class="dtree">

	<a href="javascript: d.openAll();">展开所有</a> | <a href="javascript: d.closeAll();">关闭所有</a>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dtree.js"></script>
	<script type="text/javascript">
	
		d = new dTree('d');
		d.add('01',-1,'系统菜单树');
		
		d.add('0102','01','城市管理','','','mainFrame');
		d.add('010201','0102','展示所有','${pageContext.request.contextPath}/adminCity?method=findAll','','mainFrame');
		d.add('010202','0102','添加城市','${pageContext.request.contextPath}/adminCity?method=addUI','','mainFrame');
		
		d.add('0103','01','车子管理','','','mainFrame');
		d.add('010301','0103','展示所有','${pageContext.request.contextPath}/adminCar?method=findAll','','mainFrame');
		d.add('010302','0103','添加车子','${pageContext.request.contextPath}/adminCar?method=addUI','','mainFrame');
		
		d.add('0104','01','门店管理');
		d.add('010401','0104','展示所有','${pageContext.request.contextPath}/adminShop?method=findAll','','mainFrame');
		d.add('0105','01','预约管理');
		d.add('010501','0105','所有预约','${pageContext.request.contextPath}/adminAppointment?method=findAll','','mainFrame');
		d.add('010502','0105','未处理预约','${pageContext.request.contextPath}/adminAppointment?method=findAllByState&state=0','','mainFrame');
		d.add('010503','0105','已处理预约','${pageContext.request.contextPath}/adminAppointment?method=findAllByState&state=1','','mainFrame');
		document.write(d);
		
	</script>
</div>	</td>
  </tr>
</table>
</body>
</html>
