package com.sxt.service.impl;

import com.sxt.entity.User;
import com.sxt.mapper.UserMapper;
import com.sxt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public User queryByName(String name) {
        return userMapper.queryByName(name);
    }
}
