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

<title>购物流程_TISSOT天梭手表-天梭表官方网站价格,图片,报价,正品-风尚天梭表业</title>

<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="css/cart.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/slides.css" rel="stylesheet" type="text/css" />
</head>
<body>
<c:if test="${sessionScope.loginUser==null}">
	<c:redirect url="login_register.jsp"></c:redirect>
</c:if>
<div id="container">
<div id="top">
  <div class="header">
   <div class="logo"><a href="index.jsp" title="淘宝网全球顶级名表商城"><img src="images/logo.jpg" alt="淘宝网全球顶级名表商城" /></a></div>
    <div class="topnav">
      <div class="nav1"><span >
      <c:if test="${sessionScope.loginUser!=null}">
		     欢迎您，${sessionScope.loginUser.name} [ <a href="login_register!loginout.do"> 注销 </a>     
      </c:if>
      <c:if test="${sessionScope.loginUser==null}">
	     [ <a href="${pageContext.request.contextPath}/login_register.jsp"> 登录 </a>
      </c:if>
      |<a href="${pageContext.request.contextPath}/login_register.jsp"> 注册</a> ]&nbsp;<a class="nav-cart" href="${pageContext.request.contextPath}/cart.jsp">我的购物车（<font color="#AB4419">0</font>）&nbsp;&nbsp;</a><a href="${pageContext.request.contextPath}/user/orderList.jsp">我的订单</a> </span>
	  <div class="orderBox hab" id="h-warp1" onmouseover="showFq(1,1)" onmouseout="hiddenFq(1,1)">
	  <p><a href="user/index.jsp" rel="nofollow">我的淘表</a></p>
		<ul id="h-con1" style="display:none;">
		<li><a href="${pageContext.request.contextPath}/user/orderList.jsp" rel="nofollow">我的订单</a></li>
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
        <div class="Search"><form action="/list" method=get><input name="keyword" type="text" id="keyword" value="输入商品关键字，比如"天梭"..." onmouseover="if(this.value=='输入商品关键字，比如"天梭"...'){this.value='';this.focus();}"  onmouseout="if(this.value=='')this.value='输入商品关键字，比如"天梭"...'" /><input name="btsearch" type="submit" id="btsearch" value="搜索" />
        </form>
        </div>
        <div class="Service">订购热线(免长途费)：<font> 13751801572</font></div>
      </div>
    </div>
  </div>
  <div id="nav">
    <div class="mainNav" id="mainNav">
      <div class="mN-item mN-nobg" id="mN-current">
        <div class="nobg mN-h1"><a rel="nofollow" title="淘表奢侈品商城" href="index.jsp">首页</a></div>
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
    <!--主导航end-->
  </div>
 
</div>
<div class="blank10"></div><div class="block">
<div class="ur_here">
当前位置: <a href="index.jsp">首页</a> <code>&gt;</code> 购物流程</div></div>

<div class="block">

<div class="CarTitle"><span class="fwhite f14b">商品列表</span></div>
 <form id="formCart" name="formCart" method="post" action="flow.php">
   <table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#e3e3e3" id="cartTable">
   <tr>
    <th bgcolor="#ffffff">商品名称</th>
        <th bgcolor="#ffffff">属性</th>
            <th bgcolor="#ffffff">市场价</th>
        <th bgcolor="#ffffff">本店价</th>
    <th bgcolor="#ffffff">购买数量</th>
    <th bgcolor="#ffffff">小计</th>
    <th bgcolor="#ffffff">操作</th>
   </tr>
   <c:forEach var="orderDetail" items="${sessionScope.cart.orderDetails}" varStatus="status">
   		<tr>
	    <td bgcolor="#ffffff" align="center">
	                <a href="goods.php?id=28" target="_blank"><img src="${orderDetail.product.pic}" border="0" title="${orderDetail.product.productName}" /></a><br />
	      <a href="goods.php?id=28" target="_blank">${orderDetail.product.productName}</a>
	                         </td>
	        <td bgcolor="#ffffff"></td>
	            <td align="right" bgcolor="#ffffff">￥${orderDetail.product.price}元</td>
	        <td align="right" bgcolor="#ffffff" class="price">￥${orderDetail.product.specialPrice}元</td>
	    <td align="right" bgcolor="#ffffff">
	          <input type="text" name="goods_number[33]" id="goods_number_33" value="${orderDetail.productCount}" size="4" class="InputBorder"  onkeydown="showdiv(this)" disabled="disabled"/>
	         </td>
	    <td align="right" bgcolor="#ffffff" class="price">￥${orderDetail.productPrice}元</td>
	    <td align="center" bgcolor="#ffffff">
	     <acronym class="delete"></acronym><a href="javascript:if (confirm('您确实要把该商品移出购物车吗？')) location.href='cart!deleteProductFromCart.do?sId=${orderDetail.sid}'; " ><u class="b">删除</u></a>&nbsp;&nbsp;
	          </td>
	   </tr>
   
   </c:forEach>   
   
  </table>
  <table width="100%" align="center" border="0" cellpadding="5" cellspacing="0" bgcolor="#f9f9f9" id="bntTable">
   <tr>
    <td class="fred f14b">
        购物金额小计 ￥${sessionScope.cart.userOrder.totalPrice}元，比市场价 ￥${sessionScope.cart.userOrder.superTotalPrice} 元 节省了 ￥${sessionScope.cart.userOrder.superTotalPrice-sessionScope.cart.userOrder.totalPrice}元 <!-- (17%) -->    </td>
    <td align="right">
     <input type="button" value="清空购物车" class="bnt_number6" onclick="location.href='cart!cleanCart.do'" />
     <input name="submit" type="submit" class="bnt_number6" value="更新购物车" />
    </td>
   </tr>
  </table>
  <input type="hidden" name="step" value="update_cart" />
 </form>
 <table width="100%" align="center" border="0" cellpadding="5" cellspacing="0">
  <tr>
   <td style="text-align:left"><a href="index.jsp"><img src="images/continue.gif" /></a></td>
   <td align="right"><a href="cart!toSettlementCenter.do"><img src="images/checkout.gif" /></a></td>
  </tr>
 </table>
</div>
</div>
</div>
</body>
</html>
