<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Hotels info</title>
  <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="header_admin.jsp"/>

<section>
<table class="table align-middle">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Date</th>
        <th scope="col">Hotel name</th>
        <th scope="col">Buyer</th>
        <th scope="col">Seller</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="myhotels" items="${hotels}">
        <tr>
            <th scope="row">${myhotels.id}</th>
            <td>${myhotels.date}</td>
            <td>${myhotels.hotel.name}</td>
            <td>${myhotels.buyer.username}</td>
            <td>${myhotels.seller.username}</td>
        </tr>
    </c:forEach>
    </tbody>

</table>
<div>
<a href="/admin" class="btn btn-primary btn-sm m-2">Назад</a>
</div>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>