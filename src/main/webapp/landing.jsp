<%--
  Created by IntelliJ IDEA.
  User: nicholasadams916
  Date: 11/30/21
  Time: 10:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! int visits = 0; %>
<%
    if(visits == 0) {
        request.setAttribute("hasUserBeenHere", false);
    } else {
        request.setAttribute("hasUserBeenHere", true);
    }
    visits++;
%>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%@include file="partials/navbar.jsp"%>

<h1>Hello</h1>

<c:choose>

    <c:when test="${hasUserBeenHere}">
        <h2>Welcome back!!</h2>
    </c:when>

    <c:otherwise>
        <h2>Hello for the 1st time</h2>
    </c:otherwise>

</c:choose>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum, hic!</p>

</body>
</html>
