<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>付款页面</title>
<link href="css/flow.css" rel="stylesheet" type="text/css" /></head>

<body>
<c:if test="${sessionScope.loginUser==null}">
	<c:redirect url="../login_register.jsp"></c:redirect>
</c:if>
<div class="box">
	<div class="header">
		<div class="service"><font color="#000000">若您在购物中遇到问题，可拨打13751801572服务热线</font>(免长途费) </div>
		<div class="nav">
		   <div class="logo"><a href="#"><img src="images/user/flow_logo.jpg" alt="淘宝网订单提交中心" width="415" height="66" /></a></div>
		   <div class="navitem"><img src="images/user/flow_pay.jpg" width="338" height="29" /></div>
		</div>
</div>

<div class="information">
	<dl>
		<dt>恭喜，您的订单提交成功，请您尽快付款！</dt>
		<dd>
        您的订单号：<strong><font style="color:#BA0001">${sessionScope.orderId}</font></strong>&nbsp;&nbsp;
        应付金额：<strong><font class="amountStyle">￥${sessionScope.cart.userOrder.totalPrice}</font></strong>元 <span>&nbsp;&nbsp;
        支付方式： <strong>在线网银</strong> <br />
        
		配送方式：<strong style="color:#BA0001">顺丰快递或EMS</strong>&nbsp;&nbsp; 
        送货时间：<strong style="color:#BA0001">只工作日送货</strong></span></dd><br />

		<dd><b>还差一步，请立即支付</b>(由于商品的特殊性，库存数量有限)     <a href="pay!toOrderDetail.do?orderId=${sessionScope.orderId}">查看订单状态</a>   <a href="#">查看银行限额帮助</a></dd>
	</dl>
</div>

<div class="pay">
	<dl>
      
      <dd><br /><form style="text-align:center;" onsubmit="return check_form(this)" action="https://pay.ips.com.cn/ipayment.aspx" method="post" target="_blank">
        <div class='bank_list' >
          <span class='bank_item'><input type='radio' name='pd_FrpId' value='ICBC-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/zggsyh.gif' alt='中国工商银行' width='100' height='30' title='网上签约注册用户（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='ICBC-WAP' onclick='display_blank_info(this.value)'><img src='images/banklogo/zggsyhhand.gif' alt='中国工商银行' width='100' height='30' title='工行手机支付（仅限工行手机签约客户）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='CMBCHINA-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/zsyh.gif' alt='招商银行' width='100' height='30' title='银行卡支付（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='BOC-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/zgyh.gif' alt='中国银行' width='100' height='30' title='银行卡支付（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='CCB-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/zgjsyh.gif' alt='中国建设银行' width='100' height='30' title='网上银行签约客户（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='NBCB-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/banknbyh.gif' alt='宁波银行' width='100' height='30' title='银行卡支付（全国范围）'/></span>
<br>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='SDB-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/szyh.gif' alt='深圳发展银行' width='100' height='30' title='发展卡支付（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='BCCB-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/bjyh.gif' alt='北京银行' width='100' height='30' title='北京银行（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='HKBEA-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/dyyh.gif' alt='东亚银行' width='100' height='30' title='银行卡支付（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='CBHB-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/bhyh.gif' alt='渤海银行' width='100' height='30' title='银行卡支付（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='CMBC-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/msyh.gif' alt='民生银行' width='100' height='30' title='民生卡（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='NJCB-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/njyh.gif' alt='南京银行' width='100' height='30' title='银行卡支付（全国范围）'/></span>
<br><span class='bank_item'><input type='radio' name='pd_FrpId' value='PINGANBANK-NET' onclick='display_blank_info(this.value)'><img src='images/banklogo/pmyh.gif' alt='平安银行' width='100' height='30' title='平安借记卡（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='SPDB-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/pdfzyh.gif' alt='浦东发展银行' width='100' height='30' title='东方卡（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='00056' onclick='display_blank_info(this.value)'><img src='images/banklogo/bjncsyyh.gif' alt='北京农村商业银行' width='100' height='30' title='银行卡支付（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='SHB-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/shyh.gif' alt='上海银行' width='100' height='30' title='银行卡支付（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='POST-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/yzcc.gif' alt='邮政储蓄' width='100' height='30' title='银联网上支付签约客户（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='CZ-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/zhsyh.gif' alt='浙商银行' width='100' height='30' title='银行卡支付（全国范围）'/></span>
<br>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='ECITIC-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/zxyh.gif' alt='中信银行' width='100' height='30' title='银行卡支付（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='ABC-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/zgnyyh.gif' alt='中国农业银行' width='100' height='30' title='网上银行签约客户（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='BOCO-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/jtyh.gif' alt='交通银行' width='100' height='30' title='太平洋卡（全国范围）'/></span>
<span class='bank_item'><input type='radio' name='pd_FrpId' value='CEB-NET-B2C' onclick='display_blank_info(this.value)'><img src='images/banklogo/gdyh.gif' alt='光大银行' width='100' height='30' title='银行卡支付（全国范围）'/></span>
</div>
        <div id='bank_submit_div'><input type='submit' id='bank_submit' value='立刻支付'></div></form><br /><script>
				function check_form(o) {
				var radio=o.pd_FrpId;
				for(var i=0;i<radio.length;i++)
				{
				if (radio[i].checked) {
				return true;
				}
				}

				alert("请选择一个银行");
				return false;
				}</script><div id='bank_info_00056' class='bank_info' style='display:none'></div><div id='bank_info_00050' class='bank_info' style='display:none'></div><div id='bank_info_00095' class='bank_info' style='display:none'></div><div id='bank_info_00096' class='bank_info' style='display:none'></div><div id='bank_info_00057' class='bank_info' style='display:none'><p align="center"><strong>中国光大银行</strong><strong> </strong></p>
<p><strong>一</strong><strong>、</strong><strong>适用条件：</strong>没有消费金额的限制。 <br />
    <strong>二</strong><strong>、</strong><strong>分期期数：</strong>自主选择分期期数3个月、6个月、9个月、12个月。 <br />
    <strong>三、</strong><strong>分期手续费率：</strong>每一期是千分之五。 <br />
    <strong>四、</strong><strong>申请流程：</strong>中国光大银行信用卡自选分期服务是指持卡人随时可以通过即时申请、当日生效。 </p>
<strong>五、客服热线：</strong>全球服务热线4007-888-888。</div><div id='bank_info_00052' class='bank_info' style='display:none'><p align="center"><strong>广东发展银行</strong><strong> </strong></p>
<p><strong>一、适用条件：</strong>只要单笔满¥500元。<br />
    <strong>二、申请方式</strong>：帐单日的前三个工作日之前申请 <br />
    <strong>三、可选期数：</strong>期数包括3期、6期、12期、18期及24期，可灵活选择。 <br />
    <strong>四、分期手续费率:</strong><strong> </strong></p>
<div align="center">
  <table  width="90%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
    <tr>
      <td width="165" nowrap="nowrap" bgcolor="#FFFFFF"><br />
      分期期数（每月为1期） </td>
      <td width="81" nowrap="nowrap" bgcolor="#FFFFFF"><p align="center">3期 </p></td>
      <td width="96" nowrap="nowrap" bgcolor="#FFFFFF"><p align="center">6期 </p></td>
      <td width="91" bgcolor="#FFFFFF"><p align="center">12期 </p></td>
      <td width="88" bgcolor="#FFFFFF"><p align="center">18期 </p></td>
      <td width="99" nowrap="nowrap" bgcolor="#FFFFFF"><p align="center">24期 </p></td>
    </tr>
    <tr>
      <td width="165" nowrap="nowrap" bgcolor="#FFFFFF"><p align="center">每期手续费率 </p></td>
      <td width="81" nowrap="nowrap" bgcolor="#FFFFFF"><p align="center">0.65％ </p></td>
      <td width="96" nowrap="nowrap" bgcolor="#FFFFFF"><p align="center">0.65％ </p></td>
      <td width="91" bgcolor="#FFFFFF"><p align="center">0.65％ </p></td>
      <td width="88" bgcolor="#FFFFFF"><p align="center">0.7％ </p></td>
      <td width="99" nowrap="nowrap" bgcolor="#FFFFFF"><p align="center">0.72％ </p></td>
    </tr>
  </table>
</div>
<p><strong>五、客服电话：</strong><strong> 95508</strong></p></div><div id='bank_info_00011' class='bank_info' style='display:none'></div><div id='bank_info_00011' class='bank_info' style='display:none'></div><div id='bank_info_00081' class='bank_info' style='display:none'></div><div id='bank_info_00041' class='bank_info' style='display:none'><p align="center"><strong>华夏银行</strong><strong> </strong></p>
<p><strong>一、适用条件：</strong>单笔金额不低于人民币500元或等值外币。 <br />
    <strong>二、申请方式：</strong>刷卡成功的的3-4个工作日后致电银行申请，一般是需要在帐单日的前三个工作日申请完成。<strong> </strong><br />
    <strong>三、申请期数：</strong>华夏银行分为3期、6期、9期、12期、18期、24期，每月手续费为消费全额的千分之五。 <br />
    <strong>四、费率标准：</strong>按交易金额的  0.5%/月收取。<strong> </strong><br />
    <strong>五、客服中心电话：400-66-95577</strong></p></div><div id='bank_info_00013' class='bank_info' style='display:none'><p  align="center"><strong>中国民生银行</strong><strong> </strong></p>
<p><strong>一、适用条件：</strong>申请自由分期付款的单笔交易金额最低为人民币600元（或等值外币），最高为人民币50000元（或等值外币）。<br />
    <strong>二、申请方式</strong>：帐单日的前三个工作日之前申请<strong>.</strong>持卡人可通过登录民生信用卡网上银行或拨打客服热线申请；<br />
    <strong>三、可选期数：</strong>为3期、6期、9期、12期， <br />
    <strong>四、分期手续费率:</strong></p>
<table style="margin-left:25px" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="55" bgcolor="#FFFFFF">
        <strong>期数</strong><strong> </strong> </td>
    <td width="142" bgcolor="#FFFFFF"><p align="center">3期 </p></td>
    <td width="142" bgcolor="#FFFFFF"><p align="center">6期 </p></td>
    <td width="142" bgcolor="#FFFFFF"><p align="center">9期 </p></td>
    <td width="142" bgcolor="#FFFFFF"><p align="center">12期 </p></td>
  </tr>
  <tr>
    <td width="55" bgcolor="#FFFFFF"><p ><strong>费率 </strong></p></td>
    <td width="142" bgcolor="#FFFFFF"><p align="center">0.80%</p></td>
    <td width="142" bgcolor="#FFFFFF"><p align="center">0.65%</p></td>
    <td width="142" bgcolor="#FFFFFF"><p align="center">0.655.</p></td>
    <td width="142" bgcolor="#FFFFFF"><p align="center">0.6%</p></td>
  </tr>
</table>
<strong>五、客服热线：400-66-95568</strong></div><div id='bank_info_00055' class='bank_info' style='display:none'></div><div id='bank_info_00087' class='bank_info' style='display:none'></div><div id='bank_info_00032' class='bank_info' style='display:none'><p align="center"><strong>浦东发展银行 </strong></p>
<p><strong>一、适用条件：</strong>单笔消费人民币200元及以上。 <br />
    <strong>二、可选期数：</strong>可自由选择6期、12期、18期、24期（每一个月为一期） <br />
    <strong>三、费率标准：</strong><strong> </strong></p>
<table width="648" border="1" style="margin-left:25px" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
  <tr>
    <td width="132" bgcolor="#FFFFFF">
    分期付款期数（月） </td>
    <td width="140" bgcolor="#FFFFFF"><p align="center">6</p></td>
    <td width="140" bgcolor="#FFFFFF"><p align="center">12</p></td>
    <td width="140" bgcolor="#FFFFFF"><p align="center">18</p></td>
    <td width="97" bgcolor="#FFFFFF"><p align="center">24</p></td>
  </tr>
  <tr>
    <td width="132" bgcolor="#FFFFFF"><p align="center">月分期手续费率 </p></td>
    <td width="140" bgcolor="#FFFFFF"><p align="center">0．74</p></td>
    <td width="140" bgcolor="#FFFFFF"><p align="center">0．72%</p></td>
    <td width="140" bgcolor="#FFFFFF"><p align="center">0．72%</p></td>
    <td width="97" bgcolor="#FFFFFF"><p align="center">0．71% </p></td>
  </tr>
</table>
<p><strong>四、申请方式：</strong>在信用卡帐单日的前三个工作日致电银行申请分期。<br />
    <strong>五、客服电话：800-820-8788</strong>。 </p></div><div id='bank_info_00030' class='bank_info' style='display:none'></div><div id='bank_info_00084' class='bank_info' style='display:none'></div><div id='bank_info_00011' class='bank_info' style='display:none'></div><div id='bank_info_00016' class='bank_info' style='display:none'><p align="center"><strong>兴业银行 </strong></p>
<p><strong>一、适用条件：</strong>单笔金额达到人民币 500 元及以上<br />
    <strong>二、申请方式：</strong>持卡人须在消费交易记账后，当期账单日之前（不含当期账单日），申请办理消费分期。<br />
    <strong>三、可选期数：</strong>持卡人可申请的分期期数为 3 期、6 期、12 期、18 期、24 期（每期为一个月）。在分期后第一个账单日一次性入账。<br />
    <strong>四、各分期期数的分期手续费率收费标准如下：</strong></p>
<table border="00" style="margin-left:25px" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="108" valign="top" bgcolor="#FFFFFF">
        <strong>分期期数</strong><strong> </strong> </td>
    <td width="94" valign="top" bgcolor="#FFFFFF"><p align="center">3 </p></td>
    <td width="116" valign="top" bgcolor="#FFFFFF"><p align="center">6</p></td>
    <td width="116" valign="top" bgcolor="#FFFFFF"><p align="center">9</p></td>
    <td width="116" valign="top" bgcolor="#FFFFFF"><p align="center">12</p></td>
    <td width="73" valign="top" bgcolor="#FFFFFF"><p align="center">18</p></td>
  </tr>
  <tr>
    <td width="108" valign="top" bgcolor="#FFFFFF"><p ><strong>分期手续费率</strong><strong> </strong></p></td>
    <td width="94" valign="top" bgcolor="#FFFFFF"><p align="center">2．1%</p></td>
    <td width="116" valign="top" bgcolor="#FFFFFF"><p align="center">3．6%</p></td>
    <td width="116" valign="top" bgcolor="#FFFFFF"><p align="center">7．2%</p></td>
    <td width="116" valign="top" bgcolor="#FFFFFF"><p align="center">10．8%</p></td>
    <td width="73" valign="top" bgcolor="#FFFFFF"><p align="center">14．4%</p></td>
  </tr>
</table>
<p><strong>五、客户服务热线：</strong><strong>95561</strong></p></div><div id='bank_info_00051' class='bank_info' style='display:none'></div><div id='bank_info_00094' class='bank_info' style='display:none'></div><div id='bank_info_00086' class='bank_info' style='display:none'></div><div id='bank_info_00054' class='bank_info' style='display:none'><p align="center"><strong>中信银行 </strong></p><p>
    <strong><br />
    </strong><strong>一、适用条件：</strong>单笔消费<strong>100</strong><strong>元</strong>及以上。 <br />
    <strong>二、可选期数：</strong>3期、6期、12期、18期、24期。 <br />
    <strong>三、申请方式：</strong>刷卡成功的的3-4个工作日后致电银行申请，一般是需要在帐单日的前三个工作日申请完成。 <br />
    <strong>四、费率标准：</strong><strong> </strong></p>
<table border="0" style="margin-left:25px" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="139" valign="top" bgcolor="#FFFFFF"><br />
    分期付款期数（月） </td>
    <td width="102" valign="top" bgcolor="#FFFFFF"><p align="center">3期 </p></td>
    <td width="102" valign="top" bgcolor="#FFFFFF"><p align="center">6期 </p></td>
    <td width="102" valign="top" bgcolor="#FFFFFF"><p align="center">12期 </p></td>
    <td width="102" valign="top" bgcolor="#FFFFFF"><p align="center">18期 </p></td>
    <td width="78" valign="top" bgcolor="#FFFFFF"><p align="center">24期 </p></td>
  </tr>
  <tr>
    <td width="139" valign="top" bgcolor="#FFFFFF"><p>月分期手续费率 </p></td>
    <td width="102" valign="top" bgcolor="#FFFFFF"><p align="center">0．65%</p></td>
    <td width="102" valign="top" bgcolor="#FFFFFF"><p align="center">0．6%</p></td>
    <td width="102" valign="top" bgcolor="#FFFFFF"><p align="center">0．55%</p></td>
    <td width="102" valign="top" bgcolor="#FFFFFF"><p align="center">0．64%</p></td>
    <td width="78" valign="top" bgcolor="#FFFFFF"><p align="center">0．6%</p></td>
  </tr>
</table>
<p><strong>五、客服电话：</strong><strong>400-88-95558</strong> </p></div><div id='bank_info_00017' class='bank_info' style='display:none'><p align="center"><strong>中国农业银行 </strong></p>
<p><strong>一、适用条件</strong>：持卡人单笔刷卡消费满人民币500元及以上。<br />
    <strong>二、</strong><strong>可选期数</strong>：可自由选择3期、6期或12期、18期、24期。（每月为一期）。<br />
    <strong>三、</strong><strong>费率标准</strong>：每一期是千分之五。 <br />
    <strong>四、申请方式：</strong>在信用卡帐单日的前三个工作日致电银行申请分期。<br />
    <strong>五、客服电话：95599</strong></p></div><div id='bank_info_00005' class='bank_info' style='display:none'><p align="center"><strong>中国交通银行 </strong></p>
<p><strong>一、适用条件：</strong>信用卡刷卡消费单笔达人民币1,500元或美元100元（交通银行Y-POWER信用卡分期起始金额为人民币500元或美元60元）， <br />
    <strong>二、可选期数：</strong>自由分成6、9、12、18、24个月付款。 <br />
    <strong>三、申请方式：</strong>在交易日2天后至到期还款日前3天间致电信用卡中心客户服务热线或登录信用卡网银申请分期。 <br />
    <strong>四、费率表：</strong><strong> </strong></p>

      <table border="0" style="margin-left:25px" cellspacing="1" cellpadding="0" bgcolor="#CCCCCC" width="647">
        <tr>
          <td width="203" colspan="2" bgcolor="#FFFFFF"><br />
                <strong>交易金额达（元）</strong><strong> </strong> </td>
          <td width="96" rowspan="2" bgcolor="#FFFFFF"><p align="center"><strong>每月手续费率（</strong><strong>%</strong><strong>）</strong><strong> </strong></p></td>
          <td width="348" colspan="2" bgcolor="#FFFFFF"><p align="center"><strong>每月还款金额（元）</strong><strong> </strong></p></td>
        </tr>
        <tr>
          <td width="87" bgcolor="#FFFFFF"><p align="center">人民币（RMB） </p></td>
          <td width="116" bgcolor="#FFFFFF"><p align="center">美元（USD） </p></td>
          <td width="156" bgcolor="#FFFFFF"><p align="center">24个月（人民币RMB） </p></td>
          <td width="192" bgcolor="#FFFFFF"><p align="center">24个月（美元USD） </p></td>
        </tr>
        <tr>
          <td width="87" bgcolor="#FFFFFF"><p align="center">1,500</p></td>
          <td width="116" bgcolor="#FFFFFF"><p align="center">100</p></td>
          <td width="96" bgcolor="#FFFFFF"><p align="center">0.72%</p></td>
          <td width="156" bgcolor="#FFFFFF"><p align="center">73</p></td>
          <td width="192" bgcolor="#FFFFFF"><p align="center">5</p></td>
        </tr>
        <tr>
          <td width="87" bgcolor="#FFFFFF"><p align="center">6,500</p></td>
          <td width="116" bgcolor="#FFFFFF"><p align="center">800</p></td>
          <td width="96" bgcolor="#FFFFFF"><p align="center">0.70%</p></td>
          <td width="156" bgcolor="#FFFFFF"><p align="center">316</p></td>
          <td width="192" bgcolor="#FFFFFF"><p align="center">39</p></td>
        </tr>
        <tr>
          <td width="87" bgcolor="#FFFFFF"><p align="center">12,500</p></td>
          <td width="116" bgcolor="#FFFFFF"><p align="center">1,500</p></td>
          <td width="96" bgcolor="#FFFFFF"><p align="center">0.68%</p></td>
          <td width="156" bgcolor="#FFFFFF"><p align="center">606</p></td>
          <td width="192" bgcolor="#FFFFFF"><p align="center">73</p></td>
        </tr>
</table>

<p><strong>五、客服电话：</strong><strong>95559</strong><strong>，信用卡中心客服：</strong><strong>400-800-9888</strong> </p></div><div id='bank_info_00083' class='bank_info' style='display:none'><p align="center"><strong>中国银行 </strong></p><p>
    <strong>一、适用条件：</strong>您只需单笔刷卡消费达1000元以上 <br />
    <strong>二、分期期数：</strong>自主选择分期期数3个月、6个月、9个月、12个月、18个月和24个月。<strong>我们将一次性收取分期手续费。 </strong><br />
    <strong>三、申请流程</strong>：在交易发生日3天之后至最近一期账单日前２天致电申请． <br />
    <strong>四、手续费率：</strong>（本费率表将根据市场情况适时调整） </p>
<table width="660" border="0" style="margin-left:25px" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
  <tr bordercolor="#CCCCCC">
    <td width="108" valign="top" bgcolor="#FFFFFF">分期期数 </td>
    <td width="84" valign="top" bgcolor="#FFFFFF"><p align="center">3期 </p></td>
    <td width="88" valign="top" bgcolor="#FFFFFF"><p align="center">6期 </p></td>
    <td width="92" valign="top" bgcolor="#FFFFFF"><p align="center">9期 </p></td>
    <td width="96" valign="top" bgcolor="#FFFFFF"><p align="center">12期 </p></td>
    <td width="111" valign="top" bgcolor="#FFFFFF"><p align="center">18期 </p></td>
    <td width="81" valign="top" bgcolor="#FFFFFF"><p align="center">24期 </p></td>
  </tr>
  <tr bordercolor="#CCCCCC">
    <td width="108" valign="top" bgcolor="#FFFFFF"><p align="left">分期手续费率 </p></td>
    <td width="84" valign="top" bgcolor="#FFFFFF"><p align="center">1．95%</p></td>
    <td width="88" valign="top" bgcolor="#FFFFFF"><p align="center">3．6%</p></td>
    <td width="92" valign="top" bgcolor="#FFFFFF"><p align="center">5．4%</p></td>
    <td width="96" valign="top" bgcolor="#FFFFFF"><p align="center">7．2%</p></td>
    <td width="111" valign="top" bgcolor="#FFFFFF"><p align="center">11．7%</p></td>
    <td width="81" valign="top" bgcolor="#FFFFFF"><p align="center">15%</p></td>
  </tr>
</table>
<p>注：客户提供资料我们直接帮客户分期的，是属于商城分期，不在这个范围内的。 <br />
    <strong>五、客服热线：400-66-95566/(010)66085566</strong><strong> </strong></p></div><div id='bank_info_00015' class='bank_info' style='display:none'><p align="center"><strong>中国建设银行</strong><strong> </strong></p>

<p align="left"> <strong>一、适用条件</strong>：持卡人单笔刷卡消费满人民币<strong>1000</strong>元及以上。</p>
<p align="left"><strong>二、可选期数：</strong>可自由选择3期、6期或12期（每月为一期）。</p>

<p align="left"><strong>三、费率标准：</strong> 
  消费分期付款业务手续费率标准请参照下表。 </p>
<table width="93%" style="margin-left:25px" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
     
    <td width="155" bgcolor="#FFFFFF"><br />
    分期付款期数（月） </td>
    <td width="149" bgcolor="#FFFFFF"><p align="center">3 </p></td>
    <td width="149" bgcolor="#FFFFFF"><p align="center">6 </p></td>
    <td width="149" bgcolor="#FFFFFF"><p align="center">12 </p></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><p align="center">月分期手续费率 </p></td>
    <td width="149" bgcolor="#FFFFFF"><p align="center">0.70% </p></td>
    <td width="149" bgcolor="#FFFFFF"><p align="center">0.60% </p></td>
    <td width="149" bgcolor="#FFFFFF"><p align="center">0.60% </p></td>
  </tr>
</table>
<p align="left"><strong>四、申请方法：</strong> <br />
  刷卡后至最近一期账单日前3个工作日期间，申请后将在2个工作日内处理完毕，处理结果将以短信告知，持卡人也可在2个工作日后致电咨询。 <br />
  <strong>五、客服电话：95533</strong> </p></div><div id='bank_info_00004' class='bank_info' style='display:none'><p align="center"><strong> 中国工商银行</strong><strong> </strong></p>
<p>  <strong>一、开办条件</strong>：分期付款业务的起始金额人民币/港币600元、美元/欧元100元。<a name="sfbz" id="sfbz"></a> <br />
  二、税费标准：本行向客户提供3期、6期、9期、12期、18期、24期六档期数选择，按照期数的不同收取分期付款手续费。 <br />
  三、<strong>期数及手续费标准如下： </strong> </p>
<div align="center">
  <table width="93%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
    <tr>
      <td bgcolor="#FFFFFF"><br />
          <strong>期数选择</strong> </td>
      <td bgcolor="#FFFFFF"><p align="center"><strong>3</strong><strong>期</strong> </p></td>
      <td bgcolor="#FFFFFF"><p align="center"><strong>6</strong><strong>期</strong> </p></td>
      <td bgcolor="#FFFFFF"><p align="center"><strong>9</strong><strong>期</strong> </p></td>
      <td bgcolor="#FFFFFF"><p align="center"><strong>12</strong><strong>期</strong> </p></td>
      <td bgcolor="#FFFFFF"><p align="center"><strong>18</strong><strong>期</strong> </p></td>
      <td width="13%" bgcolor="#FFFFFF"><p align="center"><strong>24</strong><strong>期</strong> </p></td>
    </tr>
    <tr>
      <td bgcolor="#FFFFFF"><p align="center">分期付款（展期）手续费率 </p></td>
      <td bgcolor="#FFFFFF"><p align="center">1.65%（平均每月0.55%） </p></td>
      <td bgcolor="#FFFFFF"><p align="center">3.6%（平均每月0.6%） </p></td>
      <td bgcolor="#FFFFFF"><p align="center">5.4%（平均每月0.6%） </p></td>
      <td bgcolor="#FFFFFF"><p align="center">7.2%（平均每月0.6%） </p></td>
      <td bgcolor="#FFFFFF"><p align="center">11.7%（平均每月0.65%） </p></td>
      <td width="13%" bgcolor="#FFFFFF"><p align="center">15.6%（平均每月0.65%） </p></td>
    </tr>
  </table>
</div>
<p>注：1.分期付款手续费、展期手续费于办理业务时按不同标准一次性或每月从持卡人账户中扣收；<br />
  2.不同地区分期付款手续费、展期手续费可能因促销活动而不同，具体标准请垂询当地工商银行。 <br />
  <strong>四、操作指南</strong><br />
  1.在工行指定特约商户刷卡消费时，可直接向收银员提出分期付款申请。<br />
  2.消费交易入账次日至该笔消费到期还款日前三个工作日之间，直接拨打客服转人工即可轻松申请；也可到工行营业网点申请。 <br />
  <strong>五、客服热线：</strong><strong>95588</strong> </p></div><div id='bank_info_00026' class='bank_info' style='display:none'><p align="center"><strong> 中国工商银行</strong><strong> </strong></p>
<p>  <strong>一、开办条件</strong>：分期付款业务的起始金额人民币/港币600元、美元/欧元100元。<a name="sfbz" id="sfbz"></a> <br />
  二、税费标准：本行向客户提供3期、6期、9期、12期、18期、24期六档期数选择，按照期数的不同收取分期付款手续费。 <br />
  三、<strong>期数及手续费标准如下： </strong> </p>
<div align="center">
  <table width="93%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
    <tr>
      <td bgcolor="#FFFFFF"><br />
          <strong>期数选择</strong> </td>
      <td bgcolor="#FFFFFF"><p align="center"><strong>3</strong><strong>期</strong> </p></td>
      <td bgcolor="#FFFFFF"><p align="center"><strong>6</strong><strong>期</strong> </p></td>
      <td bgcolor="#FFFFFF"><p align="center"><strong>9</strong><strong>期</strong> </p></td>
      <td bgcolor="#FFFFFF"><p align="center"><strong>12</strong><strong>期</strong> </p></td>
      <td bgcolor="#FFFFFF"><p align="center"><strong>18</strong><strong>期</strong> </p></td>
      <td width="13%" bgcolor="#FFFFFF"><p align="center"><strong>24</strong><strong>期</strong> </p></td>
    </tr>
    <tr>
      <td bgcolor="#FFFFFF"><p align="center">分期付款（展期）手续费率 </p></td>
      <td bgcolor="#FFFFFF"><p align="center">1.65%（平均每月0.55%） </p></td>
      <td bgcolor="#FFFFFF"><p align="center">3.6%（平均每月0.6%） </p></td>
      <td bgcolor="#FFFFFF"><p align="center">5.4%（平均每月0.6%） </p></td>
      <td bgcolor="#FFFFFF"><p align="center">7.2%（平均每月0.6%） </p></td>
      <td bgcolor="#FFFFFF"><p align="center">11.7%（平均每月0.65%） </p></td>
      <td width="13%" bgcolor="#FFFFFF"><p align="center">15.6%（平均每月0.65%） </p></td>
    </tr>
  </table>
</div>
<p>注：1.分期付款手续费、展期手续费于办理业务时按不同标准一次性或每月从持卡人账户中扣收；<br />
  2.不同地区分期付款手续费、展期手续费可能因促销活动而不同，具体标准请垂询当地工商银行。 <br />
  <strong>四、操作指南</strong><br />
  1.在工行指定特约商户刷卡消费时，可直接向收银员提出分期付款申请。<br />
  2.消费交易入账次日至该笔消费到期还款日前三个工作日之间，直接拨打客服转人工即可轻松申请；也可到工行营业网点申请。 <br />
  <strong>五、客服热线：</strong><strong>95588</strong> </p></div><div id='bank_info_00023' class='bank_info' style='display:none'><p align="center"><strong>深圳发展银行</strong><strong> </strong></p>
<p align="left"><strong>一、适用条件：</strong>持卡人单笔刷卡消费人民币500元及以上 <br />
    <strong>二、申请方式：帐单日的前三个工作日之前申请.</strong><strong>（本商城的可以帮客户直接分期，无需客户打电话申请！）</strong><strong> </strong><br />
    <strong>三、申请期数：</strong>持卡人可申请分3期、6期、12期、24期分期。<br />
    <strong>四、我们商城上面的所有产品分期都是可以免利息免手续费，但是分期次数由我们自己定，客户</strong><strong><br />
    </strong><strong>如果选择的的分期次数比我商城定的期数少，那么可以客户定！如果是选高过本商城定的期数，就可以</strong><br />
    <br />
    <strong>五、费率标准：</strong> </p>
<table style="margin-left:25px" width="89%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="20%" valign="top" bgcolor="#FFFFFF"><br />
    分期期数 </td>
    <td width="20%" valign="top" bgcolor="#FFFFFF"><p align="center">3</p></td>
    <td width="20%" valign="top" bgcolor="#FFFFFF"><p align="center">6</p></td>
    <td width="20%" valign="top" bgcolor="#FFFFFF"><p align="center">12</p></td>
    <td width="20%" valign="top" bgcolor="#FFFFFF"><p align="center">24</p></td>
  </tr>
  <tr>
    <td width="20%" valign="top" bgcolor="#FFFFFF"><p align="center">每期手续费费率 </p></td>
    <td width="20%" valign="top" bgcolor="#FFFFFF"><p align="center">0．65%</p></td>
    <td width="20%" valign="top" bgcolor="#FFFFFF"><p align="center">0．7%</p></td>
    <td width="20%" valign="top" bgcolor="#FFFFFF"><p align="center">0．7%</p></td>
    <td width="20%" valign="top" bgcolor="#FFFFFF"><p align="center">0．72%</p></td>
  </tr>
</table>
<p><strong><br />
</strong><strong>五、客户服务热线：</strong><strong>4006695501</strong><strong>.</strong></p></div><div id='bank_info_00021' class='bank_info' style='display:none'><p align="center"><strong>招商银行</strong><strong> </strong></p>
<p><strong>一、适用条件</strong>：帐单消费满1000元及以上， <br />
    <strong>二、申请方式：</strong>在最后还款期的前三个工作日申请。 <br />
    <strong>三、可选期数</strong>：3期、6期、12期。 <br />
    <strong>四、分期手续费率</strong>：按一次性收取。 </p>
<table border="0" cellpadding="0" style="margin-left:25px" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="153" bgcolor="#FFFFFF"><br />
    分期期数 </td>
    <td width="153" align="center" bgcolor="#FFFFFF"><p>3</p></td>
    <td width="153" align="center" bgcolor="#FFFFFF"><p>6</p></td>
    <td width="153" align="center" bgcolor="#FFFFFF"><p>12</p></td>
  </tr>
  <tr>
    <td width="153" bgcolor="#FFFFFF"><p>每期手续费率 </p></td>
    <td width="153" align="center" bgcolor="#FFFFFF"><p>2．6%</p></td>
    <td width="153" align="center" bgcolor="#FFFFFF"><p>4．2%</p></td>
    <td width="153" align="center" bgcolor="#FFFFFF"><p>7．2%</p></td>
  </tr>
</table>
<p><strong>五、手机或小灵通：</strong><strong>400-820-5555</strong><strong>、固定电话：</strong><strong>800-820-5555</strong><strong> </strong></p>
<p align="center">&nbsp;</p></div><div id='bank_info_00085' class='bank_info' style='display:none'></div><div id='bank_info_00011' class='bank_info' style='display:none'></div></dd>
	</dl>
</div>

<div class="remarks">
	<dl>
		<dt>如何进行大额支付：</dt>
		<dd>1、如您订单金额较大，可以使用快钱支付中的招行、工行、建行、农行、广发进行一次性大额支付（一万元以下）；</dd>
		<dd>2、如果您有财付通、支付宝或快钱账户，可将款项先充入相应账户内，然后使用账户余额进行一次性大额支付；</dd>
		<dd>3、直接进入"我的订单"-"在线支付"页面进行分次支付（财付通支持多次支付），支付时请输入相应订单号及支付金额。</dd>
	</dl>
</div>

<div class="pay_ok">
	完成支付后，您可以： <a href="pay!toOrderDetail.do?orderId=${sessionScope.orderId}">查看订单状态</a>  <a href="index.jsp">继续购物</a>   <a href="#">问题反馈</a>
</div>

<div class="buttom"><a href="/article-67.html" rel="nofollow">关于我们</a> | <a href="/article-68.html" rel="nofollow">招商专区</a> | <a href="/article-71.html" rel="nofollow">推广合作</a> | <a href="/article-69.html" rel="nofollow">联系我们</a> | <a href="/friendly_link.html" rel="nofollow">友情链接</a> | <a href="/article-70.html" rel="nofollow">法律声明</a> | <a href="/article-1373.html" rel="nofollow">诚聘精英</a><br />
淘宝网-奢侈品商城 沪ICP备06028603号 版权所有 Copyright&copy;2010-2012 JuFengShang.com All Right Reserved.</div>
</div>
</body>
</html>
