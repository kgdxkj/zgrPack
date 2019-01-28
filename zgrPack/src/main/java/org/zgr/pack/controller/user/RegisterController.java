package org.zgr.pack.controller.user;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zgr.pack.entity.Result;
import org.zgr.pack.service.user.IUserService;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/user")
public class RegisterController {
	@Resource
	private IUserService userService;
	
	/*
	 * 检查注册用户名是否存在
	 */
    @RequestMapping("/selectUserName")
    @ResponseBody
	public Result selectUserName(@RequestParam(value="userName",required=false) String userName) {
    	 Result result=new Result();
    	 result=userService.selectUserName(userName);
		 return result;
	}
	//http://localhost:8080/zgrPack/login_register.jsp
    
  //http://localhost:8080/zgrPack/user/selectUserName?userName=18114800144
    
    
    
    /*
	 * 注册新用户
	 */
    @RequestMapping("/createUser")
    @ResponseBody
	public Result createUser(String userName,String password,String confirm_password) {  
    	 Result result=new Result();
    	 //System.out.println("注册用户,前台传过来的参数userName="+userName+" || "+password+" || "+confirm_password);
    	 result=userService.createUser(userName,password,confirm_password);
    	 System.out.println(result.toString());
		 return result;
	}
    
    //http://localhost:8080/zgrPack/user/createUser?userName=18114800144&password=123456&confirm_password=123456
    
    
    
    
    
    /*
   	 * 测试redis
   	 * @Cacheable注解可以用在方法或者类级别。当他应用于方法级别的时候，就是缓存方法的返回值。当应用在类级别的时候，这个类的所有方法的返回值都将被缓存。
   	 */
       @RequestMapping("/testRedis")
       @ResponseBody
	   @Cacheable(value="common",key="'userName_'+#userName")
   	public JSONObject testRedis(String userName) {  
    	 JSONObject jo=new JSONObject();
    	 jo.put("abc", 123);
    	 jo.put("def", 234);
       	 System.out.println("测试redis=========>>"+jo.toString()+"  || 参数userName:"+userName);
   		 return jo;
   	}
       
       //http://localhost:8080/zgrPack/user/testRedis?userName=15365090866
    
    
    
}
