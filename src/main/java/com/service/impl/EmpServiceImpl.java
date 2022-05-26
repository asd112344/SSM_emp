package com.service.impl;

import com.dao.IEmployeeDao;
import com.entity.Employee;
import com.service.IEmpService;
import com.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @ClassName EmpServiceImpl
 * @Description TODO
 * @Author YHT
 * @Date 2021/7/9 10:42
 */
@Service
public class EmpServiceImpl implements IEmpService {
    @Autowired
    private IEmployeeDao employeeDao;
    @Override
    public List<Employee> listEmp(Page page) {
        return employeeDao.listEmp(page);
    }

    @Override
    public int getEmpTotal() {
        return employeeDao.getEmpTotal();
    }

    @Override
    public List<Employee> searchEmp(Map<String, Object> map) {
        return employeeDao.searchEmp(map);
    }

    @Override
    public void addEmp(Employee employee) {
        employeeDao.addEmp(employee);
    }

    @Override
    public Employee selectEmpById(int id) {
        return employeeDao.selectEmpById(id);
    }

    @Override
    public void modifyEmp(Employee employee) {
        employeeDao.modifyEmp(employee);
    }

    @Override
    public void deleteEmp(int id) {
        employeeDao.deleteEmp(id);
    }
}