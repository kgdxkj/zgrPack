<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${(sessionScope.popularProducts==null)||(sessionScope.saleProducts==null)||(sessionScope.priceProducts==null)||(sessionScope.brandProducts==null)||(sessionScope.styleProducts==null)||(sessionScope.timeProducts==null)}">
	<jsp:forward page="index!toIndex.do"></jsp:forward>
</c:if>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>淘表网 全球顶级名表商城◆100%正品天梭|浪琴手表|欧米茄|劳力士手表</title>
<meta name="Keywords" content="奢侈品,天梭手表,浪琴手表,欧米茄手表,劳力士手表" />
<meta name="Description" content="奢侈品网购网站,支持信用卡分期付款.囊括30个瑞士手表品牌:天梭手表Tissot,浪琴手Longines,欧米茄手表OMEGA,劳力士手表Rolex.全球联保,支持专柜验货." />
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/slides.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/share.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>

</head>

<body>
<div id="container">
<!---顶部start---->

<!--------顶部end ----->
<!---第一通栏start---->
<div class="box980">
   <div class="box680">
     <script>
    $("#ulClassSider li").eq(0).addClass("cur");
    $("#sildeim li ").eq(0).css("width","135");
    $("#sildeim li ").eq(4).css("margin-right","0px");
    $("#sildeim li ").eq(4).css("width","135");//    $("#ulClassSider li a").eq(1).css("width","158");
//    $("#ulClassSider li a").eq(2).css("width","138");
</script>
  </div>
   <span class="clear"></span>
</div><div id="top">
  <div class="header">
  	 <div class="logo"><a href="${pageContext.request.contextPath}/index.jsp" title="淘表网全球顶级名表商城"><img src="images/logo.jpg" alt="淘表网全球顶级名表商城" /></a></div>
  
    <div class="topnav">
      <div class="nav1"><span >
      <c:if test="${sessionScope.loginUser!=null}">
		     欢迎您，${sessionScope.loginUser.name} [ <a href="login_register!loginout.do"> 注销 </a>     
      </c:if>
      <c:if test="${sessionScope.loginUser==null}">
	     [ <a href="${pageContext.request.contextPath}/login_register.jsp"> 登录 </a>
      </c:if>
      |<a href="${pageContext.request.contextPath}/login_register.jsp"> 注册</a> ]&nbsp;<a class="nav-cart" href="${pageContext.request.contextPath}/cart.jsp">我的购物车（<font color="#AB4419">0</font>）&nbsp;&nbsp;</a><a href="orderList!toOrderListFromIndex.do">我的订单</a> </span>
	  <div class="orderBox hab" id="h-warp1" onMouseOver="showFq(1,1)" onMouseOut="hiddenFq(1,1)">
	  <p><a href="user/index.jsp" rel="nofollow">我的淘表</a></p>
		<ul id="h-con1" style="display:none;">
		<li><a href="" rel="nofollow">我的订单</a></li>
		<li><a href="" rel="nofollow">我的咨询</a></li>
		<li><a href="" rel="nofollow">我的收藏</a></li>
		<li><a href="" rel="nofollow">收货地址</a></li>
		<li><a href="" rel="nofollow">修改密码</a></li>
		</ul>
	  </div>
	  <div class="helpBox hab" id="h-warp2" onMouseOver="showFq(2,2)" onMouseOut="hiddenFq(2,2)">
		<p><a href="" rel="nofollow">帮助中心</a></p>
		<ul id="h-con2" style="display:none;">
		<li><a href="" rel="nofollow">帮助中心</a></li>
		<li><a href="" rel="nofollow">留言咨询</a></li>
		<li><a href="" rel="nofollow">售后服务</a></li>
        <li><a href="" rel="nofollow">联系客服</a></li>
		</ul>
	  </div></div>
      <div class="nav2">
        <div class="Search"><form action="/list" method="get" ><input name="keyword" type="text" id="keyword" value="输入商品关键字，比如"天梭"..." onmouseover="if(this.value=='输入商品关键字，比如"天梭"...'){this.value='';this.focus();}"  onmouseout="if(this.value=='')this.value='输入商品关键字，比如"天梭"...'" /><input name="btsearch" type="submit" id="btsearch" value="搜索" />
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
<!---第一通栏end---->
<!---第二通栏start---->
<div class="box980">
   <div class="box680">
     <div id="slide6" class="hotBrand">
			<div id="slideTit6" class="titBar b-titBar"><strong>品牌大全</strong><!--<span class="hover" onmouseover="setSlide(6,0)">瑞士手表品牌</span><span onmouseover="setSlide(6,1)" class="">其他品牌手表</span>--><a title="瑞士手表品牌" href="/brands_link.html" class="more">更多手表品牌&gt;&gt;</a></div>
            <div class="brandName" id="marquee0"><p><dl><dt><a href="product/productList.html" title="劳力士手表"><img src="images/brandlogo/rolex.jpg" alt="劳力士表" width="88" height="38" border="0"></a></dt>
			<dd><a title="劳力士手表" href="#">劳力士</a></dd>
            </dl><dl><dt><a href="product/productList.html" title="天梭手表"><img src="images/brandlogo/tissot.jpg" alt="天梭" width="88" height="38" border="0"></a></dt>
			<dd><a title="天梭手表" href="#">天梭</a></dd>
            </dl><dl class="mid"><dt><a href="product/productList.html" title="浪琴手表"><img src="images/brandlogo/longines.jpg" alt="浪琴表" width="88" height="38"></a></dt>
			<dd><a title="浪琴"  href="#">浪琴</a></dd></dl><dl ><dt ><a href="#" title="欧米茄手表"><img src="images/brandlogo/omega.jpg" width="88" height="38"/></a></dt>
			<dd ><a href="#"  title="欧米茄">欧米茄</a></dd></dl><dl><dt><a href="#" title="帝舵手表"><img src="images/brandlogo/tudor.jpg" alt="帝舵" width="88" height="38"></a></dt>
			<dd><a href="#">帝舵</a></dd></dl><dl class="end">
			<dt ><a href="#"  title="美度"><img alt="美度" src="images/brandlogo/mido.jpg"  width="88" height="38"/></a></dt>
			<dd ><a href="#" title="美度">美度</a></dd>
		</dl><dl><dt><a href="#" title="百达翡丽手表"><img src="images/brandlogo/patek_philippe.jpg" alt="百达翡丽" width="88" height="38"></a></dt>
			<dd><a title="百达翡丽"  href="#">百达翡丽</a></dd></dl><dl >
			<dt ><a href="#" title="依波路手表"><img alt="依波路" src="images/brandlogo/borel.jpg"  width="88" height="38"/></a></dt>
			<dd ><a href="#" title="依波路">依波路</a></dd>
		</dl><dl class="mid">
			<dt ><a href="#" title="朗坤手表"><img src="images/brandlogo/bylacher.jpg"  width="88" height="38"/></a></dt>
			<dd ><a href="#" title="朗坤">朗坤</a></dd>
		</dl><dl >
			<dt ><a href="#" title="汉米尔顿手表"><img src="images/brandlogo/namilton.jpg"  width="88" height="38"/></a></dt>
			<dd ><a href="#"  title="汉米尔顿">汉米尔顿</a></dd>
		</dl><dl><dt><a href="#" title="积家手表"><img src="images/brandlogo/jijia.jpg" alt="积家" width="88" height="38"></a></dt>
			<dd><a href="#">卡地亚</a></dd></dl>
			<dl class="end"><dt><a href="#" title="梅花手表"><img src="images/brandlogo/titoni.jpg" alt="梅花" width="88" height="38"></a></dt>
			<dd><a href="#">梅花</a></dd></dl>


			<dl><dt><a href="#" title="伯爵手表"><img src="images/brandlogo/piaget.jpg" alt="伯爵" width="88" height="38"></a></dt>
			<dd><a href="#">伯爵</a></dd></dl>

			<dl><dt><a href="#" title="江诗丹顿手表"><img src="images/brandlogo/jiansidandun.jpg" alt="江诗丹顿" width="88" height="38"></a></dt>
			<dd><a href="#">江诗丹顿</a></dd></dl>

			<dl class="mid"><dt><a href="#" title="古琦手表"><img src="images/brandlogo/guji.jpg" alt="古琦" width="88" height="38"></a></dt>
			<dd><a href="#">古琦</a></dd></dl>

			<dl><dt><a href="#" title="积家手表"><img src="images/brandlogo/jijia.jpg" alt="积家" width="88" height="38"></a></dt>
			<dd><a href="#">积家</a></dd></dl>

			<dl><dt><a href="#" title="万国手表"><img src="images/brandlogo/wangguo.jpg" alt="万国" width="88" height="38"></a></dt>
			<dd><a href="#">万国</a></dd></dl>

			<dl class="end"><dt><a href="#" title="宝玑手表"><img src="images/brandlogo/baoji.jpg" alt="宝玑" width="88" height="38"></a></dt>
			<dd><a href="#">宝玑</a></dd></dl>

			<dl><dt><a href="#" title="罗马手表"><img src="images/brandlogo/luoma.jpg" alt="罗马" width="88" height="38"></a></dt>
			<dd><a href="#">罗马</a></dd></dl>

			<dl><dt><a href="#" title="爱马仕手表"><img src="images/brandlogo/aimashi.jpg" alt="爱马仕" width="88" height="38"></a></dt>
			<dd><a href="#">爱马仕</a></dd></dl>

			<dl class="mid"><dt><a href="#" title="芝柏手表"><img src="images/brandlogo/zibo.jpg" alt="芝柏" width="88" height="38"></a></dt>
			<dd><a href="#">芝柏</a></dd></dl>

			<dl><dt><a href="#" title="真力时手表"><img src="images/brandlogo/zhenglishi.jpg" alt="真力时" width="88" height="38"></a></dt>
			<dd><a href="#">真力时</a></dd></dl>

			<dl><dt><a href="#" title="豪雅手表"><img src="images/brandlogo/aoyi.jpg" alt="豪雅" width="88" height="38"></a></dt>
			<dd><a href="#">豪雅</a></dd></dl>

			<dl class="end"><dt><a href="#" title="荣汉斯手表"><img src="images/brandlogo/hangronsi.jpg" alt="荣汉斯" width="88" height="38"></a></dt>
			<dd><a href="#">荣汉斯</a></dd></dl>
			</div>

           <span class="clear"></span>
     </div>
     <div id="slide3" class="newPro">
	   <p id="slideTit3" class="titBar p-titBar"><strong>新品上市</strong><span class="hover" onMouseOver="setSlide(3,0)">火爆人气专区</span><span class="" onMouseOver="setSlide(3,1)">畅销精品专区</span><span class="" onMouseOver="setSlide(3,2)">最新优惠专区</span></p>
                        <div class="proList " style="display: block;">
                        
               <c:forEach var="popularProduct" items="${sessionScope.popularProducts}" varStatus="status">
               		<c:if test="${(status.index+1)%3!=0&&status.index<3}">
               			<dl>
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${popularProduct.id}" title="${popularProduct.brand}"><img alt="${popularProduct.productName}" src="${popularProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${popularProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${popularProduct.id}">${popularProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${popularProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               		<c:if test="${(status.index+1)%3==0&&status.index<3}">
               			<dl class="ldn">
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${popularProduct.id}" title="${popularProduct.brand}"><img alt="${popularProduct.productName}" src="${popularProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${popularProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${popularProduct.id}">${popularProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${popularProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               </c:forEach>
               
            			<span class="clear"></span>
            </div>
                        <div class="proList none" style="display: none;">
                        
               <c:forEach var="saleProduct" items="${sessionScope.saleProducts}" varStatus="status">
               		<c:if test="${(status.index+1)%3!=0&&status.index<3}">
               			<dl>
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${saleProduct.id}" title="${saleProduct.brand}"><img alt="${saleProduct.productName}" src="${saleProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${saleProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${saleProduct.id}">${saleProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${saleProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               		<c:if test="${(status.index+1)%3==0&&status.index<3}">
               			<dl class="ldn">
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${saleProduct.id}" title="${saleProduct.brand}"><img alt="${saleProduct.productName}" src="${saleProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${saleProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${saleProduct.id}">${saleProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${saleProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               </c:forEach>         

            			<span class="clear"></span>
            </div>
                        <div class="proList none" style="display: none;">
                        
                        
               <c:forEach var="priceProduct" items="${sessionScope.priceProducts}" varStatus="status">
               		<c:if test="${(status.index+1)%3!=0&&status.index<3}">
               			<dl>
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${priceProduct.id}" title="${priceProduct.brand}"><img alt="${priceProduct.productName}" src="${priceProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${priceProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${priceProduct.id}">${priceProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${priceProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               		<c:if test="${(status.index+1)%3==0&&status.index<3}">
               			<dl class="ldn">
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${priceProduct.id}" title="${priceProduct.brand}"><img alt="${priceProduct.productName}" src="${priceProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${priceProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${priceProduct.id}">${priceProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${priceProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               </c:forEach>          
               
    		
            			<span class="clear"></span>
            </div>
            
     </div>
		<div id="slide4" class="dscPro">
			<p id="slideTit4" class="titBar p-titBar"><strong>男士精品区</strong><span class="hover" onMouseOver="setSlide(4,0)">2011畅销表"情"</span><span class="" onMouseOver="setSlide(4,1)">精英男士致尚之选</span><span class="" onMouseOver="setSlide(4,2)">明星代言限量抢购</span></p>
                         <div class="proList " style="display: block;">
            <span class="clear"></span>
            
            
            <c:forEach var="saleProduct" items="${sessionScope.saleProducts}" varStatus="status">
               		<c:if test="${(status.index+1)%3!=0}">
               			<dl>
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${saleProduct.id}" title="${saleProduct.brand}"><img alt="${saleProduct.productName}" src="${saleProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${saleProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${saleProduct.id}">${saleProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${saleProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               		<c:if test="${(status.index+1)%3==0}">
               			<dl class="ldn">
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${saleProduct.id}" title="${saleProduct.brand}"><img alt="${saleProduct.productName}" src="${saleProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${saleProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${saleProduct.id}">${saleProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${saleProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               </c:forEach>
            
            			<span class="clear"></span>
            </div>
                        <div class="proList none" style="display: none;">
            <span class="clear"></span>
            
            	
                <c:forEach var="timeProduct" items="${sessionScope.timeProducts}" varStatus="status">
               		<c:if test="${(status.index+1)%3!=0}">
               			<dl>
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${timeProduct.id}" title="${timeProduct.brand}"><img alt="${timeProduct.productName}" src="${timeProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${timeProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${timeProduct.id}">${timeProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${timeProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               		<c:if test="${(status.index+1)%3==0}">
               			<dl class="ldn">
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${timeProduct.id}" title="${timeProduct.brand}"><img alt="${timeProduct.productName}" src="${timeProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${timeProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${timeProduct.id}">${timeProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${timeProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               </c:forEach>
            
            			<span class="clear"></span>
            </div>
                        <div class="proList none" style="display: none;">
            <span class="clear"></span>
                
               <c:forEach var="brandProduct" items="${sessionScope.brandProducts}" varStatus="status">
               		<c:if test="${(status.index+1)%3!=0}">
               			<dl>
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${brandProduct.id}" title="${brandProduct.brand}"><img alt="${brandProduct.productName}" src="${brandProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${brandProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${brandProduct.id}">${brandProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${brandProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               		<c:if test="${(status.index+1)%3==0}">
               			<dl class="ldn">
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${brandProduct.id}" title="${brandProduct.brand}"><img alt="${brandProduct.productName}" src="${brandProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${brandProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${brandProduct.id}">${brandProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${brandProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               </c:forEach>
            
            			<span class="clear"></span>
            </div>
     </div>
   </div>
   <div class="box290">
       <div id="slide1" class="active">
          <p id="slideTit1" class="titBar a-titBar"><strong>特卖专题</strong></p>
        <div class="body">
        <ul class="imgList">
                 	<li class="img"><a rel="nofollow" href="#"><img alt="奢华人生表现非凡" src="images/ad/baobaog_BfpGpu63_5MeFu.jpg" width="278" height="100"></a></li>        	<li class="img"><a rel="nofollow" href="#"><img alt="大海有约" src="images/ad/baobaog_BfpGpt2S_9hD5.jpg" width="278" height="100"></a></li>        	<li class="img"><a rel="nofollow" href="#"><img alt="大海有约" src="images/ad/baobaog_BfpGoLkP_Duf0T.jpg" width="278" height="100"></a></li>        </ul>
        <ul class="msgList">

                        <li ><a rel="nofollow" href="#">精时力-着眼技术创新 悠久历史的优质钟...</a></li>
                        <li ><a rel="nofollow" href="#">博塔设计-集功能和技术美学于一身的德国...</a></li>
                        <li ><a rel="nofollow" href="#">朗坤-精湛工艺 源自德意志血统的军表品...</a></li>
                        <li style="margin-top:15px; *+margin-top:17px;"><a rel="nofollow" href="#">荣汉斯-淡雅古朴 引领高科技的德国销量...</a></li>
                        <li ><a rel="nofollow" href="#">浪琴品牌馆-源自1832年，以优雅、精湛闻...</a></li>
                        <li ><a rel="nofollow" href="#">天梭-非凡创意、卓越品质</a></li>
          </ul>
        </div>

	</div>
	<div class="img290">        	<a href="#"><img alt="天梭-品牌馆" src="images/ad/13161557482.jpg" width="290" height="180"></a>
	 </div>
	<div id="slide2" class="tuan">
    	<p id="slideTit2" class="titBar t-titBar"><strong style="margin-right:25px;">团购</strong><span style="border-right:none; padding-left:80px; text-align:right;" class="hover" onMouseOver="setSlide(2,0)">本期</span><!--<span onmouseover="setSlide(2,1)" class="" style="border-right-width: 0px;">下期预告</span>--></p>
        <div style="display: block;">



                      <script>
		   jQuery(function(){
					  clock_out('tuan_0_day','tuan_0_hour','tuan_0_min','tuan_0_second')
					  })
		   </script>
            <ul>

                <li class="img"><a href="#" title="天梭T038.207.11.057.01"><img src="images/watch/5500_thumb_G_1297797056239.jpg" alt="天梭T038.207.11.057.01" width="100" height="100"></a></li>
				<li class="intro"><span class="tuanTime">还剩: <font id="tuan_0_day">2</font>天<font id="tuan_0_hour">2</font>小时<font id="tuan_0_min">33</font>分<font id="tuan_0_second">58</font>秒</span>
				<span class="tit"><a href="#" title="天梭T038.207.11.057.01 唯意系列 女士机械表">天梭T038.207.11.057.01 唯意系列 女士机械...</a></span>
                <span class="Proprice">抢购价:<font class="Price">￥3,720</font></span></li>

            </ul>
                       <script>
		   jQuery(function(){
					  clock_out('tuan_1_day','tuan_1_hour','tuan_1_min','tuan_1_second')
					  })
		   </script>
            <ul>

                <li class="img"><a href="#" title="浪琴L2.628.4.78.6"><img src="images/watch/4072_thumb_G_1285379143197.jpg" alt="浪琴L2.628.4.78.6" width="100" height="100"></a></li>
				<li class="intro"><span class="tuanTime">还剩: <font id="tuan_1_day">2</font>天<font id="tuan_1_hour">2</font>小时<font id="tuan_1_min">33</font>分<font id="tuan_1_second">58</font>秒</span>
				<span class="tit"><a href="#" title="浪琴Longines 名匠系列 蓝宝石水晶玻璃/日历/防水 男士机械表 L2.628.4.78.6">浪琴Longines 名匠系列 蓝宝石水晶玻璃/...</a></span>
                <span class="Proprice">抢购价:<font class="Price">￥13,090</font></span></li>

            </ul>
                       <script>
		   jQuery(function(){
					  clock_out('tuan_2_day','tuan_2_hour','tuan_2_min','tuan_2_second')
					  })
		   </script>
            <ul>

                <li class="img"><a href="#" title="劳力士116400"><img src="images/watch/569_thumb_G_1304704551075.jpg" alt="劳力士116400" width="100" height="100"></a></li>
				<li class="intro"><span class="tuanTime">还剩: <font id="tuan_2_day">19</font>天<font id="tuan_2_hour">2</font>小时<font id="tuan_2_min">33</font>分<font id="tuan_2_second">58</font>秒</span>
				<span class="tit"><a href="/Rolex-g569.html" title="劳力士Rolex MILGAUSS 抗磨/蓝水晶/防水 男士机械表 116400（黑色）">劳力士Rolex MILGAUSS 抗磨/蓝水晶/防水 ...</a></span>
                <span class="Proprice">抢购价:<font class="Price">￥51,869</font></span></li>

            </ul>
                       <script>
		   jQuery(function(){
					  clock_out('tuan_3_day','tuan_3_hour','tuan_3_min','tuan_3_second')
					  })
		   </script>
            <ul>

                <li class="img"><a href="#" title="天梭T41.1.423.33"><img src="images/watch/344_thumb_G_1316563675085.jpg" alt="天梭T41.1.423.33" width="100" height="100"></a></li>
				<li class="intro"><span class="tuanTime">还剩: <font id="tuan_3_day">19</font>天<font id="tuan_3_hour">2</font>小时<font id="tuan_3_min">33</font>分<font id="tuan_3_second">58</font>秒</span>
				<span class="tit"><a href="/Tissot-g344.html" title="天梭Tissot 力洛克系列 蓝宝石/防水 男士机械表 T41.1.423.33">天梭Tissot 力洛克系列 蓝宝石/防水 男...</a></span>
                <span class="Proprice">抢购价:<font class="Price">￥3,359</font></span></li>

            </ul>
            
        </div>
        <div class="none" style="display: none;">

      </div>


    </div>
	<div class="img290 clear_height"></div>
   </div>
   <div class="clear"></div>
</div>
<!---第二通栏end---->
<!---通栏广告start----><!---通栏end---->
<!---第三通栏start---->
<div class="box980">
   <div class="box680">

       <div id="slide5" class="hotPro box650">
			<p id="slideTit5" class="titBar p-titBar"><strong>特价专区</strong><span class="hover" onMouseOver="setSlide(5,0)">时尚派对元素</span><span class="" onMouseOver="setSlide(5,1)">浪漫情侣对表</span><span class="" onMouseOver="setSlide(5,2)">白领丽人首选</span></p>
                         <div class="proList " style="display: block;">
            <span class="clear"></span>
            
                <c:forEach var="timeProduct" items="${sessionScope.timeProducts}" varStatus="status">
               		<c:if test="${(status.index+1)%3!=0}">
               			<dl>
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${timeProduct.id}" title="${timeProduct.brand}"><img alt="${timeProduct.productName}" src="${timeProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${timeProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${timeProduct.id}">${timeProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${timeProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               		<c:if test="${(status.index+1)%3==0}">
               			<dl class="ldn">
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${timeProduct.id}" title="${timeProduct.brand}"><img alt="${timeProduct.productName}" src="${timeProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${timeProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${timeProduct.id}">${timeProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${timeProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               </c:forEach>
            
            			<span class="clear"></span>
            </div>
                        <div class="proList none" style="display: none;">
            <span class="clear"></span>
            
                <c:forEach var="styleProduct" items="${sessionScope.styleProducts}" varStatus="status">
               		<c:if test="${(status.index+1)%3!=0}">
               			<dl>
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${styleProduct.id}" title="${styleProduct.brand}"><img alt="${styleProduct.productName}" src="${styleProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${styleProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${styleProduct.id}">${styleProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${styleProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               		<c:if test="${(status.index+1)%3==0}">
               			<dl class="ldn">
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${styleProduct.id}" title="${styleProduct.brand}"><img alt="${styleProduct.productName}" src="${styleProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${styleProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${styleProduct.id}">${styleProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${styleProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               </c:forEach>
            
            			<span class="clear"></span>
            </div>
                        <div class="proList none" style="display: none;">
            <span class="clear"></span>
            
                <c:forEach var="styleProduct" items="${sessionScope.styleProducts}" varStatus="status">
               		<c:if test="${(status.index+1)%3!=0}">
               			<dl>
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${styleProduct.id}" title="${styleProduct.brand}"><img alt="${styleProduct.productName}" src="${styleProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${styleProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${styleProduct.id}">${styleProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${styleProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               		<c:if test="${(status.index+1)%3==0}">
               			<dl class="ldn">
		            	<dt><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${styleProduct.id}" title="${styleProduct.brand}"><img alt="${styleProduct.productName}" src="${styleProduct.pic}" width="175" height="175"></a></dt>
		                <dd class="hotword">${styleProduct.remark}</dd>
		                <dd class="protit"><a href="${pageContext.request.contextPath}/index!toProductDetail.do?productId=${styleProduct.id}">${styleProduct.productName}</a></dd>
		                <dd class="Proprice"><span>特价:</span><span class="Price">￥${styleProduct.specialPrice}</span> 抢购</dd>
		    			</dl>
               		</c:if>
               </c:forEach>
            
            			<span class="clear"></span>
            </div>
   	 </div>
   </div>

   <div class="box290">        	<div class="img290 "><a href="#"><img alt="天梭T035.617.11.051.00" src="images/ad/20111025155037shouyeguangg.jpg"></a></div>
			        	<div class="img290 clear_height IE6"><a href="#"><img alt="梅花Titoni品牌馆" src="images/ad/13171039012.jpg"></a></div>
  </div>
			<div class="clear"></div>
   </div>
</div>
<!---第三通栏end---->
<!---评价及报道start----><!---评价及报道end---->
<!---通底start---->
<div class="buttom">
<!---帮助中心start---->
<div class="clear"></div>
<!---帮助中心end---->
<!---友情链接start----><!---友情链接end---->
<!---帮助中心start---->
<div class="clear"></div>
</div>
<!---帮助中心end---->
<!---通底end---->
</div>
</body>
</html>
