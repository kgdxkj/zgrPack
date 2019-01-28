<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<script language="javascript">
	jQuery(function($){
		/*$("#h-warp1").hover(function(){
			$("#h-con1").show();	
		},function(){
			$("#h-con1").show();	
		});	*/
	});
	
	function is_registered(value){
		$.post("login_register!isRegistered.do", { userName: value },
			function(data){
			if(data==0){
				//用户名已存在
				$("#username_notice").html("该用户名已存在!");
				$("#login_register_submit").attr({disabled:"disabled"});
			}else if(data==1){
				//用户名可用
				$("#login_register_submit").removeAttr("disabled");
			}
		});
	}
</script>
</head>

<body>
<div id="container">
<!---顶部start---->
<div id="top">
  <div class="header">
    <div class="topnav">
      <div class="nav1"><span ><a href="login_register.html">[ 登录 | 注册 ]</a>&nbsp;<a class="nav-cart" href="">我的购物车（<font color="#AB4419">0</font>）</a>&nbsp;&nbsp;<a href="">我的订单</a> </span>
	  <div class="orderBox hab" id="h-warp1" onmouseover="showFq(1,1)" onmouseout="hiddenFq(1,1)">
	  <p><a href="user/index.html" rel="nofollow">我的淘表</a></p>
		<ul id="h-con1" style="display:none;">
		<li><a href="" rel="nofollow">我的订单</a></li>
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
        <div class="Search"><form action="/list" method="get"><input name="keyword" type="text" id="keyword" value="输入商品关键字，比如"天梭"..." onmouseover="if(this.value=='输入商品关键字，比如...'){this.value='';this.focus();}"  onmouseout="if(this.value=='')this.value='输入商品关键字，比如"天梭"...'" /><input name="btsearch" type="submit" id="btsearch" value="搜索" />
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
        <div class="mN-h1 h1bg allpptit"><a rel="nofollow" title="瑞士手表牌" href="">所有品牌</a></div>
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
<div class="box980">
  
    
  <script language="javascript">
	/* $("document").ready(function(){
		$("#formLogins").submit(function(){
			//$(this).ajaxSubmit();
			var user=$("#username").val().trim();
			var pass=$("#password").val().trim();
			var isUser=true;
			var isPass=true;
			if(user.length<=0)
			{
				$("#UserErrorCode").html("<font color=red>用户名不能为空</font>");
				isUser=false;
			}else
			{
				$("#UserErrorCode").html(" ");
			}
			
			if(pass.length<=0)
			{
				$("#PassErrorCode").html("<font color=red>密码不能为空</font>");
				isPass=false;
			}else{
				$("#PassErrorCode").html("");
			}
			
			if(isUser && isPass)
			{
				var result=false;
				$.post(
					"t.php",
					{"username":user,"password":pass},
					function(data){
						var ctrl=false;
						if(data==1)
						{
							document.getElementById("formLogins").submit();
							ctrl=true;
						}
						else
						{
							$("#err").html("<font color=red>请检查密码或用户名是否正确</font>");
							ctrl=false;
						}
					return ctrl;
					},
					"json"
				);
				return false;
			}else return false;
		});
	}); */
 </script>
  <div id="login_box">
   
    <div id="login_left">
      <form action="login_register!register.do" method="post" name="formUser">
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
            <td height="20">(E-Mail或手机)</td>
          </tr>
          <tr>
            <td width="95" height="30" align="right">登录密码：</td>
            <td><input name="password" type="password" id="password" onblur="check_password(this.value);" onkeyup="checkIntensity(this.value)" class="inputBg"  />
              <span style="color:#FF0000" id="password_notice"> </span></td>
          </tr>
          <tr>
            <td width="95" align="right">&nbsp;</td>
            <td height="20">&nbsp;</td>
          </tr>
          <tr>
            <td width="95" height="30" align="right">确认密码：</td>
            <td><input name="confirm_password" type="password" id="conform_password" onblur="check_conform_password(this.value);"  class="inputBg" />
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
             <a href=""><img src="images/bnt_ur_reg.gif" /></a></td>
          </tr>
        </table>
        <script type="text/javascript">
var process_request = "正在处理您的请求...";
var username_empty = "* 用户名不能为空。";
var username_shorter = "* 用户名长度不能少于 3 个字符。";
var username_invalid = "* 用户名只能是由字母数字以及下划线组成。";
var password_empty = "* 登录密码不能为空。";
var password_shorter = "* 登录密码少于6个字符。";
var confirm_password_invalid = "* 两次输入密码不一致";
var email_empty = "* Email 为空";
var email_invalid = "* Email 不是合法的地址";
var agreement = "* 您没有接受协议";
var msg_un_blank = "* 用户名不能为空";
var msg_un_length = "* 用户名最长不得超过7个汉字";
var msg_un_format = "* 用户名含有非法字符";
var msg_un_registered = "* 用户名已经存在,请重新输入";
var msg_can_rg = "<img src='/themes/j2010/images/img-1.gif' align='absmiddle'>";
var msg_email_blank = "* 邮件地址不能为空";
var msg_email_registered = "* 邮箱已存在,请重新输入";
var msg_email_format = "* 邮件地址不合法";
var msg_blank = "* 不能为空";
var no_select_question = "* 您没有完成密码提示问题的操作";
var passwd_balnk = "* 密码中不能包含空格";
var username_exist = "* 用户名 %s 已经存在";
</script>
      </form>
    </div>
    <div class="clear"></div>
  </div>   
</div>
</div>
</body>
</html>
