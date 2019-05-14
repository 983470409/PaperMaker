package com.zhang.serviceImpl;

import com.zhang.dao.UserDao;
import com.zhang.pojo.UserEntity;
import com.zhang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao = null;

    @Override
    public int registered(UserEntity user) {

        if(userDao.findUserByAcc(user.getAccount()) != null)
            return -1;

        return userDao.addUser(user);
    }

    @Override
    public UserEntity login(String account) {

        return userDao.findUserByAcc(account);
    }

}
