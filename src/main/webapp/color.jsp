<%--
  Created by IntelliJ IDEA.
  User: nicholasadams916
  Date: 12/2/21
  Time: 9:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="partials/head.jsp"%>
<body>
<div class="container">

    <h1>Tell me your favorite color</h1>
    <form method="post">
        <div class="mb-3">
            <label for="color" class="form-label">Input color here!</label>
            <input type="text" class="form-control" id="color" name="color" placeholder="color">
            <br>
            <button type="submit" class="btn btn-primary">Submit</button>

        </div>
    </form>

</div>

</body>
</html>
