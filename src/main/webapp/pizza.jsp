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
<br>
<div class="container">
    <form method="post">
        <div class="mb-3">
            <label for="crust" class="form-label">Crust</label>
            <select class="form-select" aria-label="Default select example" id="crust" name="crust">
                <option selected>Crust</option>
                <option value="Thin">Thin</option>
                <option value="Medium">Medium</option>
                <option value="Thick">Thick</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="sauce" class="form-label">Sauce</label>
            <select class="form-select" aria-label="Default select example" id="sauce" name="sauce">
                <option selected>Sauce</option>
                <option value="Marinara">Marinara</option>
                <option value="Ranch">Ranch</option>
                <option value="None">None</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="size" class="form-label">Size</label>
            <select class="form-select" aria-label="Default select example" id="size" name="size">
                <option selected>Size</option>
                <option value="Small">Small</option>
                <option value="Medium">Medium</option>
                <option value="Large">Large</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="toppings" class="form-label">Toppings</label>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="Cheese" id="toppings" name="toppings">
                <label class="form-check-label" for="flexCheckDefault">
                    Cheese
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="Peperoni" id="toppings2" name="toppings">
                <label class="form-check-label" for="flexCheckChecked">
                    Peperoni
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="Chicken" id="flexCheckDefault" name="toppings">
                <label class="form-check-label" for="flexCheckDefault">
                    Chicken
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="Pineapple" id="flexCheckChecked" name="toppings">
                <label class="form-check-label" for="flexCheckChecked">
                    Pineapple
                </label>
            </div>
        </div>
        <div class="mb-3">
            <label for="address" class="form-label">Delivery address</label>
            <input type="text" class="form-control" id="address" name="address" placeholder="address">
        </div>

        <button type="submit" class="btn btn-success">Submit</button>

        <h1>Your order</h1>
        <h3>Crust: ${crust}</h3>
        <h3>Sauce: ${sauce}</h3>
        <h3>Size: ${size}</h3>
        <h3>Toppings: ${toppings}</h3>

    </form>



</div>

</body>
</html>
