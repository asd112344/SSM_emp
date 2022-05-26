package com.service;

import com.entity.Visitor;
import com.utils.Page;

import java.util.List;

/**
 * @ClassName IVisitorService
 * @Description TODO
 * @Author YHT
 * @Date 2021/7/9 21:47
 */
public interface IVisitorService {
    /**
     * 查找所有访客信息
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
     * 添加访客
     * @param visitor
     */
    void addVisitor(Visitor visitor);

    /**
     * 根据姓名查找访客
     * @param name
     * @param page
     * @return
     */
    List<Visitor> searchByName(String name, Page page);

}
