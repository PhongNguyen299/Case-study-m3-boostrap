<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="dec" %>
<c:set var="commonUrl" value="/WEB-INF/view/common"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Case Study module 3</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="${contextPath}/resources/assets/img/favicon.png" rel="icon">
    <link href="${contextPath}/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <link rel="stylesheet" href="<c:url value="${contextPath}/resources/assets/vendor/bootstrap/css/bootstrap.min.css"/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value="${contextPath}/resources/assets/vendor/boxicons/css/boxicons.min.css"/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value="${contextPath}/resources/assets/vendor/quill/quill.snow.css"/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value="${contextPath}/resources/assets/vendor/quill/quill.bubble.css"/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value="${contextPath}/resources/assets/vendor/remixicon/remixicon.css"/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value="${contextPath}/resources/assets/vendor/simple-datatables/style.css"/>" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.3/font/bootstrap-icons.min.css" type="text/css"/>

    <link rel="stylesheet" href="<c:url value="${contextPath}/resources/assets/css/style.css"/>" type="text/css"/>
</head>

<body class="sb-nav-fixed toggle-sidebar">
<!-- Start NavBar -->
<jsp:include page="${commonUrl}/header.jsp"></jsp:include>
<!-- End NavBar -->


<div id="layoutSidenav">
    <!-- Start SideBar -->
<%--    <jsp:include page="${commonUrl}/sidebar.jsp"></jsp:include>--%>
    <!-- End SideBar -->

    <div id="layoutSidenav_content">
        <!-- Start Content -->
        <dec:body></dec:body>
        <!-- End Content -->

        <!-- Start Footer -->
        <jsp:include page="${commonUrl}/footer.jsp"></jsp:include>
        <!-- End Footer -->
    </div>
</div>


<!-- Vendor JS Files -->
<%--<script src="${contextPath}/resources/assets/vendor/apexcharts/apexcharts.min.js"></script>--%>
<%--<script src="${contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>--%>
<%--<script src="${contextPath}/resources/assets/vendor/chart.js/chart.umd.js"></script>--%>
<%--<script src="${contextPath}/resources/assets/vendor/echarts/echarts.min.js"></script>--%>
<%--<script src="${contextPath}/resources/assets/vendor/quill/quill.min.js"></script>--%>
<%--<script src="${contextPath}/resources/assets/vendor/simple-datatables/simple-datatables.js"></script>--%>
<%--<script src="${contextPath}/resources/assets/vendor/tinymce/tinymce.min.js"></script>--%>
<%--<script src="${contextPath}/resources/assets/vendor/php-email-form/validate.js"></script>--%>

<script src="<c:url value="${contextPath}/resources/assets/vendor/apexcharts/apexcharts.min.js"/>"></script>
<script src="<c:url value="${contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="${contextPath}/resources/assets/vendor/chart.js/chart.umd.js"/>"></script>
<script src="<c:url value="${contextPath}/resources/assets/vendor/echarts/echarts.min.js"/>"></script>
<script src="<c:url value="${contextPath}/resources/assets/vendor/quill/quill.min.js"/>"></script>
<script src="<c:url value="${contextPath}/resources/assets/vendor/simple-datatables/simple-datatables.js"/>"></script>
<script src="<c:url value="${contextPath}/resources/assets/vendor/tinymce/tinymce.min.js"/>"></script>
<script src="<c:url value="${contextPath}/resources/assets/vendor/php-email-form/validate.js"/>"></script>

<!-- Template Main JS File -->
<%--<script src="${contextPath}/resources/assets/js/main.js"></script>--%>
<script src="<c:url value="${contextPath}/resources/assets/js/main.js"/>"></script>
</body>

</html>