package com.service;

import com.po.User;

import java.util.List;

public interface UserService {
    public List adminLogin(String username, String password);
    public List userLogin(String username,String password);
    public boolean userRegister(User user);
}
