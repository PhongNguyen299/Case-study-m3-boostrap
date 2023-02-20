<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<main>
<%--    <c:url value="css/styles.css" var="jstlCss" />--%>
<%--    <link href="${jstlCss}" rel="stylesheet" >--%>
    <div class="container-fluid">
        <h1 class="mt-4"></h1>
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table mr-1"></i>
                Danh sách nhân viên
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Address</th>
<%--                            <th>Gender</th>--%>
<%--                            <th>Department</th>--%>
                            <th>Job</th>
<%--                            <th>Role</th>--%>
<%--                            <th>Status</th>--%>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${employees}" var="employee">
                            <tr>
                                <td>${employee.getId()}</td>
                                <td>${employee.getName()}</td>
                                <td>${employee.getEmail()}</td>
                                <td>${employee.getPhone()}</td>
                                <td>${employee.getAddress()}</td>
<%--                                <td>${employee.getGender()}</td>--%>
<%--                                <td>${employee.getDepartmentId()}</td>--%>
                                <td>${employee.getJob()}</td>
<%--                                <td>${employee.getRoleId()}</td>--%>
<%--                                <td>${employee.getStatus()}</td>--%>
                                <td>
                                    <a href="<c:url value="/employee/detail"/>?id=${employee.id}" class="btn btn-sm btn-success">
                                        <i class="fas fa-file-alt"></i> Detail
                                    </a>
                                    <a href="<c:url value="/employee/edit"/>?id=${employee.id}" class="btn btn-sm btn-primary">
                                        <i class="fas fa-pen-square"></i> Edit
                                    </a>
                                    <a href="<c:url value="/employee/remove"/>?id=${employee.id}" class="btn btn-sm btn-danger">
                                        <i class="fas fa-trash"></i> Delete
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="text-right" style="padding-top: 5px;">
                        <a class="btn btn-secondary" href="<c:url value="/employees"/>">Back</a>
                        <a href="<c:url value="/employee/add"/>" class="btn btn-primary">Add new employee</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>