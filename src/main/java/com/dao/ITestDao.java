package com.dao;

import com.entity.TestEntity;
import com.utils.Page;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @ClassName ITestDao
 * @Description TODO
 * @Author YHT
 * @Date 2021/5/31 15:16
 */
@Repository
public interface ITestDao {
    List<TestEntity> findAll();
    List<TestEntity> list(Page page);
    int total();
}