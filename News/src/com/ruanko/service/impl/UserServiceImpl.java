package com.ruanko.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruanko.dao.UserMapper;
import com.ruanko.entity.User;
import com.ruanko.service.UserService;


@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

	@Autowired
	protected UserMapper usersMapper;

	public User login(User user) {
		User selectUser = userMapper.select(user);
		return selectUser;
	}

	public int register(User user) {
		int insert = usersMapper.insert(user);
		return insert;
	}

	public User selectUserByName(User user) {
		User selectUser = userMapper.select(user);
		return selectUser;
	}
	

}
