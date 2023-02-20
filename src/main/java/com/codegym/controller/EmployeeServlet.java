package com.codegym.controller;

import com.codegym.dto.EmployeeDto;
import com.codegym.service.EmployeeServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EmployeeServlet", value = {"/", "/employees", "/employee/detail",
        "/employee/add", "/employee/edit","/employee/remove"})

public class EmployeeServlet extends HttpServlet {

    private EmployeeServiceImpl employeeService = null;

    @Override
    public void init(){
        employeeService = new EmployeeServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        switch (action) {
            case "/":
            case "/employees":
                req.setAttribute("employees", employeeService.findAll());
                req.getRequestDispatcher("WEB-INF/view/employee/index.jsp").forward(req, resp);
                break;
            case "/employee/detail":
                int detailId = Integer.parseInt(req.getParameter("id"));
                req.setAttribute("employee", employeeService.find(detailId));
                req.getRequestDispatcher("/WEB-INF/view/employee/watch.jsp").forward(req, resp);
                break;
            case "/employee/add":
                req.getRequestDispatcher("/WEB-INF/view/employee/add.jsp").forward(req, resp);
                break;
            case "/employee/edit":
                int editId = Integer.parseInt(req.getParameter("id"));
                req.setAttribute("employee", employeeService.find(editId));
                req.getRequestDispatcher("/WEB-INF/view/employee/edit.jsp").forward(req, resp);
                break;
            case "/employee/remove":
                int removeId = Integer.parseInt(req.getParameter("id"));
                employeeService.remove(removeId);
                resp.sendRedirect(req.getContextPath() + "/employees");
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        Boolean gender = Boolean.parseBoolean(req.getParameter("gender"));
        Integer departmentId = Integer.parseInt(req.getParameter("departmentId"));
        String job = req.getParameter("job");
        Integer roleId = Integer.parseInt(req.getParameter("roleId"));
        Boolean isStatus = Boolean.parseBoolean(req.getParameter("isStatus"));

        EmployeeDto employeeDto = new EmployeeDto(name, email, phone, address,
                gender,departmentId,job,roleId, isStatus);

        switch (action) {
            case "/employee/add":
                employeeService.add(employeeDto);
                resp.sendRedirect(req.getContextPath() + "/employees");
                break;
            case "/employee/edit":
                Integer id = Integer.valueOf(req.getParameter("id"));
                EmployeeDto editingEmployee = employeeService.find(id);
                editingEmployee.setName(name);
                editingEmployee.setEmail(email);
                editingEmployee.setPhone(phone);
                editingEmployee.setAddress(address);
                editingEmployee.setGender(gender);
                editingEmployee.setDepartmentId(departmentId);
                editingEmployee.setJob(job);
                editingEmployee.setRoleId(roleId);
                editingEmployee.setStatus(isStatus);
                employeeService.edit(editingEmployee);
                resp.sendRedirect(req.getContextPath() + "/employees");
                break;
        }
    }
}
