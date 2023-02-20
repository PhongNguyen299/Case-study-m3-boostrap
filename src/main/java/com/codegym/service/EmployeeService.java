package com.codegym.service;

import com.codegym.dto.EmployeeDto;

import java.util.List;

public interface EmployeeService {
    List<EmployeeDto> findAll();

    EmployeeDto find(int id);

    void add(EmployeeDto employeeDto);

    void edit(EmployeeDto employeeDto);

    void remove(Integer id);

}
