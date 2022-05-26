package com.dao;

import com.entity.Employee;
import com.utils.Page;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @ClassName IEmployeeDao
 * @Description TODO
 * @Author YHT
 * @Date 2021/7/9 8:50
 */
@Repository
public interface IEmployeeDao {
    /**
     * 查询所有员工信息
     * @param page
     * @return
     */
    List<Employee> listEmp(Page page);

    /**
     * 获取记录总数
     * @return
     */
    int getEmpTotal();

    /**
     * 按条件查询员工信息
     * @param map
     * @return
     */
    List<Employee> searchEmp(Map<String, Object> map);

    /**
     * 添加员工
     * @param employee
     */
    void addEmp(Employee employee);

    /**
     * 根据id查询员工
     * @param id
     * @return
     */
    Employee selectEmpById(int id);

    /**
     * 修改员工信息
     * @param employee
     */
    void modifyEmp(Employee employee);

    /**
     * 删除员工
     * @param id
     */
    void deleteEmp(int id);
}
