package com.prj.mapper;

import java.util.List;

import com.prj.bean.User;

public interface UserMapper {
    
    //查询所有用户
    public List<User> selectAllUser();
    
    //登陆验证账号和密码
    public User selectByLoginnameAndPassword(User user);
}