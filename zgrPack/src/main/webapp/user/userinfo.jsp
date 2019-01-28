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
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/slides-chanel.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/share.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script language="javascript">
	function judge_oldpassword(value){
		$.post("userinfo!judgeOldPassword.do", { oldPassword: value },
			function(data){
			if(data==0){
				//密码错误
				$("#sp_old_password").html("密码错误!");
				$("#update_password_submit").attr({disabled:"disabled"});
			}else if(data==1){
				//密码正确
				$("#sp_old_password").html("密码正确!");
				$("#update_password_submit").removeAttr("disabled");
			}
		});
	}
	
	function judge_newpassword(value){
		var prepassword=/^[0-9a_\-zA0-Z]{2,8}$/;
		if(value!=null&&value!=""&&prepassword.test(value)){
			$("#sp_new_password").html("密码正确!");
			$("#update_password_submit").removeAttr("disabled");
		}else{
			$("#sp_new_password").html("密码格式不相符!");
			$("#update_password_submit").attr({disabled:"disabled"});
		}
	}
	
	function judge_confirmpassword(value){
		var newPassword = $("#new_password").val();
		if(value!=null&&value!=""&&newPassword==value){
			$("#sp_confirm_password").html("密码正确!");
			$("#update_password_submit").removeAttr("disabled");
		}else{
			$("#sp_confirm_password").html("密码不相符!");
			$("#update_password_submit").attr({disabled:"disabled"});
		}
	}
</script>
</head>

<body>
<c:if test="${sessionScope.loginUser==null}">
	<c:redirect url="../login_register.jsp"></c:redirect>
</c:if>
<div id="container">
<!---顶部start---->
<div id="top">
  <div class="header">
  	 <div class="logo"><a href="${pageContext.request.contextPath}/index.jsp" title="聚风尚全球顶级名表商城"><img src="${pageContext.request.contextPath}/images/logo.jpg" alt="聚风尚全球顶级名表商城" /></a></div>
    <div class="topnav">
      <div class="nav1"><span >
      <c:if test="${sessionScope.loginUser!=null}">
		     欢迎您，${sessionScope.loginUser.name} [ <a href="login_register!loginout.do"> 注销 </a>     
      </c:if>
      <c:if test="${sessionScope.loginUser==null}">
	     [ <a href="${pageContext.request.contextPath}/login_register.jsp"> 登录 </a>
      </c:if>
      |<a href="${pageContext.request.contextPath}/login_register.jsp"> 注册</a> ]&nbsp;<a class="nav-cart" href="cart.jsp">我的购物车（<font color="#AB4419">0</font>）&nbsp;&nbsp;</a><a href="orderList!toOrderListFromUser.do">我的订单</a> </span>
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
        <div class="nobg mN-h1"><a rel="nofollow" title="淘表奢侈品商城" href="../index.jsp">首页</a></div>
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
<div class="blank10"></div>
<div class="block">
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
          <li><a href="${pageContext.request.contextPath}/user/address.jsp"> 收货地址</a></li>
          <li><a href="#"> 我的收藏</a></li>
          <li><a href="#"> 我的留言</a></li>
          <li><a href="#"> 资金管理</a></li>
            </ul>
         </div>
	</div> 
  </div>
 <div class="EarRight fr">
   <div class="us_contentBox">
    <div class="CarTitle">
  <span class="fwhite f14b">个人资料</span></div>
     <form name="formEdit" action="userinfo!updatePersonalInfo.do?id=${sessionScope.loginUser.id}" method="post">      
			 <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd" id="userEdit">
               
                <tr>
                  <td width="28%" align="right" bgcolor="#FFFFFF">电子邮件地址： </td>
                  <td width="72%" align="left" bgcolor="#FFFFFF"><input name="email" type="text" value="${sessionScope.loginUser.email}" size="25" class="inputBg" /><span style="color:#FF0000"> *</span></td>
                </tr>
						<tr>
			<td width="28%" align="right" bgcolor="#FFFFFF" id="extend_field1i">MSN：</td>
			<td width="72%" align="left" bgcolor="#FFFFFF">
			<input name="msn" type="text" class="inputBg" value="${sessionScope.loginUser.MSM}"/><span style="color:#FF0000"> *</span>			</td>
		</tr>
								<tr>
			<td width="28%" align="right" bgcolor="#FFFFFF" id="extend_field2i">QQ：</td>
			<td width="72%" align="left" bgcolor="#FFFFFF">
			<input name="qq" type="text" class="inputBg" value="${sessionScope.loginUser.qq}"/><span style="color:#FF0000"> *</span>			</td>
		</tr>
								<tr>
			<td width="28%" align="right" bgcolor="#FFFFFF" id="extend_field3i">办公电话：</td>
			<td width="72%" align="left" bgcolor="#FFFFFF">
			<input name="office_phone" type="text" class="inputBg" value="${sessionScope.loginUser.offocePhone}"/><span style="color:#FF0000"> *</span>			</td>
		</tr>
								<tr>
			<td width="28%" align="right" bgcolor="#FFFFFF" id="extend_field4i">家庭电话：</td>
			<td width="72%" align="left" bgcolor="#FFFFFF">
			<input name="home_phone" type="text" class="inputBg" value="${sessionScope.loginUser.homePhone}"/><span style="color:#FF0000"> *</span>			</td>
		</tr>
								<tr>
			<td width="28%" align="right" bgcolor="#FFFFFF" id="extend_field5i">手机：</td>
			<td width="72%" align="left" bgcolor="#FFFFFF">
			<input name="cellphone" type="text" class="inputBg" value="${sessionScope.loginUser.cellPhone}"/><span style="color:#FF0000"> *</span>			</td>
		</tr>
								<tr>
		  <td width="28%" align="right" bgcolor="#FFFFFF">密码提示问题：</td>
		  <td width="72%" align="left" bgcolor="#FFFFFF">
		  <select name='password_tip'>
		  <option value='0'>请选择密码提示问题</option>
		  <option value="password_tip">我最好朋友的生日？</option><option value="old_address" selected>我儿时居住地的地址？</option><option value="motto">我的座右铭是？</option><option value="favorite_movie">我最喜爱的电影？</option><option value="favorite_song">我最喜爱的歌曲？</option><option value="favorite_food">我最喜爱的食物？</option><option value="interest">我最大的爱好？</option><option value="favorite_novel">我最喜欢的小说？</option><option value="favorite_equipe">我最喜欢的运动队？</option>		  </select>
		  </td>
		</tr>
		<tr>
		  <td width="28%" align="right" bgcolor="#FFFFFF" id="passwd_quesetion">密码问题答案：</td>
		  <td width="72%" align="left" bgcolor="#FFFFFF">
		  <input name="password_answer" type="text" size="25" class="inputBg" maxlengt='20' value="${sessionScope.loginUser.passwordAnswer}"/><span style="color:#FF0000"> *</span>		  </td>
		</tr>
				                <tr>
                  <td colspan="2" align="center" bgcolor="#FFFFFF"><input name="act" type="hidden" value="act_edit_profile" />
                    <input name="submit" type="submit" value="确认修改" class="bnt_number4" style="border:none;" />
                  </td>
                </tr>
       </table>
    </form>
     <form name="formPassword" action="userinfo!updateUserPassword.do?id=${sessionScope.loginUser.id}" method="post">
     <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd" id="passwordEdit">
        <tr>
          <td width="28%" align="right" bgcolor="#FFFFFF">原密码：</td>
          <td width="76%" align="left" bgcolor="#FFFFFF"><input id="old_password" name="old_password" type="password" size="25"  class="InputBorder" onblur="judge_oldpassword(this.value)"/>&nbsp;<span id="sp_old_password" style="color: red">*</span></td>
        </tr>
        <tr>
          <td width="28%" align="right" bgcolor="#FFFFFF">新密码：</td>
          <td align="left" bgcolor="#FFFFFF"><input id="new_password" name="new_password" type="password" size="25"  class="InputBorder" onblur="judge_newpassword(this.value)"/>&nbsp;<span id="sp_new_password" style="color: red">请输入二到八位的字母或数字</span></td>
        </tr>
        <tr>
          <td width="28%" align="right" bgcolor="#FFFFFF">确认密码：</td>
          <td align="left" bgcolor="#FFFFFF"><input id="comfirm_password" name="comfirm_password" type="password" size="25"  class="InputBorder" onblur="judge_confirmpassword(this.value)"/>&nbsp;<span id="sp_confirm_password" style="color: red">*</span></td>
        </tr>
        <tr>
          <td colspan="2" align="center" bgcolor="#FFFFFF"><input name="act" type="hidden" value="act_edit_password" />
            <input id="update_password_submit" name="submit" type="submit" class="bnt_number4" value="确认修改" />
          </td>
        </tr>
      </table>
    </form>
  </div>
 </div>
</div>

</div>

</body>
</html>
