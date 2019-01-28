package org.zgr.pack.service.user;

import org.zgr.pack.entity.Result;

public interface IUserService {
	 //检查用户名是否存在
     public Result selectUserName(String userName);
     
     //注册新用户
     public Result createUser(String userName,String password,String confirm_password);
     
     //登陆
     public Result login(String userName,String password);
}
