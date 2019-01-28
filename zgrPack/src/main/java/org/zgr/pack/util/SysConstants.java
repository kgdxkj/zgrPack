package org.zgr.pack.util;


public class SysConstants {

	/**接口调用成功*/
	public static final String RES_OK = "0";
	/**接口调用失败*/
	public static final String RES_FAIL = "-1";
	/**含有敏感字符*/
	public static final String RES_KEYWORD_FAIL = "-305";
	/**被举报多次不能发布*/
	public static final String RES_REPORT_BLACK = "-801";
	/**未登录*/
	public static final String RES_NO_LOGIN = "-110";

	/**
	 * redis缓存键
	 * @author zy
	 */
	public static interface REDISCONSTANTS
	{
		public static final String WELCOMESERVICE = "welcome_service";
		public static final String HOME = "home";
		//分享缓存
		public static final String SHARING = "SHARING";
		
		//首页
		public static final String KEY_BANNER = "KEY_BANNER";
		//宫格
		public static final String KEY_ICON = "KEY_ICON";
		//楼层
		public static final String KEY_HOMEFLOOR = "KEY_HOMEFLOOR_";
		//跑马灯
		public static final String KEY_HRL = "KEY_HRL";
		//点赞
		public static final String KEY_PRAISE = "KEY_PRAISE";
		
		//黑名单缓存
		public static final String KEY_BLACKUSER = "KEY_BLACKUSER";
		//黑名单公告(二手发布)
		public static final String KEY_BLACKUSER_ADVICE = "KEY_BLACKUSER_ADVICE";
		//申诉(二手)
		public static final String KEY_BLACKUSER_APPEAL = "KEY_BLACKUSER_APPEAL";
		//学校
		public static final String KEY_SCHOOL = "KEY_SCHOOL";
		
		//申诉限制缓存
		public static final String KEY_APPEAL = "KEY_APPEAL";
		
		//精彩校园缓存
		public static final String KEY_FAVORABLE="KEY_FAVORABLE";
	}

	/**
	 * 点赞
	 * @author zy
	 * @date 2016-12-14 下午03:50:00
	 */
	public enum PRAISE_TYPE {  
		YYT("1"), //营业厅
		KCBDZ("2"),
		KCBSYRS("3"), 
		XN("4"),
		XW("5"),
		SECONDHAND_HOME("6");//二手超市首页
	 
	    private String value;
	    private PRAISE_TYPE(String value) {
	        this.value = value;
	    }
	    public String getValue() {
	        return value;
	    }
	}
	
	/**
	 * 留言
	 * @author zy
	 * @date 2016-12-15 下午02:18:21
	 */
	public enum LEAVE_MSG_TYPE {  
		SECONDHAND("1");//二手超市
	 
	    private String type;
	    private String tableName;
	    private String column;
	    private LEAVE_MSG_TYPE(String type) {
	        this.type = type;
	    }
	    public String getType() {
	        return type;
	    }
		public String getTableName() {
			return tableName;
		}
		public String getColumn() {
			return column;
		}
	}
	
	/**
	 * 报文的静态变量定义类 <br>
	 * <p>
	 * Copyright: Copyright (c) Apr 20, 2013 6:41:59 PM
	 * <p>
	 * Company: 欣网视讯
	 * 
	 * <p>
	 * 
	 * @author houxu@xwtec.cn
	 * @version 1.0.0
	 */
	public static interface PACKETS
	{
		/**
		 * KEY 接口名称
		 */
		public static final String KEY = "key";

		/**
		 * REQ_SEQ 调用序号
		 */
		public static final String REQ_SEQ = "req_seq";

		/**
		 * STATUS 调用状态码(200/403/404/408/500)
		 */
		public static final String STATUS = "status";

		/**
		 * RESTIME 执行时间
		 */
		public static final String RESTIME = "resTime";

		/**
		 * RESP_CODE
		 */
		public static final String RESP_CODE = "resp_code";

		/**
		 * DATA 数据体
		 */
		public static final String DATA = "data";

		/**
		 * RESP_DESC 业务操作的返回结果, 0表示操作正确, 其它表示错误, 错误代码的说明参考ts_result_code表
		 */
		public static final String RESP_DESC = "resp_desc";

		/**
		 * LOG 转发日志,在前台html界面转发注入的 包含在body内部
		 */
		public static final String LOG = "log";

		/**
		 * HEAD 头部
		 */
		public static final String HEAD = "head";

		/**
		 * HEADER 头部(已作废)
		 */
		public static final String HEADER = "header";

		/**
		 * CTX 内容
		 */
		public static final String CTX = "ctx";

		/**
		 * appendix 内容
		 */
		public static final String APPENDIX = "appendix";

		/**
		 * BODY 包体
		 */
		public static final String BODY = "body";

		/**
		 * 报文类型
		 */
		public static final String TYPE = "type";

		/**
		 * 对称加密密钥
		 */
		public static final String SECURITY_KEY = "securityKey";

		/**
		 * 请求编号
		 */
		public static final String REQUEST_ID = "requestId";

		/**
		 * 响应编号
		 */
		public static final String RESPONSE_ID = "responseId";

		/**
		 * 请求/响应时间
		 */
		public static final String TIME = "time";

		/**
		 * 响应码
		 */
		public static final String RESPONSE_CODE = "responseCode";

		/**
		 * 响应描述
		 */
		public static final String RESPONSE_DESC = "responseDesc";

		/**
		 * 令牌
		 */
		public static final String TOKEN = "token";

		/**
		 * 扩展字段，备用
		 */
		public static final String EXPAND = "expand";

	}

	/**
	 * ENCODING_UTF8
	 */
	public static final String ENCODING_UTF8 = "utf-8";
	/**
	 * ENCODING_GBK
	 */
	public static final String ENCODING_GBK = "GBK";
	/**
	 * 业务方法处理失败，非系统异常
	 */
	public static final String SYS_LUOJI_FAILED = "10";
	/**
	 * 绑定json错误
	 */
	public static final String SYS_JSON_FAILED = "11";
	/**
	 * 返回成功
	 */
	public static final String SYS_SUCCESSED = "0";
	/**
	 * 需要参数为空
	 */
	public static final String SYS_PAR_NULL = "13";
	/**
	 * 数据库操作失败
	 */
	public static final String SYS_DB_FAILED = "14";
	/**
	 * 是否打印日志
	 */
	public static final boolean PRINTLOG = true;
	/**
	 * 周几
	 */
	public static final String[] week = new String[] { "周一", "周二", "周三", "周四", "周五", "周六", "周日" };
	/**
	 * 返回客户端提示信息
	 */
	public static final String[] rtnMsg = new String[] { "学号密码/验证码错误", "该学号不存在", "导入失败,请确认教务系统是否有课表" };
	/**
	 * 分页每页显示数量为10
	 */
	public static final int PAGE_ROW = 10;
	/**
	 * 分页每页显示数量为5
	 */
	public static final int PAGE_ROW_FIVE = 5;
	/**
	 * 请求和响应报文加密的开关配置项
	 */
	public static final String JSON_ENCRYPTION_SWITCH = "json_encryption_switch";
	public static final String DEFAULT_DES_KEY = "default_des_key";
	public static final String SYMMETRICAL_SECURITY_KEY = "symmetrical.security.key";

	//缓存key
	public static interface BLOCKS
	{
		static final String ECP_USER_INFO = "ecp_user_info_";//ecp用户信息
		static final String ECP_USER_COST = "ecp_user_cost_";//ecp用户消费
		static final String ECP_USER_MOBILE = "ecp_user_mobile_";//根据IMSI查询手机号码
	}
}
