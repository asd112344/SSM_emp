package com.service.impl;

import com.dao.IVisitorDao;
import com.entity.Visitor;
import com.service.IVisitorService;
import com.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName VisitorServiceImpl
 * @Description TODO
 * @Author YHT
 * @Date 2021/7/9 21:47
 */
@Service
public class VisitorServiceImpl implements IVisitorService {
    @Autowired
    private IVisitorDao visitorDao;
    @Override
    public List<Visitor> listVisitor(Page page) {
        return visitorDao.listVisitor(page);
    }

    @Override
    public int getVisitorTotal() {
        return visitorDao.getVisitorTotal();
    }

    @Override
    public void addVisitor(Visitor visitor) {
        visitorDao.addVisitor(visitor);
    }

    @Override
    public List<Visitor> searchByName(String name, Page page) {
        Map<String, Object> map = new HashMap<>();
        map.put("name", name);
        map.put("page", page);
        return visitorDao.searchByName(map);
    }
}