<%@ page import="com.SuperProject.entity.Hotel" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Tasks</title>
    <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
  <jsp:include page="header_worker.jsp"/>

<section>
<div class="content-f">
        <table class="table">
          <thead>
            <tr>
              <th scope="col"><jsp:text>Task: </jsp:text></th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>${worker.task}</td>
            </tr>
          </tbody>
        </table>
        <a href="/worker/home" class="btn btn-primary btn-sm m-2">Назад</a>
</div>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>