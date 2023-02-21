package com.codegym.dao;
import com.codegym.connection.JdbcConnection;
import com.codegym.entity.Employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;
import java.util.List;

public class EmployeeDao {
    private List<Employee> employees = null;

    public List<Employee> getAll() {
        employees = new LinkedList<>();
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "SELECT * FROM EMPLOYEES WHERE isStatus = 1;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Employee employee = new Employee();
                employee.setId(resultSet.getInt("id"));
                employee.setName(resultSet.getString("name"));
                employee.setEmail(resultSet.getString("email"));
                employee.setPhone(resultSet.getString("phone"));
                employee.setAddress(resultSet.getString("address"));
                employee.setGender(resultSet.getBoolean("gender"));
                employee.setDepartmentId(resultSet.getInt("idDepartment"));
                employee.setJob(resultSet.getString("job"));
                employee.setRoleId(resultSet.getInt("idRole"));
                employee.setStatus(resultSet.getBoolean("isStatus"));
                employee.setPassword(resultSet.getString("password"));
                employees.add(employee);
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return employees;
    }

    public Employee get(int id) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "SELECT * FROM EMPLOYEES WHERE id = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()) {
                Employee employee = new Employee();
                employee.setId(resultSet.getInt("id"));
                employee.setName(resultSet.getString("name"));
                employee.setEmail(resultSet.getString("email"));
                employee.setPhone(resultSet.getString("phone"));
                employee.setAddress(resultSet.getString("address"));
                employee.setGender(resultSet.getBoolean("gender"));
                employee.setDepartmentId(resultSet.getInt("idDepartment"));
                employee.setJob(resultSet.getString("job"));
                employee.setRoleId(resultSet.getInt("idRole"));
                employee.setStatus(resultSet.getBoolean("isStatus"));
                employee.setPassword(resultSet.getString("password"));
                return employee;
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new Employee();
    }

    public void insert(Employee employee) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "INSERT INTO EMPLOYEES (name,email, phone,address, gender, idDepartment,"
                            +" job, idRole, isStatus,password)"
                            + " VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, employee.getName());
            preparedStatement.setString(2, employee.getEmail());
            preparedStatement.setString(3, employee.getPhone());
            preparedStatement.setString(4, employee.getAddress());
            preparedStatement.setBoolean(5, employee.isGender());
            preparedStatement.setInt(6, employee.getDepartmentId());
            preparedStatement.setString(7, employee.getJob());
            preparedStatement.setInt(8, employee.getRoleId());
            preparedStatement.setBoolean(9, employee.isStatus());
            preparedStatement.setString(10, employee.getPassword());


            if(preparedStatement.executeUpdate() > 0) {
                System.out.println("Added personnel successfully.");
            } else {
                System.out.println("Failed to insert personnel.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update(Employee employee) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "UPDATE EMPLOYEES SET name = ?, email = ?,phone = ?," +
                    " address = ?, gender =?, idDepartment = ?," +
                    "job=?,idRole = ?, isStatus = ?  " +
                    "WHERE id = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, employee.getName());
            preparedStatement.setString(2, employee.getEmail());
            preparedStatement.setString(3, employee.getPhone());
            preparedStatement.setString(4, employee.getAddress());
            preparedStatement.setBoolean(5, employee.isGender());
            preparedStatement.setInt(6, employee.getDepartmentId());
            preparedStatement.setString(7, employee.getJob());
            preparedStatement.setInt(8, employee.getRoleId());
            preparedStatement.setBoolean(9, employee.isStatus());
            preparedStatement.setInt(10, employee.getId());

            if(preparedStatement.executeUpdate() > 0) {
                System.out.println("Edited personnel successfully.");
            } else {
                System.out.println("Failed to edit personnel.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delete(Integer id) {
        try {
            Connection connection = JdbcConnection.getConnection();
            String query = "UPDATE EMPLOYEES SET EMPLOYEES.isStatus = 0 WHERE id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, id);

            if(preparedStatement.executeUpdate() > 0) {
                System.out.println("Removed customer successfully.");
            } else {
                System.out.println("Failed to remove customer.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
