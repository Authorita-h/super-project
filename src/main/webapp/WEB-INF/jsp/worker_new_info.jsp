<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>New info</title>
    <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="header_worker.jsp"/>

<section>
<form action="/worker/profile" th:object="${worker}" enctype="multipart/form-data" method="post">
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Имя</label>
        <input type="text" class="form-control" name="name" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Фамилия</label>
        <input type="text" class="form-control" name="surname" id="exampleInputPassword1">
    </div>
    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Опыт работы</label>
        <input type="text" class="form-control" name="ex" id="exampleInputEmail2">
    </div>
    <div>
        <select class="form-select form-select-sm" aria-label=".form-select-sm example" name="timeType">
            <option selected>Open this select menu</option>
            <option value="FULLTIME">Полная занятость</option>
            <option value="PARTTIME">Частичная занятось</option>
            <option value="FIXED">Фиксированный график</option>
            <option value="FLEXIBLE">Гибкий график</option>
            <option value="ROTATING">Сменный график</option>
        </select>
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>