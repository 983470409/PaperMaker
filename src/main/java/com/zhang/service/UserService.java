package com.zhang.service;

import com.zhang.pojo.UserEntity;

public interface UserService {

    int registered(UserEntity user);
    UserEntity getUserByAcc(String account);

}
