<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">

<head>

    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Product Discount Calculate</title>

</head>

<body>

    <h2>Product Discount Calculate</h2>

    <form method="post" action="product_discount_calculate_servlet">
        <label for="input_product_description">Product Description: </label>
        <input id="input_product_description" type="text" name="product_description" placeholder="Type here product description..."/>
        <br/>
        <label for="input_product_price">Product Price: </label>
        <input id="input_product_price" type="number" name="product_price" value="0">
        <br/>
        <label for="input_discount_percent">Discount Percent: </label>
        <input id="input_discount_percent" type="number" name="discount_percent" value="0">
        <br/><br/>
        <input id="input_submit" type="submit" value="Click here to calculate">
    </form>

</body>

</html>