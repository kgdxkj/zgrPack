<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.2" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />

<title>用户中心_淘表网商城 - </title>

<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link rel="alternate" type="application/rss+xml" title="RSS|用户中心_淘表网商城 - " href="" />
<link href="${pageContext.request.contextPath}/css/user.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/slides-chanel.css" rel="stylesheet" type="text/css" />

</head>
<body>
<c:if test="${sessionScope.loginUser==null}">
	<c:redirect url="login_register.jsp"></c:redirect>
</c:if>

<div id="container">
   <div id="top">
  <div class="header">
  	 <div class="logo"><a href="index.jsp" title="淘表网全球顶级名表商城"><img src="${pageContext.request.contextPath}/images/logo.jpg" alt="淘表网全球顶级名表商城" /></a></div>
    <div class="topnav">
      <div class="nav1"><span >
      <c:if test="${sessionScope.loginUser!=null}">
		     欢迎您，${sessionScope.loginUser.name} [ <a href="login_register!loginout.do"> 注销 </a>     
      </c:if>
      <c:if test="${sessionScope.loginUser==null}">
	     [ <a href="${pageContext.request.contextPath}/login_register.jsp"> 登录 </a>
      </c:if>
      |<a href="${pageContext.request.contextPath}/login_register.jsp"> 注册</a> ]&nbsp;<a class="nav-cart" href="../cart.jsp">我的购物车（<font color="#AB4419">0</font>）&nbsp;&nbsp;</a><a href="orderList!toOrderListFromUser.do">我的订单</a> </span>
	  <div class="orderBox hab" id="h-warp1" onmouseover="showFq(1,1)" onmouseout="hiddenFq(1,1)">
	  <p><a href="user/index.jsp" rel="nofollow">我的淘表</a></p>
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
        <div class="Search"><form action="/list" method="get"><input name="keyword" type="text" id="keyword" value="输入商品关键字，比如"天梭"..." onmouseover="if(this.value=='输入商品关键字，比如"天梭"...'){this.value='';this.focus();}"  onmouseout="if(this.value=='')this.value='输入商品关键字，比如"天梭"...'" /><input name="btsearch" type="submit" id="btsearch" value="搜索" />
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
   
<div class="blank10"></div>
<div class="block">
<div class="ur_here" style="text-align:left">
当前位置: <a href="../index.jsp">首页</a> <code>&gt;</code> 用户中心<code>&gt;</code>欢迎页</div></div>
<div class="block clearfix">
<div class="EarLeft fl">
     <div class="attrbox">
     <h2></h2>
         <div class="attrcontent" style="text-align:left">
           <ul class="userMenu">
           <li><a href="index.jsp" class="curs"> 欢迎页</a></li>
          <li><a href="userinfo.jsp"> 用户信息</a></li>
          <li><a href="orderList.jsp"> 我的订单</a></li>
          <li><a href="address.jsp"> 收货地址</a></li>
          <li><a href="#"> 我的收藏</a></li>
          <li><a href="#"> 我的留言</a></li>
          <li><a href="#"> 资金管理</a></li>
            </ul>
         </div>
	</div> 
 </div>
              
			
 <div class="EarRight fr">
 <div class="us_contentBox default clearfix">
						  
						   <div class="top">我的订单</div>
						   <div class="body">
						   <div class="blank"></div>
						   <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="0">
							  <tr align="center" >
								<td class="item"><strong>订单号</strong></td>
								<td class="item"><strong>下单时间</strong></td>
								<td class="item"><strong>订单总金额</strong></td>
								<td class="item"><strong>订单状态</strong></td>
								<td class="item"><strong>发货单号</strong></td>
								<td class="item"><strong>操作</strong></td>
							  </tr>
							  
							  <c:forEach var="userOrder" items="${requestScope.userOrders}" varStatus="status">
							  		<tr align="center" >
									<td class="item">${sessionScope.orderId}</td>
									<td class="item">${userOrder.orderTime}</td>
									<td class="item">${userOrder.totalPrice}</td>
									<td class="item">
										<c:if test="${userOrder.status==0}">未付款</c:if>
										<c:if test="${userOrder.status==1}">已付款</c:if>
									</td>
									<td class="item">${sessionScope.sendOrderId}</td>
									<td class="item"><a href="orderList!deleteOrderList.do?id=${userOrder.id}">删除</a></td>
								  </tr>
							  </c:forEach>
							  
							  						     </table>
							<div class="blank5"></div>
						   
<form name="selectPageForm" action="/user.php" method="get">


 <div id="pager" class="pagebar">
  <span class="f_l f6 " style="margin-right:10px;">总计 <b>0</b>  个记录</span>
      
      </div>


</form>

						   <div class="blank5"></div>
						   <h5>合并订单</h5>
						   <div class="blank"></div>
							<form action="user.php" method="post" name="formOrder" onsubmit="return mergeOrder()">
							  <table width="100%" border="0" cellpadding="5" cellspacing="0">
								<tr>
								  <td width="22%" align="right" class="order_list">主订单:</td>
								  <td width="12%" align="left" class="order_list"><select name="to_order">
								  <option value="0">请选择...</option>
					
									  					
									</select></td>
								  <td width="19%" align="right" class="order_list">从订单:</td>
								  <td width="11%" align="left" class="order_list"><select name="from_order">
								  <option value="0">请选择...</option>
					
									  					
									</select></td>
								  <td width="36%" class="order_list">&nbsp;
								    <input name="act" value="merge_order" type="hidden" />
								  <input type="submit" name="Submit"  class="bnt_number4" style="border:none;"  value="合并订单" /></td>
								</tr>
								<tr>
								  <td>&nbsp;</td>
								  <td colspan="4" align="left">订单合并是在发货前将相同状态的订单合并成一新的订单。<br />收货地址，送货方式等以主定单为准。</td>
								</tr>
							  </table>
							</form>
							</div>						   						  					
					
						  </div>
				</div>
			<div class="clear"></div>
	
					
		</div>
	
</div>

</div>
</div>
</div>



</body>
</html>
