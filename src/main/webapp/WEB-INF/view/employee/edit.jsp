<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--<main>--%>
<%--  <div class="container-fluid">--%>
<%--    <h1 class="mt-4">Sửa thông tin nhân viên</h1>--%>
<%--    <div class="card mb-4">--%>
<%--      <div class="card-header">--%>
<%--        <i class="fas fa-table mr-1"></i> Sửa thông tin nhân viên--%>
<%--      </div>--%>
<%--      <div class="card-body">--%>
<%--        <form action="<c:url value="/employee/edit"/>" method="post">--%>
<%--          <div class="row">--%>
<%--            <div class="col-md-6">--%>
<%--              <div class="form-group">--%>
<%--                <input type="hidden" name="id" value="${employee.id}"--%>
<%--                       class="form-control" />--%>
<%--              </div>--%>

<%--              <div class="form-group">--%>
<%--                <label>Name</label>--%>
<%--                <input type="text" name="name" value="${employee.getName()}" class="form-control" />--%>
<%--              </div>--%>

<%--              <div class="form-group">--%>
<%--                <label>Email</label>--%>
<%--                <input type="text" name="email" value="${employee.getEmail()}" class="form-control" />--%>
<%--              </div>--%>

<%--              <div class="form-group">--%>
<%--                <label>Phone</label>--%>
<%--                <input type="text" name="phone" value="${employee.getPhone()}" class="form-control" />--%>
<%--              </div>--%>

<%--              <div class="form-group">--%>
<%--                <label>Address</label>--%>
<%--                <input type="text" name="address" value="${employee.getAddress()}" class="form-control" />--%>
<%--              </div>--%>

<%--              <div class="form-group">--%>
<%--                <label>Gender</label>--%>
<%--                <select id="gender" name="gender">--%>
<%--                  <option value="true">Male</option>--%>
<%--                  <option value="false">Female</option>--%>
<%--                </select>--%>
<%--              </div>--%>

<%--              <div class="form-group">--%>
<%--                <label>Belong Department</label>--%>
<%--                <input type="number" name="departmentId" value="${employee.getDepartmentId()}" class="form-control" />--%>
<%--              </div>--%>

<%--              <div class="form-group">--%>
<%--                <label>Job</label>--%>
<%--                <input type="text" name="job" value="${employee.getJob()}" class="form-control" />--%>
<%--              </div>--%>

<%--              <div class="form-group">--%>
<%--                <label>Role</label>--%>
<%--                <input type="number" name="roleId" value="${employee.getRoleId()}" class="form-control" />--%>
<%--              </div>--%>

<%--              <div class="form-group">--%>
<%--                <label>Status</label>--%>
<%--                <select id="isStatus" name="isStatus">--%>
<%--                  <option value="true">Active</option>--%>
<%--                  <option value="false">Inactive</option>--%>
<%--                </select>--%>
<%--              </div>--%>

<%--&lt;%&ndash;              <div class="form-group">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <label>Loại quyền</label><br>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <select name="roleId">&ndash;%&gt;--%>
<%--&lt;%&ndash;                  <c:forEach items="${roles}" var="role">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <option value="${role.id}">${role.description}</option>&ndash;%&gt;--%>
<%--&lt;%&ndash;                  </c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </select>&ndash;%&gt;--%>
<%--&lt;%&ndash;              </div>&ndash;%&gt;--%>

<%--            </div>--%>
<%--            <div class="col-12 mt-3">--%>
<%--              <div class="form-group">--%>
<%--                <a class="btn btn-secondary"--%>
<%--                   href="<c:url value="/employees"/>">Quay lại</a>--%>
<%--                <button type="submit" class="btn btn-success">Lưu lại</button>--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </form>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</main>--%>
<main style="width: 1000px; margin: auto; padding-top:100px ">

    <!-- Profile Edit Form -->
    <form action="<c:url value="/employee/edit"/>" method="post">
      <div class="row mb-3">
        <label  class="col-md-4 col-lg-3 col-form-label">Profile Image</label>
        <div class="col-md-8 col-lg-9">
          <img src="${contextPath}/resources/assets/img/profile-img.jpg" alt="Profile">
          <div class="pt-2">
            <a href="#" class="btn btn-primary btn-sm" title="Upload new profile image"><i class="bi bi-upload"></i></a>
            <a href="#" class="btn btn-danger btn-sm" title="Remove my profile image"><i class="bi bi-trash"></i></a>
          </div>
        </div>
      </div>

      <div class="row mb-3">
        <label for="id" class="col-md-4 col-lg-3 col-form-label">Id</label>
        <div class="col-md-8 col-lg-9">
          <input name="id" type="hidden" class="form-control" id="id" value="${employee.getId()}">
        </div>
      </div>

      <div class="row mb-3">
        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Full Name</label>
        <div class="col-md-8 col-lg-9">
          <input name="name" type="text" class="form-control" id="fullName" value="${employee.getName()}">
        </div>
      </div>


      <div class="row mb-3">
        <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Gender</label>
        <div class="col-md-8 col-lg-9">
          <select id="gender" name="gender" class="form-control">
            <option value="true">Male</option>
            <option value="false">Female</option>
          </select>
        </div>
      </div>

      <div class="row mb-3">
        <label for="idDepartment" class="col-md-4 col-lg-3 col-form-label">Id Department</label>
        <div class="col-md-8 col-lg-9">
          <input name="departmentId" type="number" class="form-control" id="idDepartment" value="${employee.getDepartmentId()}">
        </div>
      </div>

      <div class="row mb-3">
        <label for="job" class="col-md-4 col-lg-3 col-form-label">Job</label>
        <div class="col-md-8 col-lg-9">
          <input name="job" type="text" class="form-control" id="Job" value="${employee.getJob()}">
        </div>
      </div>

      <div class="row mb-3">
        <label for="idRole" class="col-md-4 col-lg-3 col-form-label">Id Role</label>
        <div class="col-md-8 col-lg-9">
          <input name="roleId" type="number" class="form-control" id="idRole" value="${employee.getRoleId()}">
        </div>
      </div>


      <div class="row mb-3">
        <label for="Address" class="col-md-4 col-lg-3 col-form-label">Address</label>
        <div class="col-md-8 col-lg-9">
          <input name="address" type="text" class="form-control" id="Address" value="${employee.getAddress()}">
        </div>
      </div>

      <div class="row mb-3">
        <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Phone</label>
        <div class="col-md-8 col-lg-9">
          <input name="phone" type="text" class="form-control" id="Phone" value="${employee.getPhone()}">
        </div>
      </div>

      <div class="row mb-3">
        <label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label>
        <div class="col-md-8 col-lg-9">
          <input name="email" type="email" class="form-control" id="Email" value="${employee.getEmail()}">
        </div>
      </div>

      <div class="row mb-3">
        <label for="isStatus" class="col-md-4 col-lg-3 ">Status</label>
        <div class="col-md-8 col-lg-9">
          <select id="isStatus" name="isStatus" class="form-control">
            <option value="true">Active</option>
            <option value="false">Inactive</option>
          </select>
        </div>
      </div>


      <div class="row mb-3">
        <label for="Twitter" class="col-md-4 col-lg-3 col-form-label">Twitter Profile</label>
        <div class="col-md-8 col-lg-9">
          <input name="twitter" type="text" class="form-control" id="Twitter" value="https://twitter.com/#">
        </div>
      </div>

      <div class="row mb-3">
        <label for="Facebook" class="col-md-4 col-lg-3 col-form-label">Facebook Profile</label>
        <div class="col-md-8 col-lg-9">
          <input name="facebook" type="text" class="form-control" id="Facebook" value="https://facebook.com/#">
        </div>
      </div>

      <div class="row mb-3">
        <label for="Instagram" class="col-md-4 col-lg-3 col-form-label">Instagram Profile</label>
        <div class="col-md-8 col-lg-9">
          <input name="instagram" type="text" class="form-control" id="Instagram" value="https://instagram.com/#">
        </div>
      </div>

      <div class="row mb-3">
        <label for="Linkedin" class="col-md-4 col-lg-3 col-form-label">Linkedin Profile</label>
        <div class="col-md-8 col-lg-9">
          <input name="linkedin" type="text" class="form-control" id="Linkedin" value="https://linkedin.com/#">
        </div>
      </div>

      <div class="text-center">
        <button type="submit" class="btn btn-primary">Save Changes</button>
      </div>
    </form><!-- End Profile Edit Form -->

</main>