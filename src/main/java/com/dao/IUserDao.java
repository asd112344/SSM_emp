package com.dao;

import com.entity.User;
import org.springframework.stereotype.Repository;

import java.util.Map;

/**
 * @ClassName IUserDao
 * @Description TODO
 * @Author YHT
 * @Date 2021/5/28 8:03
 */
@Repository
public interface IUserDao {
    /**
     * 根据ID查找用户信息
     * @param id    ID
     * @return  用户
     */
    User findById(Integer id);

    /**
     * 根据用户名和密码查询用户
     * @param map   存放用户的姓名和密码
     * @return
     */
    User findByNameAndPwd(Map<String, String> map);

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
     * @param map
     */
    void modifyPwd(Map<String, Object> map);
}
