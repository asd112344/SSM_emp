package com.controller;

import com.dao.ITestDao;
import com.entity.TestEntity;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import com.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @ClassName TestController
 * @Description TODO
 * @Author YHT
 * @Date 2021/5/31 15:19
 */
@Controller
public class TestController {
    @Autowired
    private ITestDao testDao;
    @RequestMapping("/getTest")
    public ModelAndView getTest(Page page){
        ModelAndView mav = new ModelAndView();
        //从数据库中获取记录
        List<TestEntity> cs = testDao.list(page);
        //获取记录总数
        int total = testDao.total();
        //计算得到总页数
        int pageIndex = total / page.getCount();
        pageIndex = total % page.getCount() == 0 ? pageIndex : pageIndex+1;
        page.setTotalIndex(pageIndex);
        page.calculateLast(total);
        //将数据返回前端页面
        mav.addObject("testList",cs);
        mav.addObject("page",page);
        mav.addObject("total",total);
        mav.setViewName("test");
        return mav;
    }
}