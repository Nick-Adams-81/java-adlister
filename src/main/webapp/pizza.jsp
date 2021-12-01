<%--
  Created by IntelliJ IDEA.
  User: nicholasadams916
  Date: 12/1/21
  Time: 11:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="partials/head.jsp" %>
<body>

<form method="post">
    <div class="mb-3">
        <label for="crust" class="form-label">Crust</label>
        <input type="text" class="form-control" id="crust" name="crust" placeholder="crust choice">
    </div>
    <div class="mb-3">
        <label for="sauce" class="form-label">sauce</label>
        <input type="text" class="form-control" id="sauce" name="sauce" placeholder="sauce choice">
    </div>
    <div class="mb-3">
        <label for="size" class="form-label">Size</label>
        <input type="text" class="form-control" id="size" name="size" placeholder="size">
    </div>
    <div class="mb-3">
        <label for="toppings" class="form-label">Toppings</label>
        <input type="text" class="form-control" id="toppings" name="toppings" placeholder="toppings">
    </div>
    <div class="mb-3">
        <label for="address" class="form-label">Delivery address</label>
        <input type="text" class="form-control" id="address" name="address" placeholder="address">
    </div>

    <button type="submit" class="btn btn-success">Submit</button>

    <h1>Your order</h1>
    <h3>Crust: ${crust}</h3>
    <h3>Sauce: ${sauce}</h3>
    <h3>size: ${size}</h3>
    <h3>Toppings: ${toppings}</h3>
</form>
</body>
</html>
