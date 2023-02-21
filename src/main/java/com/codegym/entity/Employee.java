package com.codegym.entity;

import java.sql.Date;
import java.time.Year;

public class Employee {
    private int id;
    private String name;
    private String email;
    private String phone;
    private String address;
    private Year dob;
    private boolean gender;
    private int departmentId;
    private String job;
    private double salary;
    private int roleId;
    private Date startDay;
    private Date endDay;
    private boolean isStatus;
    private String password;

    public Employee() {}

    public Employee(int id, String name, String email, String phone, String address, boolean gender, int departmentId, String job, int roleId, boolean isStatus,String password) {
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
    public Employee(int id, String name, String email, String phone, String address, boolean gender, int departmentId, String job, int roleId, boolean isStatus) {
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

    public Employee(String name, String email, String phone, String address, boolean gender, int departmentId, String job, int roleId, boolean isStatus,String password) {
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

    public Employee(int id, String name, String email, String phone, String address, Year dob, boolean gender, int departmentId, String job, double salary, int roleId, Date startDay, Date endDay, boolean isStatus,String password) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.dob = dob;
        this.gender = gender;
        this.departmentId = departmentId;
        this.job = job;
        this.salary = salary;
        this.roleId = roleId;
        this.startDay = startDay;
        this.endDay = endDay;
        this.isStatus = isStatus;
        this.password = password;
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

    public Year getDob() {
        return dob;
    }

    public void setDob(Year dob) {
        this.dob = dob;
    }

    public boolean isGender() {
        return gender;
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

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public Date getStartDay() {
        return startDay;
    }

    public void setStartDay(Date startDay) {
        this.startDay = startDay;
    }

    public Date getEndDay() {
        return endDay;
    }

    public void setEndDay(Date endDay) {
        this.endDay = endDay;
    }

    public boolean isStatus() {
        return isStatus;
    }

    public void setStatus(boolean status) {
        isStatus = status;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}