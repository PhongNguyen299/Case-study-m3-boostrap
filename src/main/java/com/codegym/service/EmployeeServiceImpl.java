package com.codegym.service;

import com.codegym.dao.EmployeeDao;
import com.codegym.dto.EmployeeDto;
import com.codegym.entity.Employee;

import java.util.ArrayList;
import java.util.List;

public class EmployeeServiceImpl implements EmployeeService {
    private EmployeeDao  employeeDao = null;
    public EmployeeServiceImpl() {
        employeeDao = new EmployeeDao();
    }
    @Override
    public List<EmployeeDto> findAll() {
        List<Employee> employees = employeeDao.getAll();
        List<EmployeeDto> employeeDtos = new ArrayList<>();

        for (Employee employee : employees) {
            employeeDtos.add(new EmployeeDto(
                    employee.getId(),employee.getName(),
                    employee.getEmail(),employee.getPhone(),employee.getAddress(),
                    employee.isGender(),employee.getDepartmentId(),employee.getJob(),
                    employee.getRoleId(),employee.isStatus()));
        }
        return employeeDtos;
    }

    @Override
    public EmployeeDto find(int id) {
        Employee employee = employeeDao.get(id);
        return new EmployeeDto(employee.getId(),employee.getName(),
                employee.getEmail(),employee.getPhone(),employee.getAddress(),
                employee.isGender(),employee.getDepartmentId(),employee.getJob(),
                employee.getRoleId(),employee.isStatus());
    }
    @Override
    public void add(EmployeeDto employeeDto) {
        Employee employee = new Employee(
                employeeDto.getName(), employeeDto.getEmail(),employeeDto.getPhone(),employeeDto.getAddress(),
                employeeDto.isGender(),employeeDto.getDepartmentId(),employeeDto.getJob(),
                employeeDto.getRoleId(),employeeDto.isStatus());
        employeeDao.insert(employee);
    }
    @Override
    public void edit(EmployeeDto employeeDto) {
        Employee employee = new Employee(employeeDto.getId(), employeeDto.getName(), employeeDto.getEmail(),employeeDto.getPhone(),
                employeeDto.getAddress(),employeeDto.isGender(),employeeDto.getDepartmentId(),employeeDto.getJob(),
                employeeDto.getRoleId(),employeeDto.isStatus());;
        employeeDao.update(employee);
    }
    @Override
    public void remove(Integer id) {
        employeeDao.delete(id);
    }
}
