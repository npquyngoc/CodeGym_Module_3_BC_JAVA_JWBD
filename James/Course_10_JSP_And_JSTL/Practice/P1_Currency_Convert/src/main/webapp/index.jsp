<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Currency Convert</title>

</head>

<body>

    <h2>Currency Convert</h2>

    <form method="post" action="CurrencyConvert.jsp">
        <label for="input_currency_rate">Currency Rate:</label>
        <br />
        <input id="input_currency_rate" min="1" type="number" name="currency_rate" value="22000" placeholder="Type here currency rate" />

        <br />
        <br />

        <label for="input_currency_usd">Currency USD:</label>
        <br />
        <input id="input_currency_usd" min="1" type="number" name="currency_usd" value="1" placeholder="Type here currency usd" />

        <br />
        <br />

        <input type="submit" value="Convert" />
    </form>

</body>

</html>