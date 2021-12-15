<%@ page import="com.SuperProject.entity.Hotel" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Get job</title>
    <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="header_worker.jsp"/>

<section>
<div class="content-f">
<div>
    <c:if test="${worker.getEmployer() != null}">
    <table class="table align-middle">
        <thead>
            <tr>
              <th scope="col">Employer</th>
              <th scope="col">Action</th>
            </tr>
        </thead>
         <tbody>
            <tr>
            <td class="align-middle">
             ${worker.getEmployer().getUsername()}
             <form action="/worker/kill_job" method="post">

                 <input type="hidden" name="worker" value="${worker.getId()}"/>
                 <input type="hidden" name="owner" value="${worker.getEmployer().getUsername()}"/>
             </td>
             <td>
                 <button type="submit" class="btn btn-danger btn-sm m-2">Уволиться</button>
             </form>
            </td>
            </tr>
         </tbody>

    </table>
    </c:if>
</div>
    <c:if test="${worker.getEmployer() == null}">
        <table class="table">
            <thead>
            <tr><th>Available jobs</th></tr>
            <tr>
               <th scope="col">Employer</th>
               <th scope="col">Action</th>
            </tr>
            </thead>
            <c:forEach items="${ownerList}" var="owner">
                <tr>
                    <td>${owner.getUsername()}</td>
                    <td>
                        <form action="/worker/get_job" method="post">
                            <input type="hidden" name="owner" value="${owner.getId()}"/>
                            <button type="submit" class="btn btn-success btn-sm m-2">Подать заявку</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
        <a href="/worker/home" class="btn btn-primary btn-sm m-2">Назад</a>
</div>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>