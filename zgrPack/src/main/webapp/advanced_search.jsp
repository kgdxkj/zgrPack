<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户中心-淘表网</title>
<meta name="Keywords" content="男士手表" />
<meta name="Description" content="世界十大名表价格VIP折扣促销中, 正品男士手表选购来淘表商城,支持全球联保.男士手表品牌排榜热卖手表推荐:江诗丹顿男表,劳力士男表,浪琴男表" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/slides-chanel.css" rel="stylesheet" type="text/css" />
<link href="css/user/user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/share.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>

</head>

<body>
<div id="container">
<!---顶部start---->
<div id="top">
  <div class="header">
  	 <div class="logo"><a href="index.html" title="淘宝网全球顶级名表商城"><img src="images/logo.jpg" alt="淘宝网全球顶级名表商城" /></a></div>
    <div class="topnav">
      <div class="nav1"><span >[<a href="login_register.html"> 登录</a> | <a href="login_register.html" >注册 </a>]&nbsp;<a class="nav-cart" href="${pageContext.request.contextPath}/cart.jsp">我的购物车（<font color="#AB4419">0</font>）</a>&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/user/orderList.jsp">我的订单</a> </span>
	  <div class="orderBox hab" id="h-warp1" onmouseover="showFq(1,1)" onmouseout="hiddenFq(1,1)">
	  <p><a href="user/index.html" rel="nofollow">我的淘表</a></p>
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
        <div class="nobg mN-h1"><a rel="nofollow" title="淘表奢侈品商城" href="index.html">首页</a></div>
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
<!--------顶部end ----->
<!--用户中心begin-->

 
<div style="text-align:left">
 <div>
当前位置: <a href=".">首页</a> <code>&gt;</code> 高级搜索</div>   <div class="goodsTitle">
  </div>
   <div class="attrcontent">
    <form action="search.php" method="get" name="advancedSearchForm" id="advancedSearchForm">
       <table width="99%" border="0" align="center" cellpadding="0" cellspacing="8">
        <tr>
         <td width="22%" align="right" valign="top">关键字：</td>
         <td width="78%">
          <input name="keywords" id="keywords" type="text" size="40" maxlength="120" class="InputBorder" value="" />
          <label for="sc_ds"><input type="checkbox" name="sc_ds" value="1" id="sc_ds"  />搜索简介</label>
          <br />匹配多个关键字全部，可用 "空格" 或 "AND" 连接。如 win32 AND unix<br />匹配多个关键字其中部分，可用"+"或 "OR" 连接。如 win32 OR unix         </td>
        </tr>
        <tr>
         <td align="right">分类：</td>
         <td><select name="category" id="select" class="InputBorder">
           <option value="0">所有分类</option><option value="2" >石英表</option><option value="1" >机械表</option></select>
         </td>
        </tr>
        <tr>
         <td align="right">品牌：</td>
         <td><select name="brand" id="brand" class="InputBorder">
           <option value="0">所有品牌</option>
           <option value="1">天梭手表</option>
           <option value="2">劳力士手表</option>          
            </select>
         </td>
        </tr>
        <tr>
         <td align="right">款式：</td>
         <td><select name="brand" id="brand" class="InputBorder">
           <option value="0">所有款式</option>
           <option value="1">男表</option>
           <option value="2">女表</option> 
           <option value="3">中性表</option>           
            </select>
         </td>
        </tr>
        <tr>
         <td align="right">价格：</td>
         <td><input name="min_price" type="text" id="min_price" class="InputBorder" value="" size="10" maxlength="8" />
          -
          <input name="max_price" type="text" id="max_price" class="InputBorder" value="" size="10" maxlength="8" />
         </td>
        </tr>
          
        <tr>
         <td colspan="4" align="center"><input type="hidden" name="action" value="form" />
          <input type="submit" name="Submit" value="立即搜索" class="bnt_number4" /></td>
        </tr>
      </table>
      </form>
   </div>
  
  
  </div>
</div>

</div>

</body>
</html>
