
<%@ page import="com.SuperProject.entity.Hotel" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Jobs</title>
    <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="header_owner.jsp"/>

<section>
<div class="fs-5">
    <thead>
    <th >Jobs</th>
    </thead>
</div>
<div class="fst-italic">
    <jsp:text>Рабочих мест: </jsp:text>
    <td>${owner.getWorkplace()}</td>
</div>
<div class="fst-italic">
    <jsp:text>Свободных рабочих мест: </jsp:text>
    <td>${owner.getFreeWorkplace()}</td>
</div>

<div>
    <a href="/owner/del_job"  class="btn btn-danger btn-sm m-2">Удалить место</a>
    <a href="/owner/give_job"  class="btn btn-success btn-sm m-2">Добавить место</a>
</div>
<div>
    <a href="/owner/home" class="btn btn-primary btn-sm m-2">Назад</a>
</div>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>