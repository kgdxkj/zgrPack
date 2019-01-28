package org.zgr.pack.controller.user;

import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;
import org.zgr.pack.entity.Result;
import org.zgr.pack.entity.user.User;
import org.zgr.pack.service.user.IUserService;
import org.zgr.pack.util.HelpUtil;

@Controller
public class Login {
	
	@Resource
	private IUserService userService;
	
	@RequestMapping(value="/login")   //,produces = "application/json; charset=utf-8"
	@ResponseBody
	public Result Login(String username,String password) {
		System.out.println("+++++++++++");
		Result result=new Result();
		result=userService.login(username, password);
		System.out.println("登陆返回的结果==========="+result.toString());
		User user=(User)result.getData();
		System.out.println("取到的数据昵称==========="+user.getNickname()); 
		//System.out.println("取到的数据昵称==========="+new String(user.getNickname().getBytes("xxx"),"utf-8"));
		System.out.println("取到的数据帐号==========="+user.getUserName());
		return result;
	}
	
	
	//http://localhost:8080/zgrPack/index.jsp
	
}
