<%@ page import="com.SuperProject.entity.Hotel" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="header_owner.jsp"/>

<!DOCTYPE html>
<html>
<body>
<div>
    <thead>
    <th>10 отжиманий, выполнять!!!</th>
    </thead>
    <form action="/owner/workers/task_final" th:object="${worker}" enctype="multipart/form-data" method="post">
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Task: </label>
            <input type="text" class="form-control" name="task" id="exampleInputEmail1" aria-describedby="emailHelp">
            <input type="hidden" name="worker" value="${worker.getId()}"/>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<div>
    <a href="/owner/home">Назад</a>
</div>
</body>
</html>