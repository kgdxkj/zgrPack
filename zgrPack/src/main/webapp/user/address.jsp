<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.2" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />

<title>用户中心_TISSOT天梭手表-天梭表官方网站价格,图片,报价,正品-风尚天梭表业</title>

<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/user.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/js/transport.js"></script><script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js"></script><script type="text/javascript" src="${pageContext.request.contextPath}/js/user.js"></script><script type="text/javascript" src="themes/SportsShoes/js/action.js"></script>
</head>
<body>
<c:if test="${sessionScope.loginUser==null}">
	<c:redirect url="../login_register.jsp"></c:redirect>
</c:if>
<c:if test="${requestScope.addresses==null}">
	<jsp:forward page="address!toAddress.do"></jsp:forward>
</c:if>
<div id="container">
<div id="top">
  <div class="header">
  	 <div class="logo"><a href="${pageContext.request.contextPath}/index.jsp" title="淘表网全球顶级名表商城"><img src="${pageContext.request.contextPath}/images/logo.jpg" alt="淘表网全球顶级名表商城" /></a></div>
  
    <div class="topnav">
      <div class="nav1"><span >
      <c:if test="${sessionScope.loginUser!=null}">
		     欢迎您，${sessionScope.loginUser.name} [ <a href="login_register!loginout.do"> 注销 </a>     
      </c:if>
      <c:if test="${sessionScope.loginUser==null}">
	     [ <a href="${pageContext.request.contextPath}/login_register.jsp"> 登录 </a>
      </c:if>
      |<a href="${pageContext.request.contextPath}/login_register.jsp"> 注册</a> ]&nbsp;<a class="nav-cart" href="${pageContext.request.contextPath}/cart.jsp">我的购物车（<font color="#AB4419">0</font>）&nbsp;&nbsp;</a><a href="orderList!toOrderListFromUser.do">我的订单</a> </span>
	  <div class="orderBox hab" id="h-warp1" onmouseover="showFq(1,1)" onmouseout="hiddenFq(1,1)">
	  <p><a href="${pageContext.request.contextPath}/user/index.jsp" rel="nofollow">我的淘表</a></p>
		<ul id="h-con1" style="display:none;">
		<li><a href="orderList!toOrderListFromUser.do" rel="nofollow">我的订单</a></li>
		<li><a href="" rel="nofollow">我的咨询</a></li>
		<li><a href="" rel="nofollow">我的收藏</a></li>
		<li><a href="" rel="nofollow">收货地址</a></li>
		<li><a href="" rel="nofollow">修改密码</a></li>
		</ul>
	  </div>
	  <div class="helpBox hab" id="h-warp2" onmouseover="showFq(2,2)" onmouseout="hiddenFq(2,2)">
		<p><a href="" rel="nofollow">帮助中心</a></p>
		<ul id="h-con2" style="display:none;">
		<li><a href="" rel="nofollow">帮助中心</a></li>
		<li><a href="" rel="nofollow">留言咨询</a></li>
		<li><a href="" rel="nofollow">售后服务</a></li>
        <li><a href="" rel="nofollow">联系客服</a></li>
		</ul>
	  </div></div>
      <div class="nav2">
        <div class="Search"><form action="/list" method="get" ><input name="keyword" type="text" id="keyword" value="输入商品关键字，比如"天梭"..." onmouseover="if(this.value=='输入商品关键字，比如"天梭"...'){this.value='';this.focus();}"  onmouseout="if(this.value=='')this.value='输入商品关键字，比如"天梭"...'" /><input name="btsearch" type="submit" id="btsearch" value="搜索" /><a href="" style="margin-left:2px">高级搜索</a>
        </form>
        </div>
        <div class="Service">订购热线(免长途费)：<font> 13751801572</font></div>
      </div>
    </div>
  </div>
  <div id="nav">
    <div class="mainNav" id="mainNav">
      <div class="mN-item mN-nobg" id="mN-current">
        <div class="nobg mN-h1"><a rel="nofollow" title="淘表奢侈品商城" href="${pageContext.request.contextPath}/index.jsp">首页</a></div>
      </div>
      <div class="mN-item">
        <div class="mN-h1 mantit"><a title="男表" href="">男士手表</a></div>
      </div>
      <div class="mN-item">
        <div class="mN-h1 womentit"><a title="女表" href="">女士手表</a></div>
      </div>
      <div class="mN-item">
        <div class="mN-h1 lovetit"><a title="情侣表" href="">情侣对表</a></div>
      </div>
	  <div class="mN-item">
        <div class="mN-h1 h1bg allsbtit"><a title="所有手表" href="${pageContext.request.contextPath}/product/productList.jsp">所有手表</a></div>
      </div>
      <div class="mN-item">
        <div class="mN-h1 h1bg allpptit"><a rel="nofollow" title="瑞士手表牌" href="${pageContext.request.contextPath}/product/brands.jsp">所有品牌</a></div>
      </div>
      <div class="mN-item">
        <div class="mN-h1 h1bg story"><a rel="nofollow"  href="">品牌故事</a></div>
      </div>
      <div class="mN-item">
        <div class="mN-h1 h1bg knowledge"><a rel="nofollow"  href="">手表常识</a></div>
      </div>
      <div class="mN-item mN-nobg mN_right">
		<div class="mN-h1 zhongqiu"><a title="名表夜晏" href="">名表抢购</a></div>
      </div>
    </div>
   </div>
   
    <!--主导航end-->
  </div>
<div class="blank10"></div><div class="block">
<div class="ur_here">
当前位置: <a href="${pageContext.request.contextPath}/index.jsp">首页</a> <code>&gt;</code> 用户中心</div></div>

<div class="block clearfix">
  <div class="EarLeft fl">
     <div class="attrbox">
     <h2></h2>
         <div class="attrcontent">
           <ul class="userMenu">
           <li><a href="${pageContext.request.contextPath}/user/index.jsp" class="curs"> 欢迎页</a></li>
          <li><a href="${pageContext.request.contextPath}/user/userinfo.jsp"> 用户信息</a></li>
          <li><a href="#"> 我的订单</a></li>
          <li><a href="#"> 收货地址</a></li>
          <li><a href="#"> 我的收藏</a></li>
          <li><a href="#"> 我的留言</a></li>
          <li><a href="#"> 资金管理</a></li>
            </ul>
         </div>
	</div> 
  </div>
 <div class="EarRight fr">
  <div class="us_contentBox">
 <div class="CarTitle"><span class="fwhite f14b">收货人信息</span></div>
 
  <%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/region.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/shopping_flow.js"></script>   --%>
  <script type="text/javascript">
   /* region.isAdmin = false;
      var consignee_not_null = "收货人姓名不能为空！";
      var country_not_null = "请您选择收货人所在国家！";
      var province_not_null = "请您选择收货人所在省份！";
      var city_not_null = "请您选择收货人所在城市！";
      var district_not_null = "请您选择收货人所在区域！";
      var invalid_email = "您输入的邮件地址不是一个合法的邮件地址。";
      var address_not_null = "收货人的详细地址不能为空！";
      var tele_not_null = "电话不能为空！";
      var shipping_not_null = "请您选择配送方式！";
      var payment_not_null = "请您选择支付方式！";
      var goodsattr_style = "1";
      var tele_invaild = "电话号码不有效的号码";
      var zip_not_num = "邮政编码只能填写数字";
      var mobile_invaild = "手机号码不是合法号码";
      
   onload = function() {
    if (!document.all)
    {
     document.forms['theForm'].reset();
    } */
   }
   
  </script>
    <form action="address!addAddress.do" method="post" name="theForm">
   <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd" class="address">
    <tr>
     <td align="right" bgcolor="#ffffff">配送区域：</td>
     <td colspan="3" align="left" bgcolor="#ffffff">
     <select name="country" id="selCountries_0" class="InputBorder">
       <option value="0">请选择国家</option>
              <option value="1" selected>中国</option>
             </select>
      <select name="province" id="selProvinces_0" class="InputBorder">
       <option value="0">请选择省</option>
              <option value="2" >北京</option>
              <option value="3" >安徽</option>
              <option value="4" >福建</option>
              <option value="5" >甘肃</option>
              <option value="6" selected>广东</option>
              <option value="7" >广西</option>
              <option value="8" >贵州</option>
              <option value="9" >海南</option>
              <option value="10" >河北</option>
              <option value="11" >河南</option>
              <option value="12" >黑龙江</option>
              <option value="13" >湖北</option>
              <option value="14" >湖南</option>
              <option value="15" >吉林</option>
              <option value="16" >江苏</option>
              <option value="17" >江西</option>
              <option value="18" >辽宁</option>
              <option value="19" >内蒙古</option>
              <option value="20" >宁夏</option>
              <option value="21" >青海</option>
              <option value="22" >山东</option>
              <option value="23" >山西</option>

              <option value="24" >陕西</option>
              <option value="25" >上海</option>
              <option value="26" >四川</option>
              <option value="27" >天津</option>
              <option value="28" >西藏</option>
              <option value="29" >新疆</option>
              <option value="30" >云南</option>
              <option value="31" >浙江</option>
              <option value="32" >重庆</option>
              <option value="33" >香港</option>
              <option value="34" >澳门</option>
              <option value="35" >台湾</option>
             </select>
      <select name="city" id="selCities_0" class="InputBorder">
       <option value="0">请选择市</option>
              <option value="76" selected>广州</option>
              <option value="77" >深圳</option>
              <option value="78" >潮州</option>
              <option value="79" >东莞</option>
              <option value="80" >佛山</option>
              <option value="81" >河源</option>
              <option value="82" >惠州</option>
              <option value="83" >江门</option>
              <option value="84" >揭阳</option>
              <option value="85" >茂名</option>
              <option value="86" >梅州</option>
              <option value="87" >清远</option>
              <option value="88" >汕头</option>
              <option value="89" >汕尾</option>
              <option value="90" >韶关</option>
              <option value="91" >阳江</option>
              <option value="92" >云浮</option>
              <option value="93" >湛江</option>
              <option value="94" >肇庆</option>
              <option value="95" >中山</option>
              <option value="96" >珠海</option>
             </select>
      <select name="district" id="selDistricts_0"  class="InputBorder">
       <option value="0">请选择区</option>
              <option value="692" >从化市</option>
              <option value="693" selected>天河区</option>
              <option value="694" >东山区</option>
              <option value="695" >白云区</option>
              <option value="696" >海珠区</option>
              <option value="697" >荔湾区</option>
              <option value="698" >越秀区</option>
              <option value="699" >黄埔区</option>
              <option value="700" >番禺区</option>
              <option value="701" >花都区</option>
              <option value="702" >增城区</option>
              <option value="703" >从化区</option>
              <option value="704" >市郊</option>
             </select>
     (必填) </td>
    </tr>
    <tr>
     <td align="right" bgcolor="#ffffff">收货人姓名：</td>
     <td align="left" bgcolor="#ffffff"><input name="consignee" type="text" class="InputBorder" id="consignee_0" value="${requestScope.addresses[0].consignee}" />
     (必填) </td>
     <td align="right" bgcolor="#ffffff">最佳送货时间：</td>
     <td align="left" bgcolor="#ffffff"><input name="best_time" type="text"  class="InputBorder" id="best_time_0" value="${requestScope.addresses[0].deliverTime}" /></td>
    </tr>
    <tr>
     <td align="right" bgcolor="#ffffff">详细地址：</td>
     <td align="left" bgcolor="#ffffff"><input name="address" type="text" class="InputBorder" id="address_0" value="${requestScope.addresses[0].address}" />
     (必填)</td>
     <td align="right" bgcolor="#ffffff">邮政编码：</td>
     <td align="left" bgcolor="#ffffff"><input name="zipcode" type="text" class="InputBorder" id="zipcode_0" value="${requestScope.addresses[0].postcode}" /></td>
    </tr>
    <tr>
     <td align="right" bgcolor="#ffffff">电话：</td>
     <td align="left" bgcolor="#ffffff"><input name="tel" type="text" class="InputBorder" id="tel_0" value="${requestScope.addresses[0].phone}" />
     (必填)</td>
     <td align="right" bgcolor="#ffffff">手机：</td>
     <td align="left" bgcolor="#ffffff"><input name="mobile" type="text" class="InputBorder" id="mobile_0" value="${requestScope.addresses[0].cellPhone}" /></td>
    </tr>
    <tr>
     <td align="right" bgcolor="#ffffff">&nbsp;</td>
     <td colspan="3" align="center" bgcolor="#ffffff">
           <input type="submit" name="submit" class="bnt_number4" value="增加地址" />
            <input type="hidden" name="act" value="act_edit_address" />
      <input name="address_id" type="hidden" value="6" />
     </td>
    </tr>
   </table>
  </form>
   
   
   <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="0" class="address" style="margin-top:50px">
							  <tr align="center">
								<td class="item"><strong>收货要姓名</strong></td>
								<td class="item"><strong>详细地址</strong></td>
								<td class="item"><strong>邮政编码</strong></td>
								<td class="item"><strong>电话</strong></td>
								<td class="item"><strong>手机</strong></td>
                                <td class="item"><strong>默认</strong></td>
								<td class="item"><strong>操作</strong></td>
							  </tr>
							  <c:forEach var="address" items="${requestScope.addresses}" varStatus="status">
		               		  	 <tr align="center" >
									<td class="item"><strong>${address.consignee}</strong></td>
									<td class="item"><strong>${address.district}</strong></td>
									<td class="item"><strong>${address.postcode}</strong></td>
									<td class="item"><strong>${address.phone}</strong></td>
									<td class="item"><strong>${address.cellPhone}</strong></td>
	                                <td class="item"><strong><input type="radio" name="addr" checked="checked"/></strong></td>
									<td class="item"><strong><a href="#">编辑</a><br /><a href="address!deleteAddress.do?id=${address.id}">删除</a></strong></td>
								  </tr>
		               		  </c:forEach>
                              <!-- <tr align="center" >
								<td class="item"><strong>stone</strong></td>
								<td class="item"><strong>广州市岗顶</strong></td>
								<td class="item"><strong>510663</strong></td>
								<td class="item"><strong>020-88888888</strong></td>
								<td class="item"><strong>13631363270</strong></td>
                                <td class="item"><strong><input type="radio" name="addr" checked="checked"/></strong></td>
								<td class="item"><strong><a href="#">编辑</a><br /><a href="#">删除</a></strong></td>
							  </tr> -->
   </table>
   </div>

  
 </div>

</div>
</div>
</body>
<script type="text/javascript">
/* var msg_title_empty = "留言标题为空";
var msg_content_empty = "留言内容为空";
var msg_title_limit = "留言标题不能超过200个字"; */
</script>
</html>
