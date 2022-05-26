package com.service;

import com.entity.User;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * @ClassName IUserService
 * @Description TODO
 * @Author YHT
 * @Date 2021/5/28 8:02
 */

public interface IUserService {
    /**
     * 根据ID查找用户信息
     * @param id    ID
     * @return  用户
     */
    User findById(Integer id);

    /**
     * 根据用户名和密码查找用户
     * @param name
     * @param password
     * @return
     */
    User findByNameAndPwd(String name, String password);

    /**
     * 添加用户
     * @param user
     * @return
     */
    int insertUser(User user);

    /**
     * 修改用户信息
     * @param user
     */
    void modifyUser(User user);

    /**
     * 修改用户密码
     * @param password
     * @param id
     */
    void modifyPwd(String password, Integer id);
}
