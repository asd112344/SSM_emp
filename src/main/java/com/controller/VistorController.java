package com.controller;

import com.entity.Department;
import com.entity.Visitor;
import com.service.IVisitorService;
import com.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @ClassName VistorController
 * @Description TODO
 * @Author YHT
 * @Date 2021/5/30 12:17
 */
@Controller
public class VistorController {
    @Autowired
    private IVisitorService visitorService;

    /**
     * 跳转至访客列表界面
     * @param page
     * @return
     */
    @RequestMapping("/toVisitor")
    public ModelAndView toVisitor(Page page){
        ModelAndView mv = new ModelAndView();
        //得到所有访客列表信息
        List<Visitor> visitorList = visitorService.listVisitor(page);
        //得到记录总数
        int total = visitorService.getVisitorTotal();
        //得到页数
        int pageIndex = total / page.getCount();
        pageIndex = total % page.getCount() == 0 ? pageIndex : pageIndex+1;
        page.setTotalIndex(pageIndex);
        page.calculateLast(total);
        //返回数据至页面
        mv.addObject("visitorList",visitorList);
        mv.addObject("page",page);
        mv.addObject("total",total);
        mv.setViewName("visitor");
        return mv;
    }

    /**
     * 根据名称查找访客
     * @param name
     * @param page
     * @return
     */
    @RequestMapping("/searchVisitor")
    public ModelAndView searchDept(String name, Page page){
        ModelAndView mv = new ModelAndView();
        //根据部门名称查找部门信息，并进行分页显示
        List<Visitor> visitorList = visitorService.searchByName(name, page);
        //得到总记录数
        int total = visitorList.size();
        //每页显示三条，总共显示的页数
        int pageIndex = total / page.getCount();
        pageIndex = total % page.getCount() == 0 ? pageIndex : pageIndex+1;
        page.setTotalIndex(pageIndex);
        page.calculateLast(total);
        //添加信息到modelview。
        mv.addObject("visitorList",visitorList);
        mv.addObject("page",page);
        mv.addObject("total",total);
        //返回部门信息列表页面
        mv.setViewName("visitor");
        return mv;
    }
}