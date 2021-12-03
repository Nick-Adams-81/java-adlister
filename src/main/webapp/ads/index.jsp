<%--
  Created by IntelliJ IDEA.
  User: nicholasadams916
  Date: 12/3/21
  Time: 11:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>test</h1>
<c:forEach var="ad" items="${ads}">
        <h1>Title: ${ad.title}</h1>
        <h2>Description: ${ad.description}</h2>
</c:forEach>
</body>
</html>
