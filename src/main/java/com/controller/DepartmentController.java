package com.controller;

import com.entity.Department;
import com.service.IDeptService;
import com.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName DepartmentController
 * @Description TODO
 * @Author YHT
 * @Date 2021/5/30 12:14
 */
@Controller
public class DepartmentController {
    @Autowired
    private IDeptService deptService;

    /***
     * 跳转至部门列表界面
     * @param page  结果的页数
     * @return  部门列表页面
     */
    @RequestMapping("/toDepartment")
    public ModelAndView toDepartment(Page page){
       ModelAndView mv = new ModelAndView();
       List<Department> departmentList = deptService.listDept(page);
       int total = deptService.getDeptTotal();
       int pageIndex = total / page.getCount();
       pageIndex = total % page.getCount() == 0 ? pageIndex : pageIndex+1;
       page.setTotalIndex(pageIndex);
       page.calculateLast(total);
       mv.addObject("deptList",departmentList);
       mv.addObject("page",page);
       mv.addObject("total",total);
       mv.setViewName("department");
        return mv;
    }

    /**
     * 添加部门
     * @param department    部门信息
     * @return  部门列表页面
     */
    @RequestMapping("/addDept")
    public ModelAndView addDept(Department department){
        ModelAndView mv = new ModelAndView();
        //调用service层的方法
        deptService.addDept(department);
        //重定向到部门列表页面
        mv.setViewName("redirect:/toDepartment");
        return mv;
    }

    /**
     * 查找部门
     * @param deptName  部门名称
     * @param page  页面页数
     * @return  部门列表页面
     */
    @RequestMapping("/searchDept")
    public ModelAndView searchDept(String deptName, Page page){
        ModelAndView mv = new ModelAndView();
        //根据部门名称查找部门信息，并进行分页显示
        List<Department> departmentList = deptService.findDeptByName(deptName, page);
        //得到总记录数
        int total = departmentList.size();
        //每页显示三条，总共显示的页数
        int pageIndex = total / page.getCount();
        pageIndex = total % page.getCount() == 0 ? pageIndex : pageIndex+1;
        page.setTotalIndex(pageIndex);
        page.calculateLast(total);
        //添加信息到modelview。
        mv.addObject("deptList",departmentList);
        mv.addObject("page",page);
        mv.addObject("total",total);
        //返回部门信息列表页面
        mv.setViewName("department");
        return mv;
    }

    /**
     * 跳转至修改部门信息页面
     * @param id    部门的id号
     * @return
     */
    @RequestMapping("/toModifyDept")
    public ModelAndView toModifyDept(int id){
        ModelAndView mv = new ModelAndView();
        //找到部门信息
        Department department = deptService.findDeptById(id);
        //将该部门信息返回到页面
        mv.addObject("dept",department);
        //跳转至修改信息界面
        mv.setViewName("updateDepartment");
        return mv;
    }

    /**
     * 修改部门信息
     * @param department    部门
     * @return  部门信息列表界面
     */
    @RequestMapping("/modifyDept")
    public ModelAndView modifyDept(Department department){
        ModelAndView mv = new ModelAndView();
        //修改部门信息
        deptService.modifyDept(department);
        //重定向到部门信息列表界面
        mv.setViewName("redirect:/toDepartment");
        return mv;
    }
    @RequestMapping("/deleteDept")
    public ModelAndView deleteDept(int id){
        ModelAndView mv = new ModelAndView();
        //修改部门信息
        deptService.deleteDept(id);
        //重定向到部门信息列表界面
        mv.setViewName("redirect:/toDepartment");
        return mv;
    }
}

