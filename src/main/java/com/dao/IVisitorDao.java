package com.dao;

import com.entity.Visitor;
import com.utils.Page;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @ClassName IVisitorDao
 * @Description TODO
 * @Author YHT
 * @Date 2021/7/9 21:45
 */
@Repository
public interface IVisitorDao {
    /**
     * 查询所有访客信息
     * @param page
     * @return
     */
    List<Visitor> listVisitor(Page page);

    /**
     * 获取记录总数
     * @return
     */
    int getVisitorTotal();

    /**
     * 添加访客信息
     * @param visitor
     */
    void addVisitor(Visitor visitor);

    /**
     * 根据姓名查询访客信息
     * @param map
     * @return
     */
    List<Visitor> searchByName(Map<String, Object> map);
}
