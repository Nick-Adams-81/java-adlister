<%--
  Created by IntelliJ IDEA.
  User: nicholasadams916
  Date: 11/30/21
  Time: 12:12 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if(request.getMethod().equalsIgnoreCase("post")) {
       String username = request.getParameter("username");
       String password = request.getParameter("password");
       if(username.equals("admin") && password.equals("password")) {
           response.sendRedirect("/profile.jsp");
       }
    }
%>

<html>
    <%@include file="partials/bootstrap.jsp"%>
<body>
<%@include file="partials/navbar.jsp"%>
<form action="login.jsp" method="post">
    <div class="input-group mb-3">
        <div class="input-group-text">

        </div>
        <input type="text" class="form-control" placeholder="Username" id="username" name="username" aria-label="Text input with checkbox">
    </div>

    <div class="input-group">
        <div class="input-group-text">

        </div>
        <input type="text" class="form-control" placeholder="Password" id="password" name="password" aria-label="Text input with radio button">
    </div>
    <br>
    <button type="submit" class="btn btn-success">Submit</button>
</form>
<%@include file="partials/scripts.jsp"%>
</body>
</html>
