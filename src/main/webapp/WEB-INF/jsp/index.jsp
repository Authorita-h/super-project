<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Main</title>
    <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body class="sb-nav-fixed">

<header class="p-3 mb-3 border-bottom">
<div class="container">
<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">


<ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
  <li><a href="/" class="nav-link px-2 link-secondary">Home</a></li>
  <li><a href="mailto:ask@htmlbook.ru?subject=Вопрос по HTML" class="nav-link px-2 link-dark">Contacts</a></li>
  <li><a href="#" class="nav-link px-2 link-dark">About</a></li>
</ul>



<div class="dropdown text-end">
  <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
    <img src="https://img.icons8.com/small/32/000000/gender-neutral-user.png"/>
  </a>
  <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
    <sec:authorize access="isAuthenticated()">
    <li><a class="dropdown-item" href="/logout">Logout</a></li>
    </sec:authorize>

    <sec:authorize access="!isAuthenticated()">
    <li><a class="dropdown-item" href="/owner/home">Owner</a></li>
    <li><a class="dropdown-item" href="/worker/home">Worker</a></li>
    <li><a class="dropdown-item" href="/visitor/home">Visitor</a></li>
    <li><hr class="dropdown-divider" /></li>
    <li><a class="dropdown-item" href="/registration">Sign up</a></li>
    </sec:authorize>
  </ul>
</div>
</div>
</div>
</header>




<section>

</section>





<footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <div class="col-md-4 d-flex align-items-center">
      <span class="text-muted">&copy; 2021 Company, Inc</span>
    </div>

    <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
      <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg></a></li>
      <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"/></svg></a></li>
      <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"/></svg></a></li>
    </ul>
</footer>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="${contextPath}/resources/js/scripts.js"></script>
</body>
</html>
