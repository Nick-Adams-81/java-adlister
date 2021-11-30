
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int counter = 0; %>
<% counter += 1;
request.setAttribute("NumberOfVisits", counter); %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%@include file="partials/navbar.jsp"%>

<%
    if(request.getParameter("reset") != null && request.getParameter("reset").equals("true")) {
        counter = 0;
    }

%>

<h1>The current count is ${NumberOfVisits}.</h1>

<p>resetting count: ${param.reset}</p>

View the page source!

<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->
<%@include file="partials/scripts.jsp"%>
</body>
</html>