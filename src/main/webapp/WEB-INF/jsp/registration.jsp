<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Registration</title>
    <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body class="text-center login_body">

<main class="form-signin">
  <form:form method="POST" modelAttribute="userForm">
    <img class="mb-4" src="${contextPath}/resources/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">Please sign up</h1>

    <div class="form-floating">
      <form:input type="text" path="username" placeholder="Username" class="form-control"
                  autofocus="true"></form:input>
      <label>Login</label>
      <form:errors path="username"></form:errors>
        ${usernameError}
    </div>
    <div class="form-floating">
      <form:input type="password" path="password" placeholder="Password" class="form-control"
                  autofocus="true"></form:input>
      <label>Password</label>
    </div>
    <div class="form-floating">
      <form:input type="password" path="passwordConfirm" class="form-control"
                  placeholder="Confirm your password"></form:input>
      <label>Confirm password</label>
      <form:errors path="password"></form:errors>
        ${passwordError}
    </div>

    <div class="form-floating">
      <div class="form-check mb-3">
        <input class="form-check-input" type="radio" name="myStatus" id="OWNER" checked value="OWNER">
        <label class="form-check-label" for="OWNER">
          owner
        </label>
      </div>
      <div class="form-check mb-3">
        <input class="form-check-input" type="radio" name="myStatus" id="WORKER" checked value="WORKER">
        <label class="form-check-label" for="WORKER">
          worker
        </label>
      </div>
      <div class="form-check mb-3">
        <input class="form-check-input" type="radio" name="myStatus" id="VISITOR" checked value="VISITOR">
        <label class="form-check-label" for="VISITOR">
          visitor
        </label>
      </div>
    </div>

    <button class="w-100 btn btn-lg btn-primary" type="submit">Зарегестрироваться</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2021</p>
  </form:form>
</main>


</body>
</html>