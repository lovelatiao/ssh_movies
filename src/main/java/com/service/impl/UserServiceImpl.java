package com.service.impl;

import com.dao.UserDao;
import com.po.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    @Resource
    private UserDao userDao;
    @Override
    public List adminLogin(String username, String password) {
        return userDao.adminLogin(username,password);
    }

    @Override
    public List userLogin(String username, String password) {
        return userDao.userLogin(username,password);

    }

    @Override
    public boolean userRegister(User user) {
        return false;
    }
}
