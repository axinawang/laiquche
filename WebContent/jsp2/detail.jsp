<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html>
<head>
<meta name="author" content="order by aitecms.com" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${bean.car_name}</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<LINK href="${pageContext.request.contextPath}/jsp2/style/css/style.css" rel=stylesheet>
<LINK href="${pageContext.request.contextPath}/jsp2/style/css/page.css" rel=stylesheet>

<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/jquery.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/pic.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/banner.js"></script>
<script language="JavaScript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/style/js/inc.js"></script>
<meta http-equiv="mobile-agent" content="format=xhtml;url=/m/view.php?aid=45">
<script type="text/javascript">if(window.location.toString().indexOf('pref=padindex') != -1){}else{if(/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))){if(window.location.href.indexOf("?mobile")<0){try{if(/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)){window.location.href="/m/view.php?aid=45";}else if(/iPad/i.test(navigator.userAgent)){}else{}}catch(e){}}}}</script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/jsp2/include/dedeajax2.js"></script>
<script language="javascript" type="text/javascript">
<!--
	function CheckLogin(){
	  var taget_obj = document.getElementById('navUl');
	  myajax = new DedeAjax(taget_obj,false,false,'','','');
	  myajax.SendGet2("/member/ajax_loginsta.php");
	  DedeXHTTP = null;
	}
	function getmbid(){
	  var taget_obj = document.getElementById('mbid');
	  myajax = new DedeAjax(taget_obj,false,false,'','','');
	  myajax.SendGet2("/member/ajax_loginid.php");
	  DedeXHTTP = null;
	}
	function postBadGood(ftype,fid)
	{
		var taget_obj = document.getElementById(ftype+fid);
		var saveid = GetCookie('badgoodid');
		if(saveid != null)
		{
			 var saveids = saveid.split(',');
			 var hasid = false;
			 saveid = '';
			 j = 1;
			 for(i=saveids.length-1;i>=0;i--)
			 {
			 	  if(saveids[i]==fid && hasid) continue;
			 	  else {
			 	  	if(saveids[i]==fid && !hasid) hasid = true;
			 	  	saveid += (saveid=='' ? saveids[i] : ','+saveids[i]);
			 	  	j++;
			 	  	if(j==10 && hasid) break;
			 	  	if(j==9 && !hasid) break;
			 	  }
			 }
	     if(hasid) { alert('您刚才已表决过了喔！'); return false;}
	     else saveid += ','+fid;
			 SetCookie('badgoodid',saveid,1);
		}
		else
		{
			SetCookie('badgoodid',fid,1);
		}
		//document.write("feedback.php?action="+ftype+"&fid="+fid);
		//return;
	  myajax = new DedeAjax(taget_obj,false,false,'','','');
	  myajax.SendGet2("/plus/feedback.php?aid="+fid+"&action="+ftype+"&fid="+fid);
	  DedeXHTTP = null;
	}
	
	
-->
</script>
<!--[if IE]>
<script type="text/javascript" src="/style/js/pie.js"></script>
<SCRIPT>
    $(function() {
        if (window.PIE) {
            $('#focus .btn span').each(function() {
                PIE.attach(this);
            });
        }
    });
</SCRIPT>
<![endif]-->
<!-- 引入自定义日期选择器 -->
        <script src="${pageContext.request.contextPath}/js/jquery-ui-1.12.1/jquery-ui.min.js"></script>
		<link href="${pageContext.request.contextPath}/js/jquery-ui-1.12.1/jquery-ui.min.css" rel="stylesheet" />
		<script src="${pageContext.request.contextPath}/js/jQuery-Timepicker/jquery-ui-timepicker-addon.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery-Timepicker/i18n/jquery-ui-timepicker-zh-CN.js"></script>
		<link href="${pageContext.request.contextPath}/js/jQuery-Timepicker/jquery-ui-timepicker-addon.min.css" rel="stylesheet" />
		<script type="text/javascript">
			(function($) {
				$(function() {
					$.datepicker.regional['zh-CN'] = {
						changeMonth: true,
						changeYear: true,
						clearText: '清除',
						clearStatus: '清除已选日期',
						closeText: '关闭',
						closeStatus: '不改变当前选择',
						prevText: '<上月',
						prevStatus: '显示上月',
						prevBigText: '<<',
						prevBigStatus: '显示上一年',
						nextText: '下月>',
						nextStatus: '显示下月',
						nextBigText: '>>',
						nextBigStatus: '显示下一年',
						currentText: '今天',
						currentStatus: '显示本月',
						monthNames: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
						monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
						monthStatus: '选择月份',
						yearStatus: '选择年份',
						weekHeader: '周',
						weekStatus: '年内周次',
						dayNames: ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'],
						dayNamesShort: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
						dayNamesMin: ['日', '一', '二', '三', '四', '五', '六'],
						dayStatus: '设置 DD 为一周起始',
						dateStatus: '选择 m月 d日, DD',
						dateFormat: 'yy-mm-dd',
						firstDay: 1,
						initStatus: '请选择日期',
						isRTL: false
					};

				});

				$(function() {

					$.datepicker.setDefaults($.datepicker.regional['zh-CN']);
					$("#arrive_time").prop("readonly", true).datepicker({
						changeMonth: true,
						dateFormat: "yy-mm-dd",
						onClose: function(selectedDate) {

						}

					});				
					
				});			
				
			}(jQuery));
		</script>
<!-- 引入自定义日期选择器 结束-->

</head>

<body>

<jsp:include page="/jsp2/head.jsp"></jsp:include>

<!-- end header-->

<div class="section mainXian">
  <div class="mainConTitle"> ${bean.brand.brand_name} </div>
  
  <!-- end mainConTitle--> 
  
</div>
<div class="section">
  <div class="main_shop">
    <div class="mainCon">
      <div class="mainContect">
        <div class="titleNews">${bean.car_name}</div>
        <div class="dateNews">时间：${bean.car_date}</div>
		<div class="picview" >
				<img src='${pageContext.request.contextPath}/${bean.car_image}'>
		</div>
		<div class="infolist">                
				<small>商品指导价：</small><span>${bean.guide_price}元</span>
				<p>车图仅供参考，以车辆配置描述为准</p>
				<small>保证金：</small><span class="fc-f60">${bean.deposit}元</span>
				<small>首付：</small><span class="fc-f60">${bean.down_payment}元</span>
				<small>月供：</small><span class="fc-f60">${bean.month_payment}元</span>
				<small>品牌：</small><span>${bean.brand.brand_name}</span>
				<small>支付说明：</small><span>${bean.pay_description}</span>
				<div class="operinfo">
				<span id="collectCar"class='cont_title'>
				<img class="attention-cancle" src=" //assets.souche.com/projects/finance/vanille/images/detail/attention-icon.png?BIU=949384e48c26aaa0fbf14c63dd8350fd " alt="" width="24">
				<img class="attentioned" src=" //assets.souche.com/projects/finance/vanille/images/detail/attention-yet-icon.png?BIU=19266e457b59b14db4b7f28f5cc7cf63 " alt="" width="24">
				收藏</span>
				
				<span class='cont_title'><a id="appiont" onclick="showcomp();">在线预约</a></span>
				
				</div>
                <form id="formcar" name="formcar" method="post" action="/plus/posttocar.php">
                <input type="hidden" name="id" value="45" />
                <input type="hidden" name="title" value="${bean.car_name}" />
                <input type="hidden" name="price" value="0" />
                <input type="hidden" name="units" value="" />
               
                </form>
                
         <form action="${pageContext.request.contextPath}/appointment?method=add"  method="post" id="comp_area">
             <input type="hidden" name="user" value='${empty user?null:user.uid}'>
			 <input type="hidden" name="car" value="${bean.car_id}">
<table style="width:97%;" cellpadding="0" cellspacing="1">
<tr>
  <td align="right" valign="top">姓名：</td>
  <td><input type='text' name='name' id='pre_name' style='width:250px'  class='intxt' value='' />
</td>
</tr>
<tr>
  <td align="right" valign="top">性别：</td>
  <td><input type="radio" name="sex" id="inlineRadio1" value="男"> 男
  <input type="radio" name="sex" id="inlineRadio2" value="女"> 女
</td>
</tr>
<tr>
  <td align="right" valign="top">手机号：</td>
  <td><input type='text' name='telephone' id='pre_name' style='width:250px'  class='intxt' value='' />
</td>
</tr>
<tr>
  <td align="right" valign="top">预约时间：</td>
  <td><input type='date' name='arrive_time' id='arrive_time' style='width:250px'  class='intxt' value='' />
</td>
</tr>

<tr>
  <td align="right" valign="top">选择城市：</td>
  <td>
	<select name='selected_city' id='city' style='width:250px'  class='intxt' >
		
	</select>
</td>
</tr>
<tr>
  <td align="right" valign="top">预约门店：</td>
  <td>
	<select name='shop' id='shop' style='width:250px'  class='intxt' >
		
	</select>
</td>
</tr>
</table>
<div align='center' style='height:30px;padding-top:10px;'>
<input type="submit" name="submit" value="提 交" class='coolbg' />
 
<input type="reset" name="reset" value="重 置" class='coolbg' />
 
<input type="button" name="cancel" value="取 消" onclick="hidecomp();" class='coolbg' />
</div>
</form>
<script> getmbid();</script>				
			</div><!-- /info -->
             <!-- 购车流程图 -->
           <div align="center" class="col-md-12 col-sm-12">
		<img alt="" src="${pageContext.request.contextPath}/images/goucheliucheng.png" /></div>
			<p style="clear:both"></p>
			<div class="configure">
				<p>
					<span class="conf_title">车辆配置</span>
					<span class="all_conf"><a onclick="showconf();">全部配置</a></span>
				</p>
				<div class="conf_content">
					<p><style type="text/css">
.col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9 {
    float: left;
}
.col-md-6 {
    width: 50%;
}

.col-md-8 {
    width: 66.66666667%;
    float: left;
}
.ft-gray3 {
    color: #999;
    font-size: 16px;
    padding-left: 15px;
    padding-right: 15px;
}</style>
<div class="row">
	<div class="col-md-6 col-sm-6 col-xs-12">
		<div class="border-bottom">
			<div class="row config">
				<div class="col-md-3 col-sm-4 col-xs-4 ft-gray3">
					车身结构</div>
				<div class="col-md-8 col-sm-8 col-xs-8">
					${bean.cheshenjiegou}</div>
			</div>
		</div>
	</div>
	<div class="col-md-6 col-sm-6 col-xs-12">
		<div class="border-bottom">
			<div class="row config">
				<div class="col-md-3 col-sm-4 col-xs-4 ft-gray3">
					长/宽/高</div>
				<div class="col-md-8 col-sm-8 col-xs-8">
					${bean.length}/${bean.width}/${bean.height}</div>
			</div>
		</div>
	</div>
	<div class="col-md-6 col-sm-6 col-xs-12">
		<div class="border-bottom">
			<div class="row config">
				<div class="col-md-3 col-sm-4 col-xs-4 ft-gray3">
					发动机&nbsp;&nbsp;&nbsp;</div>
				<div class="col-md-8 col-sm-8 col-xs-8">
					${bean.fadongji}</div>
			</div>
		</div>
	</div>
	<div class="col-md-6 col-sm-6 col-xs-12">
		<div class="border-bottom">
			<div class="row config">
				<div class="col-md-3 col-sm-4 col-xs-4 ft-gray3">
					变速箱&nbsp;&nbsp;&nbsp;</div>
				<div class="col-md-8 col-sm-8 col-xs-8">
					${bean.biansuxiang}</div>
			</div>
		</div>
	</div>
	<div class="col-md-6 col-sm-6 col-xs-12">
		<div class="border-bottom">
			<div class="row config">
				<div class="col-md-3 col-sm-4 col-xs-4 ft-gray3">
					驱动方式</div>
				<div class="col-md-8 col-sm-8 col-xs-8">
					${bean.qudongfangshi}</div>
			</div>
		</div>
	</div>
	<div class="col-md-6 col-sm-6 col-xs-12">
		<div class="border-bottom">
			<div class="row config">
				<div class="col-md-3 col-sm-4 col-xs-4 ft-gray3">
					燃料形式</div>
				<div class="col-md-8 col-sm-8 col-xs-8">
					${bean.ranliaoxingshi}</div>
			</div>
		</div>
	</div>
	<div class="col-md-6 col-sm-6 col-xs-12">
		<div class="border-bottom">
			<div class="row config">
				<div class="col-md-3 col-sm-4 col-xs-4 ft-gray3">
					综合油耗</div>
				${bean.zongheyouhao}</div>
		</div>
	</div>
	<div class="col-md-6 col-sm-6 col-xs-12">
		<div class="border-bottom">
			<div class="row config">
				<div class="col-md-3 col-sm-4 col-xs-4 ft-gray3">
					车辆配色</div>
				<div class="col-md-8 col-sm-8 col-xs-8">
					${bean.cheliangpeise}</div>
			</div>
		</div>
	</div>
</div>
</p>
				</div>
				<div class="full_conf" id="full_conf">
					<p><span ><a onclick="hideconf();">关闭</a></span></p>
					<p><style type="text/css">
.dialog-config .car-config-icon {
    display:block;
}

.dialog-config .car-config-title {
    height: 40px;
    line-height: 40px;
    background-color: #F3F3F3;
    padding: 0 10px;
    margin: 10px 0;
display:block;
}
.ft-weight {
    font-weight: 600;
}
.ft-16 {
    font-size: 16px;
}

.ft-sm {
    font-size: 14px;
}


.dialog-config ul li {
    height: 40px;
    line-height: 40px;
    padding: 0 10px;
    position: relative;
list-style-type: none;
}
.dialog-config ul li .row {
    margin-right: 0;
    white-space: nowrap;
}
.row::after, .row::before {
    content: " ";
    display: table;
}

.col-md-4 {
    width: 33.33333333%;
float: left;
}
.col-md-8 {
    width: 66.66666667%;
float: left;
}</style>
<div class="dialog">
	<div class="dialog-title" style="padding: 7px 0 24px;font-size: 20px;font-weight: 600;">
		<p id="dialog-title-config">
			参数配置</p>
	</div>
	<div class="dialog-content">
		<div class="dialog-config" id="dialog-config-container">
			<div class="car-config-icon">
				<p>
					●&nbsp;标配&nbsp;&nbsp;○&nbsp;选配&nbsp;&nbsp;-&nbsp;无</p>
			</div>
			<div class="car-config-title ft-16 ft-weight">
				车身配置</div>
			<ul class="ft-sm">
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							长/宽/高(mm)</div>
						<div class="col-md-8 col-sm-8">
							${bean.length}/${bean.width}/${bean.height}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							轴距(mm)</div>
						<div class="col-md-8 col-sm-8">
							${bean.zhouju}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							前轮距(mm)</div>
						<div class="col-md-8 col-sm-8">
							${bean.qianlunju}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							后轮距(mm)</div>
						<div class="col-md-8 col-sm-8">
							${bean.houlunju}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							最小离地间隙(mm)</div>
						<div class="col-md-8 col-sm-8">
							${bean.zuixiaolidijianxi}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							整车质量(kg)</div>
						<div class="col-md-8 col-sm-8">
							${bean.zhengchezhiliang}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							车身结构</div>
						<div class="col-md-8 col-sm-8">
							${bean.cheshenjiegou}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							车门数(个)</div>
						<div class="col-md-8 col-sm-8">
							${bean.chemenshu}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							座位数(个)</div>
						<div class="col-md-8 col-sm-8">
							${bean.zuoweishu}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							油箱容积(L)</div>
						<div class="col-md-8 col-sm-8">
							${bean.youxiangrongji}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							行李厢容积(L)</div>
						<div class="col-md-8 col-sm-8">
							${bean.xinglixiangrongji}</div>
					</div>
				</li>
			</ul>
			<div class="car-config-title ft-16 ft-weight">
				发动机配置</div>
			<ul class="ft-sm">
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							发动机型号</div>
						<div class="col-md-8 col-sm-8">
							${bean.fadongjixinghao}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							排量(mL)</div>
						<div class="col-md-8 col-sm-8">
							${bean.pailiang}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							进气形式</div>
						<div class="col-md-8 col-sm-8">
							${bean.jinqixingshi}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							气缸排列形式</div>
						<div class="col-md-8 col-sm-8">
							${bean.qigangpailiexingshi}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							气缸数(个)</div>
						<div class="col-md-8 col-sm-8">
							${bean.qigangshu}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							每缸气门数(个)</div>
						<div class="col-md-8 col-sm-8">
							${bean.meigangqimenshu}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							缸径(mm)</div>
						<div class="col-md-8 col-sm-8">
							${bean.gangjing}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							行程(mm)</div>
						<div class="col-md-8 col-sm-8">
							${bean.xingcheng}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							最大马力(Ps)</div>
						<div class="col-md-8 col-sm-8">
							${bean.zuidamali}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							最大功率(kW)</div>
						<div class="col-md-8 col-sm-8">
							${bean.zuidagonglv}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							最大功率转速(rpm)</div>
						<div class="col-md-8 col-sm-8">
							${bean.zuidagonglvzhuansu}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							最大扭矩(N・m)</div>
						<div class="col-md-8 col-sm-8">
							${bean.zuidaniuju}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							最大扭矩转速(rpm)</div>
						<div class="col-md-8 col-sm-8">
							${bean.zuidaniujuzhuansu}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							发动机特有技术</div>
						<div class="col-md-8 col-sm-8">
							${bean.fadongjiteyoujishu}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							燃料形式</div>
						<div class="col-md-8 col-sm-8">
							${bean.ranliaoxingshi}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							燃油标号</div>
						<div class="col-md-8 col-sm-8">
							${bean.ranyoubiaohao}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							供油方式</div>
						<div class="col-md-8 col-sm-8">
							${bean.gongyoufangshi}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							缸盖材料</div>
						<div class="col-md-8 col-sm-8">
							${bean.ganggaicailiao}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							缸体材料</div>
						<div class="col-md-8 col-sm-8">
							${bean.gangticailiao}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							环保标准</div>
						<div class="col-md-8 col-sm-8">
							${bean.huanbaobiaozhun}</div>
					</div>
				</li>
			</ul>
			<div class="car-config-title ft-16 ft-weight">
				变速箱配置</div>
			<ul class="ft-sm">
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							挡位个数</div>
						<div class="col-md-8 col-sm-8">
							${bean.dangweigeshu}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							变速箱类型</div>
						<div class="col-md-8 col-sm-8">
							${bean.biansuxiangleixing}</div>
					</div>
				</li>
			</ul>
			<div class="car-config-title ft-16 ft-weight">
				底盘转向</div>
			<ul class="ft-sm">
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							驱动方式</div>
						<div class="col-md-8 col-sm-8">
							${bean.qudongfangshi}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							四驱形式</div>
						<div class="col-md-8 col-sm-8">
							${bean.siquxingshi}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							中央差速器结构</div>
						<div class="col-md-8 col-sm-8">
							${bean.zhongyangchasuqijiegou}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							前悬架类型</div>
						<div class="col-md-8 col-sm-8">
							${bean.qianxuanjialeixing}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							后悬架类型</div>
						<div class="col-md-8 col-sm-8">
							${bean.houxuanjialeixing}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							助力类型</div>
						<div class="col-md-8 col-sm-8">
							${bean.zhulileixing}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							车体结构</div>
						<div class="col-md-8 col-sm-8">
							${bean.chetijiegou}</div>
					</div>
				</li>
			</ul>
			<div class="car-config-title ft-16 ft-weight">
				车轮制动</div>
			<ul class="ft-sm">
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							前制动器类型</div>
						<div class="col-md-8 col-sm-8">
							${bean.qianzhidongqileixing}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							后制动器类型</div>
						<div class="col-md-8 col-sm-8">
							${bean.houzhidongqileixing}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							驻车制动类型</div>
						<div class="col-md-8 col-sm-8">
							${bean.zhuchezhidongleixing}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							前轮胎规格</div>
						<div class="col-md-8 col-sm-8">
							${bean.qianluntaiguige}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							后轮胎规格</div>
						<div class="col-md-8 col-sm-8">
							${bean.houluntaiguige}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							备胎规格</div>
						<div class="col-md-8 col-sm-8">
							${bean.beitaiguige}</div>
					</div>
				</li>
			</ul>
			<div class="car-config-title ft-16 ft-weight">
				安全装备</div>
			<ul class="ft-sm">
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							主/副驾驶座安全气囊</div>
						<div class="col-md-8 col-sm-8">
							主${bean.zhujiashizuoanquanqinang==2?"●":(bean.zhujiashizuoanquanqinang==1?"○":"-")}&nbsp;/&nbsp;副${bean.fujiashizuoanquanqinang==2?"●":(bean.fujiashizuoanquanqinang==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							前/后排侧气囊</div>
						<div class="col-md-8 col-sm-8">
							前${bean.qianpaiceqinang==2?"●":(bean.qianpaiceqinang==1?"○":"-")}&nbsp;/&nbsp;后${bean.houpaiceqinang==2?"●":(bean.houpaiceqinang==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							前/后排头部气囊(气帘)</div>
						<div class="col-md-8 col-sm-8">
							前${bean.qianpaitoubuqinang==2?"●":(bean.qianpaitoubuqinang==1?"○":"-")}&nbsp;/&nbsp;后${bean.houpaitoubuqinang==2?"●":(bean.houpaitoubuqinang==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							膝部气囊</div>
						<div class="col-md-8 col-sm-8">
							${bean.xibuqinang==2?"●":(bean.xibuqinang==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							胎压监测装置</div>
						<div class="col-md-8 col-sm-8">
							${bean.taiyajiancezhuangzhi==2?"●":(bean.taiyajiancezhuangzhi==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							零胎压继续行驶</div>
						<div class="col-md-8 col-sm-8">
							${bean.lingtaiyajixuxingshi==2?"●":(bean.lingtaiyajixuxingshi==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							安全带未系提示</div>
						<div class="col-md-8 col-sm-8">
							${bean.anquandaiweijitishi==2?"●":(bean.anquandaiweijitishi==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							ISOFIX儿童座椅接口</div>
						<div class="col-md-8 col-sm-8">
							${bean.isofixertongzuoyijiekou==2?"●":(bean.isofixertongzuoyijiekou==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							发动机电子防盗</div>
						<div class="col-md-8 col-sm-8">
							${bean.fadongjidianzifangdao==2?"●":(bean.fadongjidianzifangdao==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							车内中控锁</div>
						<div class="col-md-8 col-sm-8">
							${bean.cheneizhongkongsuo==2?"●":(bean.cheneizhongkongsuo==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							遥控钥匙</div>
						<div class="col-md-8 col-sm-8">
							${bean.yaokongyaoshi==2?"●":(bean.yaokongyaoshi==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							无钥匙启动系统</div>
						<div class="col-md-8 col-sm-8">
							${bean.wuyaoshiqidongxitong==2?"●":(bean.wuyaoshiqidongxitong==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							无钥匙进入系统</div>
						<div class="col-md-8 col-sm-8">
							${bean.wuyaoshijinruxitong==2?"●":(bean.wuyaoshijinruxitong==1?"○":"-")}</div>
					</div>
				</li>
			</ul>
			<div class="car-config-title ft-16 ft-weight">
				操控配置</div>
			<ul class="ft-sm">
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							ABS防抱死</div>
						<div class="col-md-8 col-sm-8">
							${bean.absfangbaosi==2?"●":(bean.absfangbaosi==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							制动力分配(EBD/CBC等)</div>
						<div class="col-md-8 col-sm-8">
							${bean.zhidonglifenpei==2?"●":(bean.zhidonglifenpei==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							刹车辅助(EBA/BAS/BA等)</div>
						<div class="col-md-8 col-sm-8">
							${bean.shachefuzhu==2?"●":(bean.shachefuzhu==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							牵引力控制(ASR/TCS/TRC等)</div>
						<div class="col-md-8 col-sm-8">
							${bean.qianyinlikongzhi==2?"●":(bean.qianyinlikongzhi==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							车身稳定控制(ESC/ESP/DSC等)</div>
						<div class="col-md-8 col-sm-8">
							${bean.cheshenwendingkongzhi==2?"●":(bean.cheshenwendingkongzhi==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							上坡辅助</div>
						<div class="col-md-8 col-sm-8">
							${bean.shangpofuzhu==2?"●":(bean.shangpofuzhu==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							自动驻车</div>
						<div class="col-md-8 col-sm-8">
							${bean.zidongzhuche==2?"●":(bean.zidongzhuche==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							陡坡缓降</div>
						<div class="col-md-8 col-sm-8">
							${bean.doupohuanjiang==2?"●":(bean.doupohuanjiang==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							可变悬架</div>
						<div class="col-md-8 col-sm-8">
							${bean.kebianxuanjia==2?"●":(bean.kebianxuanjia==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							空气悬架</div>
						<div class="col-md-8 col-sm-8">
							${bean.kongqixuanjia==2?"●":(bean.kongqixuanjia==1?"○":"-")}</div>
					</div>
				</li>
			</ul>
			<div class="car-config-title ft-16 ft-weight">
				外部配置</div>
			<ul class="ft-sm">
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							电动天窗</div>
						<div class="col-md-8 col-sm-8">
							${bean.diandongtianchuang==2?"●":(bean.diandongtianchuang==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							全景天窗</div>
						<div class="col-md-8 col-sm-8">
							${bean.quanjingtianchuang==2?"●":(bean.quanjingtianchuang==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							运动外观套件</div>
						<div class="col-md-8 col-sm-8">
							${bean.yundongwaiguantaojian==2?"●":(bean.yundongwaiguantaojian==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							铝合金轮圈</div>
						<div class="col-md-8 col-sm-8">
							${bean.lvhejinlunquan==2?"●":(bean.lvhejinlunquan==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							电动吸合门</div>
						<div class="col-md-8 col-sm-8">
							${bean.diandongxihemen==2?"●":(bean.diandongxihemen==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							侧滑门</div>
						<div class="col-md-8 col-sm-8">
							${bean.cehuamen==2?"●":(bean.cehuamen==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							电动后备厢</div>
						<div class="col-md-8 col-sm-8">
							${bean.diandonghoubeixiang==2?"●":(bean.diandonghoubeixiang==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							感应后备厢</div>
						<div class="col-md-8 col-sm-8">
							${bean.ganyinghoubeixiang==2?"●":(bean.ganyinghoubeixiang==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							车顶行李架</div>
						<div class="col-md-8 col-sm-8">
							${bean.chedingxinglijia==2?"●":(bean.chedingxinglijia==1?"○":"-")}</div>
					</div>
				</li>
			</ul>
			<div class="car-config-title ft-16 ft-weight">
				内部配置</div>
			<ul class="ft-sm">
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							真皮方向盘</div>
						<div class="col-md-8 col-sm-8">
							${bean.zhenpifangxiangpan==2?"●":(bean.zhenpifangxiangpan==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							方向盘调节</div>
						<div class="col-md-8 col-sm-8">
							${bean.fangxiangpantiaojie}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							方向盘电动调节</div>
						<div class="col-md-8 col-sm-8">
							${bean.fangxiangpandiandongtiaojie==2?"●":(bean.fangxiangpandiandongtiaojie==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							多功能方向盘</div>
						<div class="col-md-8 col-sm-8">
							${bean.duogongnengfangxiangpan==2?"●":(bean.duogongnengfangxiangpan==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							方向盘换挡</div>
						<div class="col-md-8 col-sm-8">
							${bean.fangxiangpanhuandang==2?"●":(bean.fangxiangpanhuandang==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							方向盘加热</div>
						<div class="col-md-8 col-sm-8">
							${bean.fangxiangpanjiare==2?"●":(bean.fangxiangpanjiare==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							定速巡航</div>
						<div class="col-md-8 col-sm-8">
							${bean.dingsuxunhang==2?"●":(bean.dingsuxunhang==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							前/后驻车雷达</div>
						<div class="col-md-8 col-sm-8">
							前${bean.qianzhucheleida==2?"●":(bean.qianzhucheleida==1?"○":"-")}&nbsp;/&nbsp;后${bean.houzhucheleida==2?"●":(bean.houzhucheleida==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							倒车视频影像</div>
						<div class="col-md-8 col-sm-8">
							${bean.daocheshipinyingxiang==2?"●":(bean.daocheshipinyingxiang==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							行车电脑显示屏</div>
						<div class="col-md-8 col-sm-8">
							${bean.xingchediannaoxianshiping==2?"●":(bean.xingchediannaoxianshiping==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							全液晶仪表盘</div>
						<div class="col-md-8 col-sm-8">
							${bean.quanyejingyibiaopan==2?"●":(bean.quanyejingyibiaopan==1?"○":"-")}</div>
					</div>
				</li>
			</ul>
			<div class="car-config-title ft-16 ft-weight">
				座椅配置</div>
			<ul class="ft-sm">
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							座椅材质</div>
						<div class="col-md-8 col-sm-8">
							${bean.zuoyicaizhi}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							座椅高低调节</div>
						<div class="col-md-8 col-sm-8">
							${bean.zuoyigaoditiaojie==2?"●":(bean.zuoyigaoditiaojie==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							腰部支撑调节</div>
						<div class="col-md-8 col-sm-8">
							${bean.yaobuzhichengtiaojie==2?"●":(bean.yaobuzhichengtiaojie==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							肩部支撑调节</div>
						<div class="col-md-8 col-sm-8">
							${bean.jianbuzhichengtiaojie==2?"●":(bean.jianbuzhichengtiaojie==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							主/副驾驶座电动调节</div>
						<div class="col-md-8 col-sm-8">
							主${bean.zhujiashizuodiandongtiaojie==2?"●":(bean.zhujiashizuodiandongtiaojie==1?"○":"-")}&nbsp;/&nbsp;副${bean.fujiashizuodiandongtiaojie==2?"●":(bean.fujiashizuodiandongtiaojie==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							后排座椅电动调节</div>
						<div class="col-md-8 col-sm-8">
							${bean.houpaizuoyidiandongtiaojie==2?"●":(bean.houpaizuoyidiandongtiaojie==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							前/后排座椅加热</div>
						<div class="col-md-8 col-sm-8">
							前${bean.qianpaizuoyijiare==2?"●":(bean.qianpaizuoyijiare==1?"○":"-")}&nbsp;/&nbsp;后${bean.houpaizuoyijiare==2?"●":(bean.houpaizuoyijiare==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							前/后排座椅通风</div>
						<div class="col-md-8 col-sm-8">
							前${bean.qianpaizuoyitongfeng==2?"●":(bean.qianpaizuoyitongfeng==1?"○":"-")}&nbsp;/&nbsp;后${bean.houpaizuoyitongfeng==2?"●":(bean.houpaizuoyitongfeng==1?"○":"-")}</div>
					</div>
				</li>
			</ul>
			<div class="car-config-title ft-16 ft-weight">
				多媒体配置</div>
			<ul class="ft-sm">
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							GPS导航系统</div>
						<div class="col-md-8 col-sm-8">
							${bean.gpsdaohangxitong==2?"●":(bean.gpsdaohangxitong==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							中控台彩色大屏</div>
						<div class="col-md-8 col-sm-8">
							${bean.zhongkongtaicaisedaping==2?"●":(bean.zhongkongtaicaisedaping==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							蓝牙/车载电话</div>
						<div class="col-md-8 col-sm-8">
							${bean.lanyachezaidianhua==2?"●":(bean.lanyachezaidianhua==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							外接音源接口</div>
						<div class="col-md-8 col-sm-8">
							${bean.waijieyinyuanjiekou}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							多媒体系统</div>
						<div class="col-md-8 col-sm-8">
							${bean.duomeitixitong}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							扬声器数量</div>
						<div class="col-md-8 col-sm-8">
							${bean.yangshengqishuliang}</div>
					</div>
				</li>
			</ul>
			<div class="car-config-title ft-16 ft-weight">
				灯光配置</div>
			<ul class="ft-sm">
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							近光灯</div>
						<div class="col-md-8 col-sm-8">
							${bean.jinguangdeng}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							远光灯</div>
						<div class="col-md-8 col-sm-8">
							${bean.yuanguangdeng}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							日间行车灯</div>
						<div class="col-md-8 col-sm-8">
							${bean.rijianxingchedeng==2?"●":(bean.rijianxingchedeng==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							自适应远近光</div>
						<div class="col-md-8 col-sm-8">
							${bean.zishiyingyuanjindeng==2?"●":(bean.zishiyingyuanjindeng==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							自动头灯</div>
						<div class="col-md-8 col-sm-8">
							${bean.zidongtoudeng==2?"●":(bean.zidongtoudeng==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							转向辅助灯</div>
						<div class="col-md-8 col-sm-8">
							${bean.zhuanxiangfuzhudeng==2?"●":(bean.zhuanxiangfuzhudeng==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							转向头灯</div>
						<div class="col-md-8 col-sm-8">
							${bean.zhuangxiangtoudeng==2?"●":(bean.zhuangxiangtoudeng==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							前雾灯</div>
						<div class="col-md-8 col-sm-8">
							${bean.qianwudeng==2?"●":(bean.qianwudeng==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							大灯高度可调</div>
						<div class="col-md-8 col-sm-8">
							${bean.dadenggaoduketiao==2?"●":(bean.dadenggaoduketiao==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							大灯清洗装置</div>
						<div class="col-md-8 col-sm-8">
							${bean.dadengqingxizhuangzhi==2?"●":(bean.dadengqingxizhuangzhi==1?"○":"-")}</div>
					</div>
				</li>
			</ul>
			<div class="car-config-title ft-16 ft-weight">
				玻璃/后视镜</div>
			<ul class="ft-sm">
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							前/后电动车窗</div>
						<div class="col-md-8 col-sm-8">
							前${bean.qiandiandongchechuang==2?"●":(bean.qiandiandongchechuang==1?"○":"-")}&nbsp;/&nbsp;后${bean.houdiandongchengchuang==2?"●":(bean.houdiandongchengchuang==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							车窗防夹手功能</div>
						<div class="col-md-8 col-sm-8">
							${bean.chechuangfangjiashougongneng==2?"●":(bean.chechuangfangjiashougongneng==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							后视镜电动调节</div>
						<div class="col-md-8 col-sm-8">
							${bean.houshijingdiandongtiaojie==2?"●":(bean.houshijingdiandongtiaojie==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							后视镜加热</div>
						<div class="col-md-8 col-sm-8">
							${bean.houshijingjiare==2?"●":(bean.houshijingjiare==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							内/外后视镜自动防眩目</div>
						<div class="col-md-8 col-sm-8">
							内${bean.neihoushijingzidongfangxunmu==2?"●":(bean.neihoushijingzidongfangxunmu==1?"○":"-")}&nbsp;/&nbsp;外${bean.waihoushijingzidongfangxunmu==2?"●":(bean.waihoushijingzidongfangxunmu==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							后视镜电动折叠</div>
						<div class="col-md-8 col-sm-8">
							${bean.houshijingdiandongzhedie==2?"●":(bean.houshijingdiandongzhedie==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							遮阳板化妆镜</div>
						<div class="col-md-8 col-sm-8">
							${bean.zheyangbanhuazhuangjing==2?"●":(bean.zheyangbanhuazhuangjing==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							后雨刷</div>
						<div class="col-md-8 col-sm-8">
							${bean.houyushua==2?"●":(bean.houyushua==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							感应雨刷</div>
						<div class="col-md-8 col-sm-8">
							${bean.ganyingyushua==2?"●":(bean.ganyingyushua==1?"○":"-")}</div>
					</div>
				</li>
			</ul>
			<div class="car-config-title ft-16 ft-weight">
				空调/冰箱</div>
			<ul class="ft-sm">
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							空调控制方式</div>
						<div class="col-md-8 col-sm-8">
							${bean.kongtiaokongzhifangshi}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							后排独立空调</div>
						<div class="col-md-8 col-sm-8">
							${bean.houpaidulikongtiao==2?"●":(bean.houpaidulikongtiao==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							后座出风口</div>
						<div class="col-md-8 col-sm-8">
							${bean.houzuochufengkou==2?"●":(bean.houzuochufengkou==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							温度分区控制</div>
						<div class="col-md-8 col-sm-8">
							${bean.wendufenqukongzhi==2?"●":(bean.wendufenqukongzhi==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							车内空气调节/花粉过滤</div>
						<div class="col-md-8 col-sm-8">
							${bean.cheneikongqitiaojie==2?"●":(bean.cheneikongqitiaojie==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							车载冰箱</div>
						<div class="col-md-8 col-sm-8">
							${bean.chezaibingxiang==2?"●":(bean.chezaibingxiang==1?"○":"-")}</div>
					</div>
				</li>
			</ul>
			<div class="car-config-title ft-16 ft-weight">
				高科技配置</div>
			<ul class="ft-sm">
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							自动泊车入位</div>
						<div class="col-md-8 col-sm-8">
							${bean.zidongpocheruwei==2?"●":(bean.zidongpocheruwei==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							发动机启停技术</div>
						<div class="col-md-8 col-sm-8">
							${bean.fadongjiqitingjishu==2?"●":(bean.fadongjiqitingjishu==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							并线辅助</div>
						<div class="col-md-8 col-sm-8">
							${bean.bingxianfuzhu==2?"●":(bean.bingxianfuzhu==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							车道偏离预警系统</div>
						<div class="col-md-8 col-sm-8">
							${bean.chedaopianliyujingxitong==2?"●":(bean.chedaopianliyujingxitong==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							主动刹车/主动安全系统</div>
						<div class="col-md-8 col-sm-8">
							${bean.zhudongshachexitong==2?"●":(bean.zhudongshachexitong==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							整体主动转向系统</div>
						<div class="col-md-8 col-sm-8">
							${bean.zhengtizhudongzhuanxiangxitong==2?"●":(bean.zhengtizhudongzhuanxiangxitong==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							夜视系统</div>
						<div class="col-md-8 col-sm-8">
							${bean.yeshixitong==2?"●":(bean.yeshixitong==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							中控液晶屏分屏显示</div>
						<div class="col-md-8 col-sm-8">
							${bean.zhongkongyejingpingfenpingxianshi==2?"●":(bean.zhongkongyejingpingfenpingxianshi==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							自适应巡航</div>
						<div class="col-md-8 col-sm-8">
							${bean.zishiyingxunhang==2?"●":(bean.zishiyingxunhang==1?"○":"-")}</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-md-4 col-sm-4">
							全景摄像头</div>
						<div class="col-md-8 col-sm-8">
							${bean.quanjingshexiangtou==2?"●":(bean.quanjingshexiangtou==1?"○":"-")}</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>
<p>
				</div>
				</div>
				<p style="clear:both"></p>
			<p class="cont_title">车型亮点</p>
        <div class="con">　
          <style type="text/css">
.padding-h{
padding-top:85px;}
.ft-gray3 {
    color: #999;
font-size:16px;
padding-left: 15px;
padding-right: 15px;

}

.info .info-title {
    font-size: 20px;
font-weight: 600;
padding-bottom: 10px;
padding-left: 15px;
padding-right: 15px;

}
.col-md-12 {
    width: 100%;

}

.col-md-6 {
    width: 50%;

}
.col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9 {
float:left


}
.info-left-img{
float:right;
text-align:center;}

.bg-gray{
background-color:#efefef;
}</style>
<div class="row">
	<div class="col-md-12 col-sm-12">
		<img alt="${bean.whole_title}" class="lazy" data-original="${pageContext.request.contextPath}/${bean.whole_image}" src="${pageContext.request.contextPath}/${bean.whole_image}" width="100%" /></div>
	<div class="col-md-12 col-sm-12">
		<div class="info">
			<div class="info-title">
				<br />
				${bean.whole_title}</div>
			<div class="info-text ft-gray3">
			${bean.whole_description}
			<img alt="" src="${pageContext.request.contextPath}/images/fengetiao.png" style="width: 1455px; height: 27px;" /></div>
		</div>
	</div>
</div>
<br />
<img alt="" src="${pageContext.request.contextPath}/images/fengetiao.png" style="width: 1455px; height: 27px;" />
<div class="row">
	<div class="col-md-12">
		<div class="bg-gray">
			<div class="row">
				<div class="col-md-6 col-sm-6 info-right-img hidden-xs">
					<img alt="${bean.part_title1}" class="lazy" data-original="${pageContext.request.contextPath}/${bean.part_image1}" src="${pageContext.request.contextPath}/${bean.part_image1}" width="100%" /></div>
				<div class="col-md-6 col-sm-6 hidden-md hidden-lg hidden-sm">
					&nbsp;</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="info">
						<div class="padding-h hidden-xs">
							&nbsp;</div>
						<div class="info-title">
							${bean.part_title1}</div>
						<div class="info-text ft-gray3">
							${bean.part_description1}<br />
							&nbsp;</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<br />
<img alt="" src="${pageContext.request.contextPath}/images/fengetiao.png" style="width: 1455px; height: 27px;" />
<div class="row">
	<div class="col-md-12">
		<div class="bg-gray">
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="info">
						<div class="padding-h hidden-xs">
							&nbsp;</div>
						<div class="info-title">
							${bean.part_title2}</div>
						<div class="info-text ft-gray3">
							${bean.part_description2}<br />
							&nbsp;</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 info-left-img hidden-xs">
					<img alt="${bean.part_title2}" class="lazy" data-original="${pageContext.request.contextPath}/${bean.part_image2}" src="${pageContext.request.contextPath}/${bean.part_image2}" width="100%" /></div>
			</div>
		</div>
	</div>
</div>
<br />
<img alt="" src="${pageContext.request.contextPath}/images/fengetiao.png" style="width: 1455px; height: 27px;" />
<div class="row">
	<div class="col-md-12">
		<div class="bg-gray">
			<div class="row" style=" background: url('/style/images/beijingtiao.png') repeat-y">
				<div class="col-md-6 col-sm-6 info-right-img hidden-xs">
					<img alt="${bean.part_title3}" class="lazy" data-original="${pageContext.request.contextPath}/${bean.part_image3}" src="${pageContext.request.contextPath}/${bean.part_image3}" width="100%" /></div>
				<div class="col-md-6 col-sm-6 hidden-md hidden-lg hidden-sm">
					&nbsp;</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="info">
						<div class="padding-h hidden-xs">
							&nbsp;</div>
						<div class="info-title">
							${bean.part_title3}</div>
						<div class="info-text ft-gray3">
							${bean.part_description3}<br />
							&nbsp;</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<br />

        </div>
        <style>
        #stores{
        background-color: #efefef;
        }
        .store-info .map {
	border: 1px solid #d9d9d9;
	padding: 15px;
}
.ft-16 {
	font-size: 16px;
}
.store-info .map .map-title {
	width: 70%;
	display: inline-block;
}
.ft-ellipsis2 {
	overflow: hidden;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
	margin: 2px 0;
}
.ft-gray {
	color: #666;
}
.store-info .map .phone {
	height: 25px;
	line-height: 25px;
}
.store-info .map .search-map {
	padding: 10px 0 0;
}
.dialog-content {
	height: 470px;
	padding: 10px 0;
	overflow-y: scroll;
}
#detail-pc-contain{
	margin:15px 0;
}
        
        </style>
        <div class="store store-info">
					
						<p>
							<span class="cont_title">门店信息</span>
							<span class="all_store"><a onclick="showstore();">查看全部${fn:length(shops)}家门店</a></span>
							
						</p>

						<div class="row" id="detail-pc-contain">
							<c:forEach items="${shops}" var="shop" varStatus="index">
							<c:if test="${index.index<3}">
								<div class="col-md-4 col-sm-4">
									<div class="map ft-md">
										<div class="ft-16">
											<img class="map-icon"
												src=" //assets.souche.com/projects/finance/vanille/images/detail/location-icon.png?BIU=ede00cfb493532e170aa54cf65002200 "
												alt="" width="11"> <span class="map-title ft-ellipsis">${shop.name }</span>
										</div>
										<div class="ft-gray ft-ellipsis2">${shop.addr }</div>
										<div class="ft-gray phone">${shop.tel }</div>
										<div class="search-map">
											<a class="hidden-xs pointer pos-bottom j-searchMap"
												target="_blank"
												href='http://map.baidu.com/?newmap=1&ie=utf-8&s=s%26wd%3D${shop.addr }'>查看地图</a>
										</div>
									</div>
								</div>
								</c:if>
							</c:forEach>
							</div>


					<div id="stores"class="stores">
						<p>
							<span class="cont_title">全部门店信息</span>
							<span class="all_store"><a onclick="hidestore();">关闭</a></span>
						</p>

							<div class="dialog-content">
								<div class="dialog-shops" id="dialog-shops-container">
									<div class="store-info">
										<div class="row " id="detail-pc-dialog">
										<c:forEach items="${shops}" var="shop">
											<div class="col-md-6 col-sm-6">
												<div class="map ft-md">
													<div class="ft-16">
														<img class="map-icon"
															src=" //assets.souche.com/projects/finance/vanille/images/detail/location-icon.png?BIU=ede00cfb493532e170aa54cf65002200 "
															alt="" width="11"> <span
															class="map-title ft-ellipsis">${shop.name }</span>

													</div>
													<div class="ft-gray ft-ellipsis2">${shop.addr }</div>
													<div class="ft-gray">${shop.tel }</div>
													<div class="search-map">
														<a class="hidden-xs pointer pos-bottom j-searchMap"
															target="_blank"
												href='http://map.baidu.com/?newmap=1&ie=utf-8&s=s%26wd%3D${shop.addr }'>查看地图</a>
													</div>
												</div>
											</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>

						</div>
					<script>
								function showstore(){
									var stores=document.getElementById("stores");
									stores.style.display="block";
								}
								
								function hidestore(){
									var stores=document.getElementById("stores");
									stores.style.display="none";
								}
								function showconf(){
									var full_conf=document.getElementById('full_conf');
									full_conf.style.display="block";
								}
								function hideconf(){
									var full_conf=document.getElementById('full_conf');
									full_conf.style.display="none";
								}
								function showcomp(){
									var comp_area=document.getElementById('comp_area');
									comp_area.style.display="block";
								}
								function hidecomp(){
									var comp_area=document.getElementById('comp_area');
									comp_area.style.display="none";
								}
								function getstore(){
									var pre_store=document.getElementById('pre_store'); 
									var pre_storeid=document.getElementById('pre_storeid');
									
									var aid=pre_store.options[pre_store.selectedIndex].getAttribute("aid");
									pre_storeid.value=aid;
								}
					</script>
				</div>
        <!-- end con-->
        

        
        <!-- end pgfy--> 
        
      </div>
      
      <!-- end mainContect--> 
      
    </div>
    
    <!-- end main_con-->
    
    <div class="clear"></div>
  </div>
  
  <!-- end main--> 
  
</div>
﻿<jsp:include page="/jsp2/foot.jsp"></jsp:include>

<script>

//初始化
$(function() {
	//如果用户登录了，判断该车是否被收藏了，如果没登录，显示未收藏的图标
	if(${empty user}){
		alert("user empty");
		$(".attention-cancle").show();
		$(".attentioned").hide();
		
	}else{
		//发送ajax请求
		$.get("${pageContext.request.contextPath}/user2?method=isCarCollected&car_id=${bean.car_id}",function(data){
			//获取brand的ul标签
			var $collectCar=$("#collectCar");
			$(data).each(function(){
				//$ul.append($("<li><a href='${pageContext.request.contextPath}/car?method=findByBrandInPage&brand_id="+this.brand_id+"&currPage=1'>"+this.brand_name+"</a></li>"));
				if(this.result=="true"){
					//alert("已经被收藏");
					$(".attention-cancle").hide();
					$(".attentioned").show();
				}else{
					//alert("未被收藏"+this.result);
					$(".attention-cancle").show();
					$(".attentioned").hide();
				}				
			});		
			
		},"json");
	}
	
	$("#appiont").click(function(){
		//发送ajax请求
		$.get("${pageContext.request.contextPath}/city?method=findAll",function(data){
			//获取brand的ul标签
			var $selected=$("#city");
			$("#city").empty();
			$("#shop").empty();
			//遍历数组
			$(data).each(function(){
				//$ul.append($("<li><a href='${pageContext.request.contextPath}/car?method=findByBrandInPage&brand_id="+this.brand_id+"&currPage=1'>"+this.brand_name+"</a></li>"));
				$selected.append($("<option value='"+this.city_id+"'>"+this.name+"</option>"));
				
			});
			
			$("#city option").click(function(){
				var $city_id=$(this).val();
				$.get("${pageContext.request.contextPath}/shop?method=findByCity&city_id="+$city_id,function(data){
					//获取brand的ul标签
					var $selected=$("#shop");
					$("#shop").empty();
					//遍历数组
					$(data).each(function(){
						//$ul.append($("<li><a href='${pageContext.request.contextPath}/car?method=findByBrandInPage&brand_id="+this.brand_id+"&currPage=1'>"+this.brand_name+"</a></li>"));
						$selected.append($("<option value='"+this.shop_id+"'>"+this.name+"</option>"));
						
					});
				},"json");				
				
			});
			$("#city option:first").trigger("click");
		},"json");
		//$('#myModal').modal('show');
	});
	
	
	//收藏车辆
 $("#collectCar").click(function(){
	 if($(".attention-cancle").is(":hidden")){
	       alert("取消收藏");    //如果未收藏元素为隐藏,则将取消收藏
	     //发送ajax请求,取消收藏
		$.get("${pageContext.request.contextPath}/user2?method=cancelCollectCar&car_id=${bean.car_id}",function(data){
				$(data).each(function(){
					if(this.result=="success"){
						alert("取消成功");
						$(".attention-cancle").show();
						$(".attentioned").hide();
						
					}else{
						alert("取消失败，请再次取消，原因："+this.result);
						$(".attention-cancle").hide();
						$(".attentioned").show();
					}			
				});			
			},"json");
	}else{
		//发送ajax请求,收藏元素
		$.get("${pageContext.request.contextPath}/user2?method=collectCar&car_id=${bean.car_id}",function(data){
			//获取brand的ul标签
			var $collectCar=$("#collectCar");
			$(data).each(function(){
				//$ul.append($("<li><a href='${pageContext.request.contextPath}/car?method=findByBrandInPage&brand_id="+this.brand_id+"&currPage=1'>"+this.brand_name+"</a></li>"));
				if(this.result=="success"){
					alert("收藏成功");
					$(".attention-cancle").hide();
					$(".attentioned").show();
				}else{
					alert("收藏未成功，请再次收藏，原因："+this.result);
					$(".attention-cancle").show();
					$(".attentioned").hide();
				}			
			});
			
			
		},"json");
	}
	 
		
	});
	
});
</script>
</body>
</html>