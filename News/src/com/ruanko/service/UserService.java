package com.ruanko.service;

import com.ruanko.entity.User;


public interface UserService extends BaseService<User>{
	//登录
	public User login(User User);
	//注册
	public int register(User user);
	//通过名字查询用户
	public User selectUserByName(User user);
	
}
