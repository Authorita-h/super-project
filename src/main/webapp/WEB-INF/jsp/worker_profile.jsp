<%@ page import="com.SuperProject.entity.Hotel" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Profile</title>
    <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="header_worker.jsp"/>

<section>
<div class="content-nonetable">
<div class="fs-5">
<div class="fs-3">
    <thead>
    <th>My profile info</th>
    </thead>
</div>
<div class="fst-italic">
    <jsp:text>Имя: </jsp:text>
    <td>${worker.name}</td>
</div>
<div class="fst-italic">
    <jsp:text>Фамилия: </jsp:text>
    <td>${worker.surname}</td>
</div>
<div class="fst-italic">
    <jsp:text>Опыт работы: </jsp:text>
    <td>${worker.ex}</td>
</div>
<div class="fst-italic">
    <jsp:text>Рабочий день: </jsp:text>
    <td>${worker.timeType}</td>
</div>
</div>
<div class="content-buttons">
    <a href="/worker/update" class="btn btn-primary btn-sm ml-20" role="button">Обновить</a>
    <a href="/worker/home" class="btn btn-primary btn-sm ml-2" role="button">Назад</a>
</div>
</div>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>