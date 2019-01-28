package org.zgr.pack.dao.user;

import java.util.Map;

import org.zgr.pack.entity.user.User;

public interface UserDao {
    //查询用户名是否存在
	public int selectUserName(String userName);
	
	//注册新用户
	public int createUser(Map paraMap);
	
	//用户登陆
    public User login(Map paraMap);
}
