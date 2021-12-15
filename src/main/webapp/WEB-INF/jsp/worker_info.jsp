<%@ page import="com.SuperProject.entity.Hotel" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Info</title>
    <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="header_worker.jsp"/>

<section>
<div>
    <thead>
    <th>Сеть отелей собственника</th>
    </thead>
</div>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Имя отеля</th>
        <th scope="col">Команты</th>
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
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>