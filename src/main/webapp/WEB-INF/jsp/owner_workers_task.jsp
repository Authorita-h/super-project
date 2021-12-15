<%@ page import="com.SuperProject.entity.Hotel" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Worker's tasks</title>
    <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="header_owner.jsp"/>

<section>
<div class="content-f">
    <thead>
    <th>10 отжиманий, выполнять!!!</th>
    </thead>
    <form action="/owner/workers/task_final" th:object="${worker}" enctype="multipart/form-data" method="post">
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Задание: </label>
            <input type="text" class="form-control" name="task" id="exampleInputEmail1" aria-describedby="emailHelp">
            <input type="hidden" name="worker" value="${worker.getId()}"/>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<div>
    <a href="/owner/home" class="btn btn-primary btn-sm m-2">Назад</a>
</div>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>