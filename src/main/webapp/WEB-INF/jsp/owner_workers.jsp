<%@ page import="com.SuperProject.entity.Hotel" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Workers</title>
    <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="header_owner.jsp"/>

<section>
<div class="content-f">
    <table class="table align-middle">
        <thead>
        <th>Мои работники</th>
        <th>Действия</th>
        </thead>
        <c:forEach items="${workerList}" var="worker">
            <tr>
                <td class="align-middle">${worker.getUsername()}</td>
                <td>
                    <form action="/owner/workers" method="post">
                        <input type="hidden" name="worker" value="${worker.getId()}"/>
                        <button type="submit" class="btn btn-danger btn-sm m-2">Уволить</button>
                    </form>
                </td>
                <td>
                    <form action="/owner/workers/task" method="post">
                        <input type="hidden" name="worker" value="${worker.getId()}"/>
                        <button type="submit" class="btn btn-primary btn-sm m-2">Дать задание</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="/owner/home" class="btn btn-primary btn-sm m-2">Назад</a>
</div>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>