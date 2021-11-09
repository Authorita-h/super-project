<%@ page import="com.SuperProject.entity.Hotel" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="header_worker.jsp"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Log in with your account</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
</head>

<body>
<div>
    <thead>
    <th>Сеть отелей собственника</th>
    </thead>
</div>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Hotel name</th>
        <th scope="col">Rooms</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="hotel" items="${hotelList}">
        <tr>
            <th scope="row">${hotel.id}</th>
            <td>${hotel.name}</td>
            <td>${hotel.rooms}</td>
        </tr>
    </c:forEach>
    </tbody>

</table>
<div>
    <a href="/worker/home">Назад</a>
</div>
</body>
</html>