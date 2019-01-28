package org.zgr.pack.service.user;

import javax.annotation.Resource;

import org.json.JSONObject;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.zgr.pack.dao.user.UserDao;
import org.zgr.pack.entity.Result;
import org.zgr.pack.entity.user.User;
import org.zgr.pack.service.cache.ICacheService;
import org.zgr.pack.util.HelpUtil;
import org.zgr.pack.util.SysConstants;

import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;


@Service
public class UserServiceImpl implements IUserService{
	
	    @Resource
	    private UserDao userDao;
	    
	    @Resource
		ICacheService cacheService;
	    /*
	     *@Cacheable注解可以用在方法或者类级别。当他应用于方法级别的时候，就是缓存方法的返回值。当应用在类级别的时候，这个类的所有方法的返回值都将被缓存。
         * 
	     *
	     */
	    //@Cacheable(value="common",key="'userName_'+#userName")
       public Result selectUserName(String userName) {
    	   Result result=new Result();
    	   System.out.println("--------------------C");
    	   Object object= cacheService.get(SysConstants.REDISCONSTANTS.HOME+"selectUserName"+userName);
    	   System.out.println("缓存中取到的值============object:"+object);
    	   if(object==null) {
    		   int num=userDao.selectUserName(userName);
        	   System.out.println("查询到的总数量===========num="+num);
        	   if(num>0){
        		   result.setStatus(false);
        		   result.setData("");
        		   result.setMsg("用户名已存在");
        	   }else {
        		   result.setStatus(true);
        		   result.setData("");
        		   result.setMsg("用户名可以注册"); 
        	   }
        	   //添加到缓存中去，60秒有效。
        	   boolean bo=cacheService.add(SysConstants.REDISCONSTANTS.HOME+"selectUserName"+userName,result,60);
        	   System.out.println("数据放入缓存是否成功=============="+bo);
        	   return result;
    	   }else {
    		   result=(Result)object;
    		   return result;
    	   }
       }
       
       
       /*
        * 注册新用户
        * userName:帐号
        * password:密码
        * confirm_password：确认密码
        */
	   public Result createUser(String userName, String password, String confirm_password) {
		   Result result=new Result();
		   if(userName==null || userName.equals("")) {
			   result.setStatus(false);
			   result.setMsg("用户名不可为空");
			   result.setData("");
			   return result;
		   }
		   
		   if(userName==null || userName.equals("")) {
			   result.setStatus(false);
			   result.setMsg("用户名不可为空");
			   result.setData("");
			   return result;
		   }
		   
		   // 验证130-139,150-159,180-189号码段的手机号码
		   Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0-9]))\\d{8}$");  
		   Matcher m = p.matcher(userName);  
		   boolean flg=m.matches();
	       if(!flg) {
	    	   result.setStatus(false);
			   result.setMsg("请输入正确的手机号");
			   result.setData("");
			   return result; 
	       }
	       
	       //判断两个密码是否相等
	       if(!password.equals(confirm_password)) {
	    	   result.setStatus(false);
			   result.setMsg("两次密码不相符");
			   result.setData("");
			   return result;
	       }
	       
	       //判断注册帐号是否存在
	       int num=0;
	       try {
	    	   num=userDao.selectUserName(userName);
	       }catch (Exception e) {
	    	   e.printStackTrace();
	    	   result.setStatus(false);
			   result.setMsg("注册失败,稍后重试");
			   result.setData("");
			   return result;
	       }
	       
	       if(num>0){
    		   result.setStatus(false);
    		   result.setData("");
    		   result.setMsg("用户名已存在");
    		   return result;
    	   }
	       
	       try {
	    	   //密码加密处理   Base64+Md5
	    	   password=HelpUtil.md5(password);
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
				result.setStatus(false);
			    result.setMsg("注册失败,稍后重试");
			    result.setData("");
			    return result;
			}
	       Map paraMap=new HashMap();
	       paraMap.put("userName", userName);
	       paraMap.put("password", password);
	       int num2=0;
	       try {
	    	   num2=userDao.createUser(paraMap);
		   }catch (Exception e) {
	    	   e.printStackTrace();
	    	   result.setStatus(false);
			   result.setMsg("注册失败,稍后重试");
			   result.setData("");
			   return result;
	       }
	       if(num2>0) {
	    	   result.setStatus(true);
			   result.setMsg("注册成功");
			   result.setData("");
			   return result;
	       }else {
	    	   result.setStatus(false);
			   result.setMsg("注册失败,稍后重试");
			   result.setData("");
			   return result;
	       }
	  }
       
       
       /*
        * 用户登陆
        */
       public Result login(String userName, String password) {
    	   Result result=new Result();
    	   try {
	    	    //密码加密处理   Base64+Md5
    		    password=HelpUtil.md5(password);
		   } catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
				result.setStatus(false);
			    result.setMsg("登陆失败,稍后重试");
			    result.setData("");
			    return result;
			}
			Map paraMap=new HashMap();
		    paraMap.put("userName", userName);
		    paraMap.put("password", password);
		    User user;
	        try {
	        	user=userDao.login(paraMap);
		    }catch (Exception e) {
	    	   e.printStackTrace();
	    	   result.setStatus(false);
			   result.setMsg("登陆失败,稍后重试");
			   result.setData("");
			   return result;
	        }   
	        System.out.println("登陆成功返回的user对象---------:"+user);
	        if(user != null && !user.equals("")) {
	            result.setStatus(true);
			    result.setMsg("登陆成功");
			    result.setData(user);
			    return result;
	        }else {
	        	result.setStatus(false);
				result.setMsg("用户名或密码错误");
			    result.setData("");
				return result;
	        }
		
	  }
       
       
       
       
}
