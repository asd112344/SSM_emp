package com.service;

import com.entity.Department;
import com.utils.Page;

import java.util.List;

/**
 * @ClassName IDeptService
 * @Description TODO
 * @Author YHT
 * @Date 2021/5/30 16:01
 */
public interface IDeptService {
    /**
     * 查询部门所有信息
     * @return
     */
    List<Department> findAllDepartment();

    /**
     * 添加部门
     * @param department
     */
    void addDept(Department department);

    /**
     * 根据部门名称查找部门
     * @param deptName
     * @param page
     * @return
     */
    List<Department> findDeptByName(String deptName, Page page);

    /**
     * 获取记录总数
     * @return
     */
    int getDeptTotal();

    /**
     * 获取所有部门信息
     * @param page
     * @return
     */
    List<Department> listDept(Page page);

    /**
     * 根据id查找部门
     * @param id
     * @return
     */
    Department findDeptById(int id);

    /**
     * 修改部门信息
     * @param department
     */
    void modifyDept(Department department);

    /**
     * 删除部门信息
     * @param id
     */
    void deleteDept(int id);

}