package com.service.impl;

import com.dao.IUserDao;
import com.entity.User;
import com.service.IUserService;
import com.utils.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName UserServiceImpl
 * @Description TODO
 * @Author YHT
 * @Date 2021/5/28 17:41
 */
@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    private IUserDao userDao;

    public User findById(Integer id) {
        return userDao.findById(id);
    }

    public User findByNameAndPwd(String name, String password) {
        Map<String, String> map = new HashMap<>();
        map.put("name", name);
        map.put("password", password);
        return userDao.findByNameAndPwd(map);
    }

    @Override
    public int insertUser(User user) {
        return userDao.insertUser(user);
    }

    @Override
    public void modifyUser(User user) {
        userDao.modifyUser(user);
    }

    @Override
    public void modifyPwd(String password, Integer id) {
        Map<String, Object> map = new HashMap<>();
        password = MD5Utils.stringToMD5(password);
        map.put("id", id);
        map.put("password", password);
        userDao.modifyPwd(map);
    }
}