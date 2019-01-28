<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
//System.out.println("command begin==========================>>>>");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
//System.out.println("common.jsp里面的session.path="+basePath);
%>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>十大男士手表品牌大全推荐_男式机械全自动手表专卖</title>
<meta name="Keywords" content="男士手表" />
<meta name="Description" content="世界十大名表价格VIP折扣促销中, 正品男士手表选购来淘表商城,支持全球联保.男士手表品牌排榜热卖手表推荐:江诗丹顿男表,劳力士男表,浪琴男表" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/slides-chanel.css" rel="stylesheet" type="text/css" />
<link href="css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/share.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/register.js"></script>
<script language="javascript">




	jQuery(function($){
		/*$("#h-warp1").hover(function(){
			$("#h-con1").show();	
		},function(){
			$("#h-con1").show();	
		});	*/
	});
	
	
</script>

<script type="text/javascript">
	var basePath = '<%=basePath %>';
</script>


</head>

<body>
<div id="container">
<!---顶部start---->
<div id="top">
  <div class="header">
  	 <div class="logo"><a href="${pageContext.request.contextPath}/index.jsp" title="淘表网全球顶级名表商城"><img src="images/logo.jpg" alt="淘表网全球顶级名表商城" /></a></div>
  
    <div class="topnav">
      <div class="nav1"><span >[<a href="${pageContext.request.contextPath}/login_register.jsp"> 登录 </a>| <a href="${pageContext.request.contextPath}/login_register.jsp" >注册 </a>]&nbsp;<a class="nav-cart" href="${pageContext.request.contextPath}/cart.jsp">我的购物车（<font color="#AB4419">0</font>）&nbsp;&nbsp;</a><a href="${pageContext.request.contextPath}/user/orderList.jsp">我的订单</a> </span>
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
        <div class="Search"><form action="/list" method="get" ><input name="keyword" type="text" id="keyword" value="输入商品关键字，比如"天梭"..." onmouseover="if(this.value=='输入商品关键字，比如'){this.value='';this.focus();}"  onmouseout="if(this.value=='')this.value='输入商品关键字，比如"天梭"...'" /><input name="btsearch" type="submit" id="btsearch" value="搜索" />
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
   </div>
   
    <!--主导航end-->
  </div>
  
  <div class="box980"><a rel="nofollow" href=""><img alt="欧米茄特价买一赠一" src="images/13194356022.jpg"></a></div>
</div>
<!--------顶部end ----->
<div class="box980">  
  <div id="login_box">
    <div id="login_left">
      <form name="formLoginsf" id="formLogins" action="<%=basePath%>login" method="post">
        <table width="420"  border="0" cellspacing="0" cellpadding="0">
          <tr valign="middle">
            <td height="120" colspan="2"><img src="images/login_re1.jpg" width="387" height="28" />
			
			</td>
          </tr>
          <tr>
            <td height="40" align="right">会员账号：</td>
            <td><div style="float:left">
                <input name="login_username" id="login_username" type="text" size="25" class="inputBg" />
              </div>
              <div style="float:left;" id="UserErrorCode">(请填写手机号作为登陆帐号)  &nbsp;</div></td>
          </tr>
          <tr>
            <td height="40" align="right">密码：</td>
            <td><div style="float:left">
                <input name="login_password" id="login_password" type="password" size="15"  class="inputBg"/>
              </div>
              <div style="float:left;" id="PassErrorCode"></div>
			 
			  </td>
          </tr>
                    <tr>
            <td ><label for="remember"></label></td>
            <td><input type="checkbox" value="1" name="remember" id="remember" />
              <label for="remember">请保存我这次的登录信息。</label>
			  <div id="errcode"></div>
			  <div id="err"></div>
			  </td>
          </tr>
          <tr>
            <td height="80">&nbsp;</td>
            <td><input type="hidden" name="act" value="act_login" />
              <input type="hidden" name="back_act" value="" />
              <input name="submit" type="" class="bnt_number2" id="login" value="登录" />
             
              <a href="user.php?act=qpassword_name">您忘记密码了吗？</a></td>
          </tr>
          
          </tr>
          
        </table>
      </form>
    </div>
    <div id="login_right">
      <form action="" method="post" name="formUser">
        <table width="448"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="120" colspan="2"><img src="images/reg_title.jpg" width="388" height="28" /></td>
          </tr>
          <tr>
            <td width="95" height="24" align="right" nowrap="nowrap">会员账号：</td>
            <td width="353" valign="middle" nowrap="nowrap"><input name="username" type="text" size="25" id="username" onblur="is_registered(this.value);" class="inputBg"/>
              <span id="username_notice" style="color:#FF0000"> </span> 
          </tr>
          <tr>
            <td width="95" align="right" nowrap="nowrap">&nbsp;</td>
            <td height="20">(请填写手机号作为登陆帐号)</td>
          </tr>
          <tr>
            <td width="95" height="30" align="right">登录密码：</td>
            <td><input name="password" type="password" id="password" onblur="check_password(this.value);" class="inputBg"  />
              <span style="color:#FF0000" id="password_notice"> </span></td>
          </tr>
          <tr>
            <td width="95" align="right">&nbsp;</td>
            <td height="20">&nbsp;</td>
          </tr>
          <tr>
            <td width="95" height="30" align="right">确认密码：</td>
            <td><input name="confirm_password" type="password" id="confirm_password" onblur="check_conform_password(this.value);"  class="inputBg" />
              <span style="color:#FF0000" id="conform_password_notice"> </span></td>
          </tr>
          <tr>
            <td width="95" align="right">&nbsp;</td>
            <td height="20">&nbsp;</td>
          </tr>
          <tr>
            <td width="95" height="39" align="right">电话号码：</td>
            <td><input name="phone" id="phone" type="text" size="30" class="inputBg" /></td>
          </tr>
                    <tr>
            <td width="95" height="40">&nbsp;</td>
            <td><label>
              <input name="agreement" type="checkbox" value="1" checked="checked" />
              我已看过并接受<a href="">《注册协议》</a></label></td>
          </tr>
          <tr>
            <td width="95" height="40">&nbsp;</td>
            <td><input name="act" type="hidden" value="act_register" >
              <input type="hidden" name="back_act" value="" />
             <input name="submit" id="login_register_submit" type="submit" class="bnt_number2" value="注册" /></td>
          </tr>
        </table>
       
      </form>
    </div>
    <div class="clear"></div>
  </div>
</div>

</body>
</html>
