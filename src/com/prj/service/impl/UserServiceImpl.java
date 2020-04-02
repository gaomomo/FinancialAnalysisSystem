package com.prj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prj.bean.User;
import com.prj.mapper.UserMapper;
import com.prj.service.UserService;
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserMapper userMapper;

	//查询所有用户
	@Override
	public List<User> selectAllUser() {
		
		return userMapper.selectAllUser();
	}
	
	//登陆验证账号和密码
	@Override
    public User selectByLoginnameAndPassword(User user) {
    	
    	return userMapper.selectByLoginnameAndPassword(user);
    }
}
