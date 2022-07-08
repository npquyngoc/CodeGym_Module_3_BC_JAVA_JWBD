<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">

<head>

    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Currency Convert</title>

</head>

<body>

    <h2>Currency Convert</h2>

    <form method="post" action="currency_convert_servlet">
        <label for="input_rate">Rate: </label>
        <input id="input_rate" type="number" name="rate" value="22000"/>
        <br/>
        <label for="input_usd">USD: </label>
        <input id="input_usd" type="number" name="usd" value="0">
        <br/><br/>
        <input id="input_submit" type="submit" value="Click here to convert">
    </form>

</body>

</html>