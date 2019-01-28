<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.2" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="天梭力洛克系列" />
<meta name="Description" content="该款腕表的表盘上用复古的手写斜体字刻画了小镇力洛克的法文名字"Le Locle"，细节之处无不向佩戴者昭示的天梭历史底蕴。该系列对表适合各年龄层，款式易于搭配" />

<title>${requestScope.detailProduct.productName}</title>

<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="${pageContext.request.contextPath}/css/jqzoom.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<link rel="alternate" type="application/rss+xml" title="RSS|天梭力洛克系列价格| 天梭手表力洛克男表| 天梭T41.1.483.33" href="" />

<link href="${pageContext.request.contextPath}/css/goods.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
var goods_id =330; //330var goodsattr_style = 1;


var day = "天";
var hour = "小时";
var minute = "分钟";
var second = "秒";
var end = "结束";
var goodsId =330// 330;

var gmt_end_time = 1321891199;

var now_time = 1320268460;

onload = function(){
  //changePrice(p);
  fixpng();
  try {onload_leftTime();}
  catch (e) {}
}
/**
 * 点选可选属性或改变数量时修改商品价格的函数
 */
function changePrice(p)
{
  var attr = getSelectedAttributes(document.forms['ECS_FORMBUY']);
 // alert(attr);
  var qty = document.forms['ECS_FORMBUY'].elements['number'].value;
	//var grp=document.getElementsByName("changePriceGrp");
	var grp=$('[name=changePriceGrp]');
	var i=0;
	//alert("="+p.id);
	for(;i<grp.length;i++)
		{
			//alert(grp[i].id);
			if(grp[i].id!=p.id)
			{
				//去掉色块颜色
				var temp=document.getElementById(grp[i].id);
				temp.className=''; //unColorGrp
			}else{
				//匹配到自己
				//alert(typeof(attr.checked));
				p.className='colorGrp';
				//p.checked=true;
			}
		}
		var v=document.getElementById("spec_value_"+p.id);
		attr=p.id;
		v.checked=true;
//	
	//v.checked.checked=true;
	//alert(v.checked+"attr");
	
	//alert(p.id);
  Ajax.call('/goods.php', 'act=price&id=' + 330 + '&attr=' + attr + '&number=' + qty, 

changePriceResponse, 'GET', 'JSON');
}

/**
 * 接收返回的信息
 */
function changePriceResponse(res)
{
  if (res.err_msg.length > 0)
  {
    alert(res.err_msg);
  }
  else
  {
    document.forms['ECS_FORMBUY'].elements['number'].value = res.qty;

    if (document.getElementById('ECS_GOODS_AMOUNT'))
      document.getElementById('ECS_GOODS_AMOUNT').innerHTML = res.result;
	  
	if (document.getElementById('ECS_SHOPPRICE5'))
      document.getElementById('ECS_SHOPPRICE5').innerHTML = res.shop_price;
	
	if (document.getElementById('ecs_months_price'))
      document.getElementById('ecs_months_price').innerHTML = res.months_price;
  }
}
//gotoRecordPage(1,330);



</script>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-15227457-2']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
<script type="text/javascript">
  function toCartSubmit(){
	  
	  document.forms[1].submit();
  }
</script>
</head>
<body >
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
      |<a href="${pageContext.request.contextPath}/login_register.jsp"> 注册</a> ]&nbsp;<a class="nav-cart" href="cart.jsp">我的购物车（<font color="#AB4419">0</font>）&nbsp;&nbsp;</a><a href="orderList!toOrderListFromProduct.do">我的订单</a> </span>
	  <div class="orderBox hab" id="h-warp1" onmouseover="showFq(1,1)" onmouseout="hiddenFq(1,1)">
	  <p><a href="user/index.jsp" rel="nofollow">我的淘表</a></p>
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
        <div class="Search"><form action="/list" method=get ><input name="keyword" type="text" id="keyword" value="输入商品关键字，比如"天梭"..." onmouseover="if(this.value=='输入商品关键字，比如"天梭"...'){this.value='';this.focus();}"  onmouseout="if(this.value=='')this.value='输入商品关键字，比如"天梭"...'" /><input name="btsearch" type="submit" id="btsearch" value="搜索" /><a href="" style="margin-left:2px">高级搜索</a>
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
   <div class="box980" style="height:57px; border:#E0E0E0 solid 1px;">
     <a href="#"><img src="${pageContext.request.contextPath}/images/brandlogo/wangguo.jpg" alt="万国" width="88" height="38" border="0" /><img src="${pageContext.request.contextPath}/images/brandlogo/patek_philippe.jpg" alt="百达翡丽" width="88" height="48" border="0"></a><img src="${pageContext.request.contextPath}/images/brandlogo/topbrand/line.gif" width="1" height="57"><a href="#"><img src="${pageContext.request.contextPath}/images/brandlogo/rolex.jpg" alt="劳力士" width="88" height="48" border="0"></a><img src="${pageContext.request.contextPath}/images/brandlogo/topbrand/line.gif" width="1" height="57"><a href="#"><img src="${pageContext.request.contextPath}/images/brandlogo/omega.jpg" alt="欧米茄" width="88" height="48" border="0"></a><img src="${pageContext.request.contextPath}/images/brandlogo/topbrand/line.gif" width="1" height="57"><a href="#"><img src="${pageContext.request.contextPath}/images/brandlogo/longines.jpg" alt="浪琴" width="88" height="48" border="0"></a><img src="${pageContext.request.contextPath}/images/brandlogo/topbrand/line.gif" width="1" height="57"><a href="#"><img src="${pageContext.request.contextPath}/images/brandlogo/tissot.jpg" alt="天梭" width="88" height="48" border="0"></a><img src="${pageContext.request.contextPath}/images/brandlogo/topbrand/line.gif" width="1" height="57"><img src="${pageContext.request.contextPath}/images/brandlogo/topbrand/line.gif" width="1" height="57"><a href="#"><img src="${pageContext.request.contextPath}/images/brandlogo/tudor.jpg" alt="帝舵" width="88" height="48" border="0"></a><img src="${pageContext.request.contextPath}/images/brandlogo/topbrand/line.gif" width="1" height="57"><a href="#"><img src="${pageContext.request.contextPath}/images/brandlogo/cartier.jpg" alt="卡地亚" width="88" height="48" border="0"></a><img src="${pageContext.request.contextPath}/images/brandlogo/topbrand/line.gif" width="1" height="57"><a href="#"><img src="${pageContext.request.contextPath}/images/brandlogo/bylacher.jpg" alt="朗坤" width="80" height="48" border="0"></a><img src="${pageContext.request.contextPath}/images/brandlogo/topbrand/line.gif" width="1" height="57"><a href="#"><img src="${pageContext.request.contextPath}/images/brandlogo/titoni.jpg" alt="梅花" width="88" height="48" border="0"></a><a href="#"><img alt="淘表网品牌馆" src="${pageContext.request.contextPath}/images/brandlogo/brand_name.gif" width="27" height="57"></a> </div>
<!--<div class="box980"><a rel="nofollow" href="http://www.jufengshang.com/guanggunjie" ><img alt="发微博送优惠券" src="images/13202148982.jpg" border="0" /></a></div>
--><script type="text/javascript">
//
$(function() {
    var options = {
	    zoomWidth: 270,
	    zoomHeight: 270,
            xOffset:30,			
            yOffset: 0,
            title:false,
            position: "right" //and MORE OPTIONS
};
	$(".Act_images").jqzoom(options);
});



</script>
<div class="Location">当前位置:<a href="${pageContext.request.contextPath}/index.jsp">淘表网首页</a> <code>&gt;</code> <a rel=nofollow href="/category-c17-b0.html">世界名表</a> <code>&gt;</code> <a href="/Tissot-c25-b0.html">天梭</a> <code>&gt;&nbsp;</code><h1>${requestScope.detailProduct.productName}</h1></div>

 <div class="box980">  
      <div class="box780" style="float:left;">
      <form action="product_detail!addProductToCart.do?productId=${requestScope.detailProduct.id}" method="post">
       
        
        <div id="goodsInfo" class="clearfix" >
          
          <div class="imgInfo">
            <div class="Pimages">
             			 			  <div class="isSlumpClass">870</div>
			              
             <div class="spouter">
             	              	<i class="isHotClass"></i>
                                                              </div>
             
                            <a  href="http://www.jufengshang.com/images/201101/source_img/330_G_1294794092283.jpg" onclick="window.open('/gallery.php?id=330'); return false;" class="Act_images2" 
	 ><img src="${requestScope.detailProduct.pic}" alt="${requestScope.detailProduct.productName}" name="orig" width="360" height="360" border="0" id="orig" title="${requestScope.detailProduct.productName}"/></a>
                            <!--              <div class="isHotClass"></div>
              --> </div>
            <div class="blank5"></div>
            
             <div class="clearfix">
      <span onmouseover="moveLeft()" onmousedown="clickLeft()" onmouseup="moveLeft()" onmouseout="scrollStop()"></span>
      <div class="gallery">
        <div id="demo">
          <div id="demo1" style="float:left">
            <ul>
                         <li onmouseover="change_pic('http://www.jufengshang.com/images/201007/goods_img/330_P_1324533413.jpg')"><img src="${pageContext.request.contextPath}/images/goods_img/330_thumb_P_1347543807.jpg" alt="${requestScope.detailProduct.productName}" class="B_blue" />
        </li>
                        <li onmouseover="change_pic('http://www.jufengshang.com/images/201101/goods_img/330_P_1294794092800.jpg')"><img src="${pageContext.request.contextPath}/images/goods_img/330_thumb_P_1294794092831.jpg" alt="${requestScope.detailProduct.productName}" class="B_blue" />
        </li>
                        <li onmouseover="change_pic('http://www.jufengshang.com/images/201110/goods_img/330_P_1318447102300.jpg')"><img src="${pageContext.request.contextPath}/images/goods_img/330_thumb_P_1318447102431.jpg" alt="${requestScope.detailProduct.productName}" class="B_blue" />
        </li>
                        <li onmouseover="change_pic('http://www.jufengshang.com/images/201110/goods_img/330_P_1318447102641.jpg')"><img src="${pageContext.request.contextPath}/images/goods_img/330_thumb_P_1318447102922.jpg" alt="${requestScope.detailProduct.productName}" class="B_blue" />
        </li>
                        <li onmouseover="change_pic('http://www.jufengshang.com/images/201110/goods_img/330_P_1318447102120.jpg')"><img src="${pageContext.request.contextPath}/images/goods_img/330_thumb_P_1318447102206.jpg" alt="${requestScope.detailProduct.productName}" class="B_blue" />
        </li>
                        </ul>
          </div>
          <div id="demo2" style="display:inline; overflow:visible;"></div>
        </div>
      </div>
      <span onmouseover="moveRight()" onmousedown="clickRight()" onmouseup="moveRight()" onmouseout="scrollStop()" class="spanR"></span>
      <script>
      function $gg(id){  
       return (document.getElementById) ? document.getElementById(id): document.all[id]
      }
	  
	    function change_pic(url)
		{
		   //alert(url);
		   $("#orig").attr("src",url);
		   $(".Act_images").attr("href",url);
		}
      
      var boxwidth=53;//跟图片的实际尺寸相符
      /*
      var box=$gg("demo");
      var obox=$gg("demo1");
      var dulbox=$gg("demo2");
		*/
	  var box=$gg("demo");
      var obox=$gg("demo1");
      var dulbox=$gg("demo2");

      //obox.style.width=obox.getElementsByTagName("li").length*boxwidth+'px';
      //dulbox.style.width=obox.getElementsByTagName("li").length*boxwidth+'px';
      //box.style.width=obox.getElementsByTagName("li").length*boxwidth*3+'px';
      var canroll = false;
      if (obox.getElementsByTagName("li").length >= 4) {
        canroll = true;
        dulbox.innerHTML=obox.innerHTML;
      }
      var step=5;temp=1;speed=50;
      var awidth=obox.offsetWidth;
      var mData=0;
      var isStop = 1;
      var dir = 1;
      
      function s(){
        if (!canroll) return;
        if (dir) {
      if((awidth+mData)>=0)
      {
      mData=mData-step;
      }
      else
      {
      mData=-step;
      }
      } else {
        if(mData>=0)
        {
        mData=-awidth;
        }
        else
        {
        mData+=step;
        }
      }
      
      obox.style.marginLeft=mData+"px";
      
      if (isStop) return;
      
      setTimeout(s,speed)
      }
      
      
      function moveLeft() {
          var wasStop = isStop;
          dir = 1;
          speed = 50;
          isStop=0;
          if (wasStop) {
            setTimeout(s,speed);
          }
      }
      
      function moveRight() {
          var wasStop = isStop;
          dir = 0;
          speed = 50;
          isStop=0;
          if (wasStop) {
            setTimeout(s,speed);
          }
      }
      
      function scrollStop() {
        isStop=1;
      }
      
      function clickLeft() {
          var wasStop = isStop;
          dir = 1;
          speed = 25;
          isStop=0;
          if (wasStop) {
            setTimeout(s,speed);
          }
      }
      
      function clickRight() {
          var wasStop = isStop;
          dir = 0;
          speed = 25;
          isStop=0;
          if (wasStop) {
            setTimeout(s,speed);
          }
      }
      </script> 
     </div>
		              
            <div class="blank5"></div>
              </div>
          
          <div class="textInfo">
            <form action="javascript:addToCart(330)" method="post" name="ECS_FORMBUY" id="ECS_FORMBUY" >
              <h1 class="Ptitle">${requestScope.detailProduct.productName}</h1>
              <div class="Ftitle"> ${requestScope.detailProduct.remark}</div>
              <ul>
                                <li class="first_column">
                                    商品编号: <font class="no">330</font>
                                  </li>
                <li class="All_price"><!-- <span class="box980" style="height:57px; border:#E0E0E0 solid 1px;"><a href="#"><img src="images/brandlogo/tissot.jpg" alt="${requestScope.detailProduct.brand}" width="88" height="48" border="0" /></a></span> -->
                                    专&nbsp;柜&nbsp;价:<font class="market_s">￥${requestScope.detailProduct.price}</font> </li>
                				               
                
                <script>
		   jQuery(function(){
					  clock_out('tuan_day','tuan_hour','tuan_min','tuan_second')
					  })
		   </script>
           
                <li class="theword"><div class="buyrpice"><font class="shop_s">￥${requestScope.detailProduct.specialPrice}</font></div> <div class="tuanTime">还剩: <font id="tuan_day">18</font>天<font id="tuan_hour">10</font>小时<font id="tuan_min">45</font>分<font id="tuan_second">39</font>秒</div>
				<div class="clear"></div></li>                      
			
                                
                                <li class="All_price  lines">聚&nbsp;风&nbsp;尚:<font  class="shop_s" style="font-size:18px; ">￥${requestScope.detailProduct.price}</font></li>
                                              <li class="All_price">分期付款:<font id="ecs_months_price" class="Car_s">￥304元×12期</font></li>
                				
                <li class="All_price">节&nbsp;&nbsp;省:<font id="ecs_months_price" class="Car_s">￥870</font> </li>
				<br />
			      							                <li class="theword" >  <p>1.以品牌诞生地的16世纪教堂上钟楼的盘面为原型&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>2.诠释着永恒简朴的典雅之美，经典尊贵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>3.适合各年龄层，款式易于搭配</p>			     </li>                  
                  
                                  
                				</ul>
			<ul class="action">
                
                			    
<li class="loop"><strong>性别:</strong>
                    
                                        					                                        <label for="spec_value_3878" >
					<div style="display:none">
                    <input type="radio" name="spec_231" value="3878" id="spec_value_3878" checked="checked" />
					</div>
					<span class="colorGrp" onclick="changePrice(this)" name="changePriceGrp" id="3878" style="cursor:pointer">男表</span>
					                    </label>
                                        <input type="hidden" name="spec_list" value="0" />
                                                          </li>
				 
				
                    <li class="SecNum"> 购买数量：
                    <select name="number" id="number" style="border:1px solid #ccc; ">
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                      <option value="6">6</option>
                      <option value="7">7</option>
                      <option value="8">8</option>
                    </select>
                    <!-- 
        <input name="number" type="text" id="number" value="1" size="4" onblur="changePrice()" style="border:1px solid #ccc; "/>
      -->
                  </li>
                  
                  <li class="SecNum" style="padding-bottom:5px;"> 
                                      <a style="float:left; " href="javascript:toCartSubmit();">
                    <img src="images/buybt1.jpg" alt="购买" width="126" height="38"  border="0" />
  </a>  </li>
                    <!-- <img src="/images/goodimg/idcart.jpg" style="margin-left:10px; margin-bottom:5px;" /><img src="/themes/j2010/images/bnt_colles.gif" alt="收藏" width="127" height="35" border="0" style="margin-left:10px; "  /></a>
	  --> </ul>
			   
			  <div class="share"><table width="100%" border="0" cellspacing="0" cellpadding="00">
  <tr>
    <td width="120" height="30"><a rel="nofollow" href="javascript:;" onclick="addfavorite(0);" ><strong><img src="${pageContext.request.contextPath}/images/adv.jpg" /></strong></a> </td>
    <td><div id="ckepop"> <a style="float:left; font:12px;white-space: nowrap;"><font color="#666666">分享到</font>:</a> <a rel="nofollow" class="jiathis_button_tsina"></a> <a rel="nofollow" class="jiathis_button_tqq"></a> <a rel="nofollow" class="jiathis_button_renren"></a> <a rel="nofollow" class="jiathis_button_kaixin001"></a> <a rel="nofollow" class="jiathis_button_douban"></a> <a rel="nofollow" class="jiathis_button_msn"></a> <a rel="nofollow" class="jiathis_button_qzone"></a> </div>
                    <script type="text/javascript" src="http://v1.jiathis.com/code/jia.js?uid=89423" charset="utf-8"></script></td>
  </tr>
</table></div>
            </form>  
          </div>
        </div>
        <div class="clear"></div>
              
        
				          <SCRIPT type=text/javascript>
function selectTag(showContent,n){
 // 操作标签
var tag = document.getElementById("tags").getElementsByTagName("span");
 
 if(n==1)
{
tag[0].className="h2bg";
tag[1].className="";
tag[2].className="";
tag[3].className="";
tag[4].className="";
} 
 if(n==2)
{
tag[0].className="";
tag[1].className="h2bg";
tag[2].className="";
tag[3].className="";
tag[4].className="";
} 
 if(n==3)
{
tag[0].className="";
tag[1].className="";
tag[2].className="h2bg";
tag[3].className="";
tag[4].className="";
} 
 if(n==4)
{
tag[0].className="";
tag[1].className="";
tag[2].className="";
tag[3].className="h2bg";
tag[4].className="";
} 
 if(n==5)
{
tag[0].className="";
tag[1].className="";
tag[2].className="";
tag[3].className="";
tag[4].className="h2bg";
} 


 // 操作内容
 for(i=0; j=document.getElementById("tagContent"+i); i++){
  j.style.display = "none";
 }
 document.getElementById(showContent).style.display = "block";
}
</SCRIPT>
		
        <div class="box">
          <div style="padding-top:10px;"></div>
          <div class="detail">
                   <h3 id="tags">              
                <span style="cursor:pointer;"  onclick="selectTag('tagContent0',1)" class="h2bg">商品描述</span>
                <span style="cursor:pointer;"  onclick="selectTag('tagContent1',2)" >支付配送</span>
                <span style="cursor:pointer;"  onclick="selectTag('tagContent2',3)">售后服务</span>
                <span style="cursor:pointer;"  onclick="selectTag('tagContent3',4)">正品保障</span> 
				<span style="cursor:pointer;"  onclick="selectTag('tagContent4',5)">品牌故事</span>                
            </h3>
            <div id="com_v" ></div>
            <div id="com_h">
              <blockquote id="tagContent0">
                <div class="details">
                  <div class="detailline">
                    <ul>
                      <li >	
                                                品牌：<a href="/Tissot" >${requestScope.detailProduct.brand}</a>
                                                                                          <li > 机芯：<a href="/list--path-Tissot-cid-25-attr-3880">${requestScope.detailProduct.mechanism}</a></li>
                                                                                          <li > 表形：${requestScope.detailProduct.model} </li>
                                                                                          <li > 表带：${requestScope.detailProduct.watchband} </li>
                                                                                          <li > 表盘：${requestScope.detailProduct.dial} </li>
                                                                                          <li > 系列：<a href="/list--path-Tissot-cid-25-attr-36563">${requestScope.detailProduct.series}</a></li>
                                                                                      </ul>
                    <div class="clear"></div>
                  </div>
                </div>
                <div class="clear"></div>
                <div style="overflow: hidden; height: auto">
<div style="border-right: rgb(229,229,229) 1px solid; padding-right: 7px; border-top: rgb(229,229,229) 1px solid; margin-top: 10px; padding-left: 7px; margin-bottom: 10px; padding-bottom: 15px; border-left: rgb(229,229,229) 1px solid; padding-top: 0px; border-bottom: rgb(229,229,229) 1px solid">
<h3 style="background: none transparent scroll repeat 0% 0%; border-bottom: gray 1px solid">天梭</h3>
<br />
非凡创意&bull;源于传统<br />
1853年，天梭表诞生在力洛克。天梭凭借150余年的传统瑞士制表工艺和不断创新的设计精神，以丰富的创意、卓越的品质及巧夺天工的制表技术闻名于世，并且销量在全球名列前茅，是瑞士制表业中的佼佼者。<br />
从一个位于侏罗小镇，到现在行销到全球五大洲150个国家，并且成为代表瑞士产品的质量和精确度的品牌。天梭表本身就是一个传奇，它向世界述说这个品牌不断成长，不断推出新设计、新的工艺成就，让表迷永远充满惊喜。<br />
<h3 style="background: none transparent scroll repeat 0% 0%; border-bottom: gray 1px solid">力洛克系列</h3>
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2003年，天梭为庆祝其品牌诞生150周年，推出了最具天梭风格的腕表 - 力洛克自动系列。它的命名源自天梭的诞生地 - 瑞士小镇力洛克。该系列是天梭唯一使用其诞生地作为系列名的腕表，也是献给天梭诞生150周年最具纪念意义的礼物。简洁经典的制表工艺充分呈现天梭表的品牌精神，优雅外型、稳健的内涵象征着其品牌的源起与创新。Le Locle力洛克系列是天梭表最畅销的表款之一，自上市以来一直受到消费大众的热爱，从2006年底开始常有全球供不应求的情形发生。</div>
<div style="overflow: hidden; height: auto">
<div style="border-right: rgb(229,229,229) 1px solid; padding-right: 7px; border-top: rgb(229,229,229) 1px solid; margin-top: 10px; padding-left: 7px; margin-bottom: 10px; padding-bottom: 15px; border-left: rgb(229,229,229) 1px solid; padding-top: 0px; border-bottom: rgb(229,229,229) 1px solid">
<div align="center">
<div style="margin-bottom: 10px; border-bottom: rgb(229,229,229) 1px solid; text-align: left"><img src="http://images.jufengshang.com/2011/01/03/baobaog_AKeuap5e_ngoMq.jpg"  /></div>
</div>
<div style="margin: 10px">
<table width="100%" cellspacing="0" cellpadding="0">
    <tbody>
        <tr>
            <td colspan="2">
            <h3 style="background: none transparent scroll repeat 0% 0%; border-bottom: gray 1px solid">力洛克系列系列的命名源自天梭的诞生地 - 瑞士小镇力洛克</h3>
            <p>力洛克系列的命名源自天梭的诞生地 - 瑞士小镇力洛克。它以当地最古老地标 &ndash; 16世纪教堂上钟楼的盘面为原型，进行表盘的设计。通过透明的表后盖，佩戴者更能清楚看到镀金机芯的运转，传统自动机芯和永恒简朴的典雅之美可谓是对表的不二之选。</p>
            <p>该款腕表的表盘上用复古的手写斜体字刻画了小镇力洛克的法文名字&ldquo;Le Locle&rdquo;，细节之处无不向佩戴者昭示的天梭历史底蕴。该系列对表适合各年龄层，款式易于搭配</p>
            <p>&nbsp;</p>
            <p><strong>【天梭力洛克系列 <strong>T41.1.483.33 简介】</strong><br />
            </strong>天梭T41.1.483.33 经典系列，自动机械机芯，蓝宝石水晶玻璃表镜，银色表盘，日常生活防水30米。</p>
            </td>
        </tr>
        <tr>
            <td colspan="2"><strong>【天梭力洛克系列<strong> T41.1.483.33 信息】</strong></strong></td>
        </tr>
        <tr>
            <td width="51%" valign="top">
            <p>使 用 者&nbsp; :&nbsp; 男士<br />
            品&nbsp;&nbsp;&nbsp; 牌&nbsp; :&nbsp; 天梭<br />
            型&nbsp;&nbsp;&nbsp; 号&nbsp; :&nbsp; <strong>T41.1.483.33 </strong><br />
            机&nbsp;&nbsp;&nbsp; 芯&nbsp; :&nbsp; 自动机械机芯<br />
            机芯型号&nbsp; :&nbsp; ETA2824-1-2<br />
            表&nbsp;&nbsp;&nbsp; 壳&nbsp; :&nbsp; 精钢抛光<br />
            尺&nbsp;&nbsp;&nbsp; 寸&nbsp; :&nbsp; 39毫米<br />
            厚&nbsp;&nbsp;&nbsp; 度&nbsp; :&nbsp; 7mm<br />
            表&nbsp;&nbsp;&nbsp; 底&nbsp; :&nbsp; 透底</p>
            </td>
            <td width="49%" valign="top">
            <p>表&nbsp;&nbsp;&nbsp; 镜&nbsp; :&nbsp; 蓝宝石水晶玻璃 <br />
            表&nbsp;&nbsp;&nbsp; 盘&nbsp; :&nbsp; 银色<br />
            表&nbsp;&nbsp;&nbsp;&nbsp;带&nbsp; :&nbsp; 钢链带<br />
            表带颜色&nbsp; :&nbsp; 银色<br />
            表&nbsp;&nbsp;&nbsp; 扣&nbsp; :&nbsp; 蝴蝶双按扣<br />
            表耳宽度&nbsp; :&nbsp; 19mm<br />
            功&nbsp;&nbsp;&nbsp; 能&nbsp; :&nbsp; 日历<br />
            防&nbsp;&nbsp;&nbsp; 水&nbsp; :&nbsp; 30米 <br />
            包&nbsp;&nbsp;&nbsp; 装&nbsp; :&nbsp; 包装盒、相关文件、说明书、保修卡</p>
            </td>
        </tr>
    </tbody>
</table>
</div>
</div>
<div style="border-right: rgb(229,229,229) 1px solid; padding-right: 7px; border-top: rgb(229,229,229) 1px solid; margin-top: 10px; padding-left: 7px; margin-bottom: 10px; padding-bottom: 15px; border-left: rgb(229,229,229) 1px solid; padding-top: 0px; border-bottom: rgb(229,229,229) 1px solid">
<div style="margin-bottom: 10px; border-bottom: rgb(229,229,229) 1px solid; text-align: left"><img src="${pageContext.request.contextPath}/images/goods_img/product_display.gif" width="304" height="32" /></div>
<div style="text-align: center">
  <p>&nbsp;</p>
<p><img src="${pageContext.request.contextPath}/images/goods_img/5gmWA.jpg" width="595" height="540" /></p>
<p>&nbsp;</p>
<p><img src="${pageContext.request.contextPath}/images/goods_img/11X4pt.jpg" width="536" height="562" /></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
</div>
<div style="border-right: rgb(229,229,229) 1px solid; padding-right: 7px; border-top: rgb(229,229,229) 1px solid; margin-top: 10px; padding-left: 7px; margin-bottom: 10px; padding-bottom: 15px; border-left: rgb(229,229,229) 1px solid; padding-top: 0px; border-bottom: rgb(229,229,229) 1px solid">
<div style="margin-bottom: 10px; border-bottom: rgb(229,229,229) 1px solid; text-align: left"></div>
<div style="margin: 10px">
<p>天梭T41.1.483.33全球联保，二年免费质保，自收到货之日起十五天内，如产品有质量问题或运送过程中导致新品瑕疵，可联系客服进行调换新货，换货时,请连同完整包装(保持商品、附件、包装、厂商纸箱及所有附属文件或资料之完整性)及产品保存完好，并与客服人员进行联系！<br />
&nbsp;</p>
</div>
</div>
</div>
</div>                
              </blockquote>
              <blockquote id="tagContent1" style="display:none;">
                
                <p><img width="765" height="1140" src="${pageContext.request.contextPath}/images/upload/Image/zhifu.jpg" alt="" /></p> </blockquote>
              <blockquote id="tagContent2" style="display:none;">
                
                <div id='buy_record'><div style="width: 765px"><img width="765" height="1086" src="${pageContext.request.contextPath}/images/upload/Image/tuihuang.jpg" alt="" />&nbsp;&nbsp;</div></div>
              </blockquote>
              <blockquote id="tagContent3" style="display:none;">
                
                <div id='buy_record'><div style="border-bottom: #dcdcdc 1px solid; border-left: #dcdcdc 1px solid; padding-bottom: 10px; padding-left: 10px; padding-right: 10px; border-top: #dcdcdc 1px solid; border-right: #dcdcdc 1px solid; padding-top: 10px">
<p>&nbsp;</p>
<p style="padding-bottom: 0px; border-right-width: 0px; margin: 0px 0px 12px; padding-left: 0px; padding-right: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 0px">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;淘表网郑重申明：本网站所售商品全部由顶尖知名品牌制造商直接提供，100%原装正品，享受全国联保服务，欢迎广大顾客进行监督。淘表网的商品来源都是直接厂家，或者国外的一级代理，产品进入国内都有正式的报关单以及厂家的授权书，从源头上杜绝赝品的出现。若您从淘表网所购物品被证实是赝品（仿制品、A货、&ldquo;尾单货&rdquo;等任何非经过品牌制造商认证通过的商品），我们将十倍于购买价赔偿您的损失。如何验证在淘表网网所购物品为正品？</p>
<p style="padding-bottom: 0px; border-right-width: 0px; margin: 0px 0px 12px; padding-left: 0px; padding-right: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 0px"><br />
以下几个方法可以帮助您进行鉴别：<br />
商品标牌：淘表网的商品均自欧美品牌制造商和经销商处直接大宗购买，一般情况下，淘表网所售商品依然保留美国或欧洲品牌专卖店的零售标牌，你可以根据标牌来鉴定商品的购买地、材质以及一些其他相关信息。</p>
<p style="padding-bottom: 0px; border-right-width: 0px; margin: 0px 0px 12px; padding-left: 0px; padding-right: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 0px"><br />
原厂包装：淘表网保留绝大多数商品的原厂包装，包括专属防尘套、LOGO手提纸袋、LOGO包装盒（大件贵重商品），以及印有品牌LOGO的衬纸等等。这些精美而专业的外包装附件，不仅体现了奢侈品的尊贵身份，更证实了它难以复制的内在品质。</p>
<p style="padding-bottom: 0px; border-right-width: 0px; margin: 0px 0px 12px; padding-left: 0px; padding-right: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 0px"><br />
序列号：大多数商品尤其是高级箱包都提供了可供验证的商品序列号，请根据序列号向各大品牌的中国总代理/代表处致电查询。<br />
产品质量：正品行货与假冒伪劣在原料、材质、做工等各个方面都差别明显。正品精挑细选的用料，一丝不苟到每个细节，是任何&ldquo;高明&rdquo;的仿冒者都无法复制的。<br />
售后鉴定：如果经过上述各个环节的检验，仍不能消除您对产品真伪的疑虑，淘表网建议您可以携带产品，到品牌售后进行鉴定认证。您可以向富有经验的售后服务人员要求提供售后服务，只要能提供服务就肯定是真品。</p>
<p style="padding-bottom: 0px; border-right-width: 0px; margin: 0px 0px 12px; padding-left: 0px; padding-right: 0px; border-top-width: 0px; border-bottom-width: 0px; border-left-width: 0px; padding-top: 0px"><br />
质量检测：请随时致电淘表网探讨您对商品真实性的质疑，若所有的鉴定都不能让您满意，您还可以到质量监测和监督部门（或其他任何权威的、中立的检测机构）进行专门的检测评定，若鉴定为&ldquo;假货&rdquo;，并出具相应的检测报告，我们愿意负担发生的一切费用，并予以您十倍于售价的赔偿。&ldquo;诚信是金，顾客至上&rdquo;是淘表网始终秉持的经营理念，&ldquo;打造一流奢侈品信用卡商城&rdquo;是淘表网恒远的目标。请给予我们信任、监督、掌声和批评，我们将尽力改进工作，为消费者提供一个&ldquo;放心、安心、舒心&rdquo;的网上购物环境。</p>
</div></div>
              </blockquote>
			  <blockquote id="tagContent4" style="display:none;">
                
                <div id='buy_record'><p>&nbsp;&nbsp;&nbsp; 1853年，天梭表诞生在力洛克，一个位于侏罗山与法国边境接壤，只有8,500名居民的瑞士小镇。 <br />
&nbsp;&nbsp;&nbsp; 作为品牌创建者,Charles-F&eacute;licien的儿子，Charles-Emile Tissot从一开始已经有计划地让品牌拓展到瑞士国境以外的地方。这种敢于勇闯的精神，至今仍然是品牌成长的基石。 <br />
&nbsp;&nbsp;&nbsp; 在1858 年，Charles-Emile带着怀表样品离开力洛克，来到沙皇统治下的俄国。天梭怀表进入那个拥有庞大人口的市场后，受到俄国贵族的欢迎。<br />
早在1848 年，他就第一次到访那里，不过直到1866年，他才真正开始了与美国和拉丁美洲公司的商业活动。1893年的芝加哥世界博览会，Charles&ndash;Emile更成为瑞士评审成员之一。 <br />
&nbsp;&nbsp;&nbsp; 1900 年在巴黎博览会上，由于著名女演员Sarah Bernhardt 配戴了天梭腕表，让不少举世知名的人士相继加入天梭拥有者行列，其中包括1947年的南美歌手Carmen Miranda，而1960年摩纳哥王室人员也曾到访位于力洛克的工厂参观,并被赠予天梭表。<br />
&nbsp;&nbsp;&nbsp; 天梭表1983年加入了Swatch 集团，天梭150年历史的创新和勇闯精神及其品牌形象与集团完全一致。</p>
<p><img alt="" src="	http://www.jufengshang.com/images/common/20110914153948tians.jpg" /><br />
&nbsp;</p></div>
              </blockquote>
            </div>
          </div>
        </div>
        </form>
  </div>
      <div class="box180" style="float:right;">
        
        <div class="border7" >
          <div class="top"><h3>同类商品</h3></div>
		   <div class="body">
            
                          <dl>
               <dt> <a href="#" ><img src="${pageContext.request.contextPath}/images/goods_img/5511_thumb_G_1292455120608.jpg" title="天梭 T41.2.183.13" /></a> </dt>
               <dd> <a  href="/Tissot-g5511.html" >天梭T41.2.183.13</a> <br />
                 <font class="market_s"> 4450.00 </font> <font class="shop_s"><br /> ￥4,008 </font>               </dd>
             </dl>
                          <dl>
               <dt> <a href="#" ><img src="${pageContext.request.contextPath}/images/goods_img/f711ad74ab425b61.jpg" title="天梭 T014.430.11.037.00" /></a> </dt>
               <dd> <a  href="/Tissot-g302.html" >天梭T014.430.11.037.00</a> <br />
                 <font class="market_s"> 4500.00 </font> <font class="shop_s"><br /> ￥4,056 </font>               </dd>
             </dl>
                          <dl>
               <dt> <a href="#" ><img src="${pageContext.request.contextPath}/images/goods_img/47c9f072465e5fe3.jpg" title="天梭 T97.1.483.51" /></a> </dt>
               <dd> <a  href="/Tissot-g304.html" >天梭T97.1.483.51</a> <br />
                 <font class="market_s"> 4500.00 </font> <font class="shop_s"><br /> ￥4,056 </font>               </dd>
             </dl>
                       </div>
        </div>
        
	  
        <div class="border7" >
          <div class="top"><h3>推荐品牌</h3></div>
		   <div class="body">
		   	  <span><a title="天梭手表" href="#">天梭</a></span>
			  <span><a title="劳力士手表" href="#">劳力士</a></span>
			  <span><a title="欧米茄手表" href="#">欧米茄</a></span>
			  <span><a title="浪琴手表" href="#">浪琴</a></span>
			  <span><a title="梅花手表" href="#">梅花</a></span>
			  <span><a title="卡地亚手表" href="#">卡地亚</a></span>
			  <span><a title="帝舵手表" href="#">帝舵</a></span>
			  <span><a title="美度手表" href="#">美度</a></span>
			  <span><a title="江诗丹顿手表" href="#">江诗丹顿</a></span>
			  <span><a title="百达翡丽手表" href="#">百达翡丽</a></span>
			  <span><a title="豪雅手表" href="#">豪雅</a></span>
			  <span><a title="古琦手表" href="#">古琦</a></span>
			  <span><a title="罗马手表" href="#">罗马</a></span>
			  <span><a title="汉米尔顿手表" href="#">汉米尔顿</a></span>
			  <span><a title="积家手表" href="#">积家</a></span>
			  <span><a title="真力时手表" href="#">真力时</a></span>
			  <span><a title="荣汉斯手表" href="#">荣汉斯</a></span>
			  <span><a title="朗坤手表" href="#">朗坤</a></span>
			  <span><a title="博塔设计手表" href="#">博塔设计</a></span>
			  <span><a title="精时力手表" href="#">精时力</a></span>
			  <span><a title="西铁城手表" href="#">西铁城</a></span>
			  <span><a title="依波路手表" href="#">依波路</a></span>
			  <span><a title="万国手表" href="#">万国</a></span>
			  <span><a title="宝齐莱手表" href="#">宝齐莱</a></span>
			  <span><a title="爱马仕手表" href="#">爱马仕</a></span>
			  <span><a title="伯爵手表" href="#">伯爵</a></span>
			  <span><a title="芝柏手表" href="#">芝柏</a></span>
			  <span><a title="宝珀手表" href="#">宝珀</a></span>
			  <span><a title="宝玑手表" href="#">宝玑</a></span>
		  </div>
        </div>
        
  <div class="border7" >
      <div class="top"><h3>热销商品</h3></div>
       <div class="body" >
	   	         		 <dl>
           <dt >
		   <a href="#" title="" ><img src="${pageContext.request.contextPath}/images/goods_img/314_thumb_G_1289949369511.jpg" border="0" alt="" /></a></dt>
			<dd>
			<a href="/Tissot-g314.html">天梭T02.1.285.71</a>
			<br />
			原价:<font class="market_s">2550.00</font> <br>
特价:<font class="shop_s">2295.00</font>
			<br /><!--
			已出售:			<br />
								<a href="javascript:addToCart()" style="margin-left:30px;" rel="nofollow">[购 买]</a>
			-->

			<br />
		  </dd>
		  </dl>
                           		 <dl>
           <dt >
		   <a href="#" title="" ><img src="${pageContext.request.contextPath}/images/goods_img/315_thumb_G_1289949966860.jpg" border="0" alt="" /></a></dt>
			<dd>
			<a href="/Tissot-g315.html">天梭T17.1.486.33</a>
			<br />
			原价:<font class="market_s">3650.00</font> <br>
特价:<font class="shop_s">3288.00</font>
			<br /><!--
			已出售:			<br />
								<a href="javascript:addToCart()" style="margin-left:30px;" rel="nofollow">[购 买]</a>
			-->

			<br />
		  </dd>
		  </dl>
                           		 <dl>
           <dt >
		   <a href="#" title="" ><img src="${pageContext.request.contextPath}/images/goods_img/317_thumb_G_1289950314542.jpg" border="0" alt="" /></a></dt>
			<dd>
			<a href="/Tissot-g317.html">天梭T17.1.486.55</a>
			<br />
			原价:<font class="market_s">3650.00</font> <br>
特价:<font class="shop_s">3288.00</font>
			<br /><!--
			已出售:			<br />
								<a href="javascript:addToCart()" style="margin-left:30px;" rel="nofollow">[购 买]</a>
			-->

			<br />
		  </dd>
		  </dl>
                    <div class="clear"></div>
       </div>
<div class="clear"></div>
      </div>
	  <div class="clear"></div>
        
        <!--<div class="leftad">
				<a rel="nofollow" href="http://www.jufengshang.com/Tissot-g4582.html" target="_blank"><img src="http://images.jufengshang.com/2011/07/21/baobaog_BewJ0zwm_qajDV.jpg" width="180" border="0" style="margin-bottom:10px; " alt="半月形动力存储"></a>
				<a rel="nofollow" href="http://www.jufengshang.com/Longines-g3956.html" target="_blank"><img src="http://images.jufengshang.com/2011/07/21/baobaog_BewJ1hKj_7os7H.jpg" width="180" border="0" style="margin-bottom:10px; " alt="沉稳优雅-浪琴"></a>
				<a rel="nofollow" href="http://www.jufengshang.com/OMEGA-g4157.html" target="_blank"><img src="http://images.jufengshang.com/2011/07/22/baobaog_BeEMDaIM_HL2GG.jpg" width="180" border="0" style="margin-bottom:10px; " alt="旋转表圈-欧米茄"></a>
				<a rel="nofollow" href="http://www.jufengshang.com/OMEGA-g4464.html" target="_blank"><img src="http://pic.yupoo.com/baobaog/BeEQd8nR/10aTw8.jpg" width="180" border="0" style="margin-bottom:10px; " alt="18K黄金"></a>
				<a rel="nofollow" href="http://www.jufengshang.com/Rolex-g7021.html" target="_blank"><img src="http://www.jufengshang.com/images/common/20110809105810%E6%9C%AA%E6%A0%87%E9%A2%98-1.jpg" width="180" border="0" style="margin-bottom:10px; " alt="光芒万丈"></a>
				</div>-->
          <div class="border7" id='history_div'>
 <div class="top">
  <h3>最近浏览</h3> </div>
  <div class="body" id='history_list'>
    <dl><dt><a rel="nofollow" href="#"><img  src="${pageContext.request.contextPath}/images/goods_img/577_thumb_G_1281059148446.jpg" alt="劳力士Rolex 格林威治型II 蚝式带扣/日历/防水 男士机械表 116713-LN-78203"  /></a></dt>
		<dd><a href="/Rolex-g577.html">劳力士&nbsp;116713-LN-78203</a><br />
		<font class="market_s">￥97,000</font><br />
<font class="shop_s">￥92,150</font></dd></dl><dl><dt><a rel="nofollow" href="#"><img  src="${pageContext.request.contextPath}/images/goods_img/3619_thumb_G_1283276597389.jpg" alt="天梭Tissot 力洛克系列 蓝宝石水晶玻璃/日历/防水 男士机械表 T41.1.483.53"  /></a></dt>
		<dd><a href="/Tissot-g3619.html">天梭&nbsp;T41.1.483.53</a><br />
		<font class="market_s">￥4,350</font><br />
<font class="shop_s">￥3,912</font></dd></dl><dl><dt><a rel="nofollow" href="#"><img  src="${pageContext.request.contextPath}/images/goods_img/7871_thumb_G_1318457913703.jpg" alt="精时力Kienzle RETRO系列 矿物质玻璃/小秒盘/防水 男士机械表 V73091237790"  /></a></dt>
		<dd><a href="/Kienzle-g7871.html">精时力&nbsp;V73091237790</a><br />
		<font class="market_s">￥5,788</font><br />
<font class="shop_s">￥5,499</font></dd></dl><ul id="clear_history"><a onclick="clear_history()">[清空]</a></ul>	<div class="clear"></div>
  </div>
  <div class="clear"></div>

</div>
<div class="blank5"></div>
<script type="text/javascript">
if (document.getElementById('history_list').innerHTML.replace(/\s/g,'').length<1)
{
    document.getElementById('history_div').style.display='none';
}
else
{
    document.getElementById('history_div').style.display='block';
}
function clear_history()
{
Ajax.call('user.php', 'act=clear_history',clear_history_Response, 'GET', 'TEXT',1,1);
}
function clear_history_Response(res)
{
document.getElementById('history_list').innerHTML = '您已清空最近浏览过的商品';
}
</script>        
        <div class="blank5"></div>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
 
  </div>
<div class="clear"></div>
<script type="text/javascript">
    $(function(){
      //debugger;
	/*$("#keywords").autocomplete('/get_search_word.php', {
		width: 150		
	});	*/
	});
  </script>

 <SCRIPT LANGUAGE=JAVASCRIPT>
 var process_request = "正在处理您的请求...";
if (top.location !== self.location) {
location.href="/LegalNotices.html";
}
</SCRIPT>









 <SCRIPT LANGUAGE=JAVASCRIPT>
if (top.location !== self.location) {
location.href="/LegalNotices.html";
}
</SCRIPT>
<script type="text/javascript">
   $("#ulClassSider li").eq(0).addClass("cur");

    $("#sildeim li ").eq(0).css("width","191");

    $("#sildeim li ").eq(4).css("margin-right","0px");

        $("#sildeim li ").eq(4).css("width","191");
		
var process_request = "正在处理您的请求...";
</script>







  
   <script type="text/javascript" src="js/hp1.js"></script>

<script language="javascript">
function isDOMRequired ()
{
	return true;
}

function objectTag ()
{
	var startTag = "<{* ";
	var endTag = " *}>";
	var dom = dw.getDocumentDOM ();
	dom.source.wrapSelection (startTag, endTag);
	dom.synchronizeDocument();
	return "";
}
</script>
<script language="javascript">
function isDOMRequired ()
{
	return true;
}

function objectTag ()
{
	var startTag = "<{* ";
	var endTag = " *}>";
	var dom = dw.getDocumentDOM ();
	dom.source.wrapSelection (startTag, endTag);
	dom.synchronizeDocument();
	return "";
}
</script>
<script language="javascript">
function isDOMRequired ()
{
	return true;
}
function objectTag ()
{
	var startTag = "<{* ";
	var endTag = " *}>";
	var dom = dw.getDocumentDOM ();
	dom.source.wrapSelection (startTag, endTag);
	dom.synchronizeDocument();
	return "";
}
</script>

</html>
