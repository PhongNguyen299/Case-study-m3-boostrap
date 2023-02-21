package com.codegym.dto;

import java.sql.Date;
import java.time.Year;

public class EmployeeDto {
    private int id;
    private String name;
    private String email;
    private String phone;
    private String address;
    private boolean gender;
    private int departmentId;
    private String job;
    private int roleId;
    private boolean isStatus;
    private String password;

    public EmployeeDto() {
    }

    public EmployeeDto(String name, String email, String phone, String address, boolean gender, int departmentId, String job, int roleId, boolean isStatus,String password) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.gender = gender;
        this.departmentId = departmentId;
        this.job = job;
        this.roleId = roleId;
        this.isStatus = isStatus;
        this.password = password;
    }
    public EmployeeDto(String name, String email, String phone, String address, boolean gender, int departmentId, String job, int roleId, boolean isStatus) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.gender = gender;
        this.departmentId = departmentId;
        this.job = job;
        this.roleId = roleId;
        this.isStatus = isStatus;
    }

    public EmployeeDto(int id, String name, String email, String phone, String address, boolean gender, int departmentId, String job, int roleId, boolean isStatus,String password) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.gender = gender;
        this.departmentId = departmentId;
        this.job = job;
        this.roleId = roleId;
        this.isStatus = isStatus;
        this.password = password;
    }
    public EmployeeDto(int id, String name, String email, String phone, String address, boolean gender, int departmentId, String job, int roleId, boolean isStatus) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.gender = gender;
        this.departmentId = departmentId;
        this.job = job;
        this.roleId = roleId;
        this.isStatus = isStatus;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public boolean isGender() {
        return gender;
    }

    public String getGender(){
        if(this.gender) return "Male";
        else return "Female";
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public int getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(int departmentId) {
        this.departmentId = departmentId;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public boolean isStatus() {
        return isStatus;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStatus() {
        if(this.isStatus)
            return "Active";
        return "Inactive";
    }

    public void setStatus(boolean status) {
        isStatus = status;
    }
}
