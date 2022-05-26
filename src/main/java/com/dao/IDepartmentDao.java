package com.dao;

import com.entity.Department;
import com.entity.TestEntity;
import com.utils.Page;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @ClassName IDepartmentDao
 * @Description TODO
 * @Author YHT
 * @Date 2021/5/30 15:58
 */
@Repository
public interface IDepartmentDao {
    /**
     * 查询部门所有信息
     * @return
     */
    List<Department> findAllDepartment();

    /**
     * 添加部门
     * @param department
     */
    void insertDept(Department department);

    /**
     * 根据部门名称查询部门信息
     * @param map  部门名称
     * @return
     */
    List<Department> searchByName(Map<String, Object> map);

    /**
     * 获取部门的记录数
     * @return
     */
    int getDeptTotal();

    /**
     * 按页查询部门信息
     * @param page
     * @return
     */
    List<Department> listDept(Page page);

    /**
     * 根据id查询部门信息
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
     * 根据id删除部门
     * @param id
     */
    void deleteDept(int id);
}
