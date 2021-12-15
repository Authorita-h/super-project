<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Add hotel</title>
  <link href="${contextPath}/resources/css/styles.css" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<jsp:include page="header_admin.jsp"/>


<section>
    <form action="/admin/hotel_add" method="post" class="content-f">

        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Hotel name</label>
            <input type="text" class="form-control" name="hotelName" id="exampleInputEmail1" aria-describedby="emailHelp">

        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Count of rooms</label>
            <input type="text" class="form-control" name="rooms" id="exampleInputPassword1">
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Owner name</label>
            <input type="text" class="form-control" name="ownerName" id="exampleInputEmail2" aria-describedby="emailHelp">
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>