<%@ page import="com.SuperProject.entity.Hotel" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Sell hotel</title>
    <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="header_owner.jsp"/>

<section>
<div class="content-f">
    <table class="table align-middle">
        <thead>
        <th>Hotel name</th>
        </thead>
        <c:forEach items="${hotelList}" var="hotel">
            <tr>
                <td>${hotel.name}</td>
                <c:if test="${hotel.isSale()}">
                    <td>
                        <form action="/owner/hotel_sell" method="post">
                            <input type="hidden" name="action" value="return"/>
                            <input type="hidden" name="hotel" value="${hotel.id}"/>
                            <button type="submit" class="btn btn-success btn-sm m-2">Return</button>
                        </form>
                    </td>
                </c:if>
                <c:if test="${!hotel.isSale()}">
                    <td>
                        <form action="/owner/hotel_sell" method="post">
                            <input type="hidden" name="action" value="sell"/>
                            <input type="hidden" name="hotel" value="${hotel.id}"/>
                            <button type="submit" class="btn btn-danger btn-sm m-2">Sell</button>
                        </form>
                    </td>
                </c:if>
            </tr>
        </c:forEach>
    </table>
    <a href="/owner/home" class="btn btn-primary btn-sm m-2">Назад</a>
</div>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>