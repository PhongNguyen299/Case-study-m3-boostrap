<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<main style="padding-top: 50px">
    <div class="container">
        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                        <div class="d-flex justify-content-center py-4">
                            <a href="index.html" class="logo d-flex align-items-center w-auto">
                                <img src="${contextPath}/resources/assets/img/logo.png" alt="">
                                <span class="d-none d-lg-block">NiceAdmin</span>
                            </a>
                        </div><!-- End Logo -->

                        <div class="card mb-3">

                            <div class="card-body">

                                <div class="pt-4 pb-2">
                                    <h5 class="card-title text-center pb-0 fs-4">Add new employee</h5>
                                    <p class="text-center small">Enter your personal details to create account</p>
                                </div>

                                <form action="<c:url value="/employee/add"/>" method="post"
                                      class="row g-3 needs-validation" novalidate>
                                    <div class="col-12">
                                        <label for="name" class="form-label">Full Name</label>
                                        <input type="text" name="name" class="form-control" id="name" required>
                                        <div class="invalid-feedback">Please, enter name!</div>
                                    </div>

                                    <div class="col-12">
                                        <label for="email" class="form-label"> Email</label>
                                        <input type="text" name="email" class="form-control" id="email" required>
                                        <div class="invalid-feedback">Please enter a valid  Email!</div>
                                    </div>

                                    <div class="col-12">
                                        <label for="password" class="form-label">Password</label>
                                        <input type="text" name="password" class="form-control" id="password" required>
                                        <div class="invalid-feedback">Please enter a valid Password!</div>
                                    </div>

                                    <div class="col-12">
                                        <label for="phone" class="form-label">Phone</label>
                                        <input type="text" name="phone" class="form-control" id="phone" required>
                                        <div class="invalid-feedback">Please enter a valid Email phone number!</div>
                                    </div>

                                    <div class="col-12">
                                        <label for="address" class="form-label">Address</label>
                                        <input type="text" name="address" class="form-control" id="address" required>
                                        <div class="invalid-feedback">Please enter a valid address!</div>
                                    </div>

                                    <div class="col-12">
                                        <label for="dob" class="form-label">Date of birth</label>
                                        <input type="date" name="dob" class="form-control" id="dob" required>
                                        <div class="invalid-feedback">Please enter a valid Date of birth!</div>
                                    </div>

                                    <div class="col-12">
                                        <label for="gender" class="form-label">Gender</label>
                                        <select id="gender" name="gender" class="form-control">
                                            <option value="true">Male</option>
                                            <option value="false">Female</option>
                                        </select>
                                        <div class="invalid-feedback">Please enter a valid Gender!</div>
                                    </div>

                                    <div class="col-12">
                                        <label for="departmentId" class="form-label">Department ID</label>
                                        <input type="number" name="departmentId" class="form-control" id="departmentId"
                                               required>
                                        <div class="invalid-feedback">Please enter a valid Department ID!</div>
                                    </div>

                                    <div class="col-12">
                                        <label for="job" class="form-label">Job</label>
                                        <input type="text" name="job" class="form-control" id="job" required>
                                        <div class="invalid-feedback">Please enter a valid Job!</div>
                                    </div>

                                    <div class="col-12">
                                        <label for="roleId" class="form-label">Role ID</label>
                                        <input type="number" name="roleId" class="form-control" id="roleId" required>
                                        <div class="invalid-feedback">Please enter a valid Role ID!</div>
                                    </div>

                                    <div class="col-12">
                                        <label for="isStatus" class="form-label">Status</label>
                                        <select id="isStatus" name="isStatus" class="form-control">
                                            <option value="true">Active</option>
                                            <option value="false">Inactive</option>
                                        </select>
                                        <div class="invalid-feedback">Please enter a valid Status!</div>
                                    </div>


                                    <%--                                <div class="col-12">--%>
                                    <%--                                    <label for="yourUsername" class="form-label">Email</label>--%>
                                    <%--                                    <div class="input-group has-validation">--%>
                                    <%--                                        <span class="input-group-text" id="inputGroupPrepend">@</span>--%>
                                    <%--                                        <input type="text" name="username" class="form-control" id="yourUsername" required>--%>
                                    <%--                                        <div class="invalid-feedback">Please choose a username.</div>--%>
                                    <%--                                    </div>--%>
                                    <%--                                </div>--%>

                                    <%--                                <div class="col-12">--%>
                                    <%--                                    <label for="yourPassword" class="form-label">Password</label>--%>
                                    <%--                                    <input type="password" name="password" class="form-control" id="yourPassword" required>--%>
                                    <%--                                    <div class="invalid-feedback">Please enter your password!</div>--%>
                                    <%--                                </div>--%>



                                    <div class="col-12">
                                        <div class="form-check">
                                            <input class="form-check-input" name="terms" type="checkbox" value=""
                                                   id="acceptTerms" required>
                                            <label class="form-check-label" for="acceptTerms">
                                                Do you make sure to create new employee?</label>
                                            <div class="invalid-feedback">You must agree before submitting.</div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100" type="submit">Create</button>
                                    </div>
                                </form>

                            </div>
                        </div>

                        <div class="credits">
                            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </div>
</main>