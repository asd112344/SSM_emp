package com.controller;

import com.entity.Department;
import com.entity.Employee;
import com.service.IDeptService;
import com.service.IEmpService;
import com.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName EmployeeController
 * @Description TODO
 * @Author YHT
 * @Date 2021/5/30 12:15
 */
@Controller
public class EmployeeController {
    @Autowired
    private IEmpService empService;
    @Autowired
    private IDeptService deptService;

    /**
     * 跳转至员工列表页面
     * @param page
     * @return
     */
    @RequestMapping("/toEmployee")
    public ModelAndView toEmployee(Page page){
        ModelAndView mv = new ModelAndView();
        //查询所有员工
        List<Employee> employeeList = empService.listEmp(page);
        //给每个员工设置部门名称
        for (Employee emp : employeeList) {
            emp.setDeptName(deptService.findDeptById(emp.getDeptId()).getDeptName());
        }
        //获取数据库中记录总数
        int total = empService.getEmpTotal();
        //页数。即：每页显示三条记录，总共展示几页
        int pageIndex = total / page.getCount();
        pageIndex = total % page.getCount() == 0 ? pageIndex : pageIndex+1;
        page.setTotalIndex(pageIndex);
        page.calculateLast(total);
        //将数据返回员工列表页面
        mv.addObject("empList",employeeList);
        mv.addObject("page",page);
        mv.addObject("total",total);
        mv.setViewName("employee");
        return mv;
    }

    /**
     * 根据名称查找员工
     * @param page
     * @param name
     * @param email
     * @param empId
     * @return
     */
    @RequestMapping("/searchEmp")
    public ModelAndView toEmployee(Page page, String name, String email, String empId){
        ModelAndView mv = new ModelAndView();
        //根据部门名称查找部门信息，并进行分页显示
        Map<String, Object> map = new HashMap<>();
        if(name != "" && name != null){
            map.put("name", name);
        }
        if(email != "" && email != null){
            map.put("email", email);
        }
        if(empId != "" && empId != null){
            map.put("empId", empId);
        }
        map.put("page", page);
        //得到符合条件的记录
        List<Employee> employeeList = empService.searchEmp(map);
        System.out.println(employeeList);
        //设置员工的部门名称
        for (Employee emp : employeeList) {
            emp.setDeptName(deptService.findDeptById(emp.getDeptId()).getDeptName());
        }
        //得到总记录数
        int total = employeeList.size();
        //每页显示三条，总共显示的页数
        int pageIndex = total / page.getCount();
        pageIndex = total % page.getCount() == 0 ? pageIndex : pageIndex+1;
        page.setTotalIndex(pageIndex);
        page.calculateLast(total);
        //将数据返回给页面
        mv.addObject("empList",employeeList);
        mv.addObject("page",page);
        mv.addObject("total",total);
        //返回部门信息列表页面
        mv.setViewName("employee");
        return mv;
    }

    /**
     * 跳转至添加员工页面
     * @return
     */
    @RequestMapping("/toAddEmp")
    public ModelAndView toAddEmp(){
        ModelAndView mv = new ModelAndView();
        //添加信息到modelview。
        List<Department> departmentList = deptService.findAllDepartment();
        mv.addObject("deptList",departmentList);
        mv.setViewName("addEmployee");
        return mv;
    }

    /**
     * 添加员工
     * @param employee
     * @return
     */
    @RequestMapping("/addEmp")
    public ModelAndView addEmp(Employee employee){
        ModelAndView mv = new ModelAndView();
        //添加员工到数据库
        empService.addEmp(employee);
        mv.setViewName("redirect:/toEmployee");
        return mv;
    }

    /**
     * 跳转至修改员工界面
     * @param id
     * @return
     */
    @RequestMapping("/toModifyEmp")
    public ModelAndView toUpdateEmp(int id){
        ModelAndView mv = new ModelAndView();
        //得到员工信息
        mv.addObject("emp", empService.selectEmpById(id));
        //得到所有部门信息
        List<Department> departmentList = deptService.findAllDepartment();
        mv.addObject("deptList",departmentList);
        mv.setViewName("updateEmployee");
        return mv;
    }

    /**
     * 修改员工信息
     * @param employee
     * @return
     */
    @RequestMapping("/modifyEmp")
    public ModelAndView modifyEmp(Employee employee){
        ModelAndView mv = new ModelAndView();
        //修改数据库中信息
        empService.modifyEmp(employee);
        List<Department> departmentList = deptService.findAllDepartment();
        mv.addObject("deptList",departmentList);
        //重定向到员工列表界面
        mv.setViewName("redirect:/toEmployee");
        return mv;
    }

    /**
     * 删除员工
     * @param id
     * @return
     */
    @RequestMapping("/deleteEmp")
    public ModelAndView deleteEmp(int id){
        ModelAndView mv = new ModelAndView();
        //删除员工
        empService.deleteEmp(id);
        mv.setViewName("redirect:/toEmployee");
        return mv;
    }
}