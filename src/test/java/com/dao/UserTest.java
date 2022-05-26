package com.dao;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @ClassName UserTest
 * @Description TODO
 * @Author YHT
 * @Date 2021/5/28 17:38
 */
public class UserTest {
    @Autowired
    private IUserDao userDao;
    @Test
    public void test01(){
        System.out.println(userDao.findById(1));
    }
}