package com.service.impl;

import com.dao.IDepartmentDao;
import com.entity.Department;
import com.service.IDeptService;
import com.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.management.ObjectName;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName DeptServiceImpl
 * @Description TODO
 * @Author YHT
 * @Date 2021/5/30 16:02
 */
@Service
public class DeptServiceImpl implements IDeptService {
    @Autowired
    private IDepartmentDao departmentDao;
    @Override
    public List<Department> findAllDepartment() {
        return departmentDao.findAllDepartment();
    }

    @Override
    public void addDept(Department department) {
        departmentDao.insertDept(department);
    }

    @Override
    public List<Department> findDeptByName(String deptName, Page page) {
        deptName = "%" + deptName + "%";
        Map<String, Object> map = new HashMap<>();
        map.put("deptName", deptName);
        map.put("page", page);
        return departmentDao.searchByName(map);
    }

    @Override
    public int getDeptTotal() {
        return departmentDao.getDeptTotal();
    }

    @Override
    public List<Department> listDept(Page page) {
        return departmentDao.listDept(page);
    }

    @Override
    public Department findDeptById(int id) {
        return departmentDao.findDeptById(id);
    }

    @Override
    public void modifyDept(Department department) {
        departmentDao.modifyDept(department);
    }

    @Override
    public void deleteDept(int id) {
        departmentDao.deleteDept(id);
    }
}