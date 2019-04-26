package com.zhang.dao;

import com.zhang.pojo.UserEntity;


public interface UserDao {

    int addUser(UserEntity user);
    UserEntity findUserByAcc(String account);

}
