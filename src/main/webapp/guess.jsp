<%--
  Created by IntelliJ IDEA.
  User: nicholasadams916
  Date: 12/2/21
  Time: 1:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="partials/head.jsp"%>
<body>
<div class="container">
    <div class="mb-3">
        <form method="post">
            <label for="guess" class="form-label">Guess a number from 1 to 3!</label>
            <input type="text" class="form-control" id="guess" name="guess" placeholder="Guess a number">
            <button type="submit" class="btn btn-primary">Submit guess</button>
        </form>

    </div>
</div>
</body>
</html>
