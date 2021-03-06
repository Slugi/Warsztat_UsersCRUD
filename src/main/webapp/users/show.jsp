<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>UserCRUD</title>

    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">


    <link href="<c:url value="/theme/css/sb-admin-2.css"/>" rel="stylesheet">
    <link href="<c:url value="/theme/vendor/fontawesome-free/css/all.min.css"/>" rel="stylesheet">


    <script src="https://kit.fontawesome.com/yourcode.js"></script>
</head>
<body>

<div id="wrapper">

    <%@include file="/META-INF/fragments/header.jsp" %>

    <div class="container-fluid">
        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
            <a href="/user/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                    class="fas fa-download fa-sm text-white-50"></i>Dodaj użytkownika</a>

        </div>
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary"></h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <form >
                        <div class="form-group">
                            <label for="id">id użytkownika</label>
                            <input value="${user.id}" name="userId" type="text" class="form-control" id="id" readonly>
                        </div>
                        <input type="hidden" name="id" value="${user.id}"/>
                        <div class="form-group">
                            <label for="userName">Nazwa</label>
                            <input value="${user.userName}" name="userName" type="text" class="form-control" id="userName" readonly>
                        </div>
                        <div class="form-group">
                            <label for="userEmail">Email</label>
                            <input value="${user.email}" name="userEmail" type="email" class="form-control" id="userEmail" readonly>
                        </div>

                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <a href="<c:url value="/user/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                    class="fas fa-download fa-sm text-white-50"></i> OK </a>
                        </div>
                    </form >
                </div>
            </div>
            <%@include file="/META-INF/fragments/footer.jsp"%>
</body>
</html>





