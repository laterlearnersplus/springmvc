package com.sxt.mapper;

import com.sxt.entity.User;

public interface UserMapper {
    public User queryByName(String name);
}
