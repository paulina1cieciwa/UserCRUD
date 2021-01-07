<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Dashboard</title>

    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="<c:url value="/theme/css/sb-admin-2.css"/>" rel="stylesheet" type="text/css">

</head>
<body>
<%@ include file="/header.jsp" %>

<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="/user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i>Lista użytkowników</a>
    </div>
    <p1>Add</p1>
    <div class="card position-relative">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Dodaj użytkownika</h6>
        </div>
        <div class="card-body">
            <form method="post">
                Nazwa:<input  name="userName" type="text" class="form-control" id="userName" placeholder="Nazwa użytkownika"><br>
                Email: <input  name="userEmail" type="email" class="form-control" id="userEmail" placeholder="Email użytkownika"><br>
                Hasło: <input name="userPassword" type="password" class="form-control" id="userPassword" placeholder="Hasło użytkownika"><br>
                <input type="submit" value="Edytuj">
            </form>
        </div>
    </div>
<%@ include file="/footer.jsp" %>

</body>
