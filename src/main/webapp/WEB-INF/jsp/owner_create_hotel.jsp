<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Create hotel</title>
    <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="header_owner.jsp"/>

<section>
<form action="/owner/create_hotel" th:object="${owner}" enctype="multipart/form-data" method="post">
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Hotel name</label>
        <input type="email" class="form-control" name="name" id="exampleInputEmail1" aria-describedby="emailHelp">
        <div id="emailHelp" class="form-text">you can't change username after registration</div>
    </div>
    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Count of rooms</label>
        <input type="email" class="form-control" name="rooms" id="exampleInputPassword1">
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>