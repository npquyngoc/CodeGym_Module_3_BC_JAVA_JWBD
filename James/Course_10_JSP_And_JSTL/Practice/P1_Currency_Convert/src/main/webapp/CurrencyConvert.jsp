<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Currency Convert</title>

</head>

<body>

    <%
        float rate = Float.parseFloat(request.getParameter("currency_rate")),
              usd = Float.parseFloat(request.getParameter("currency_usd")),
              vnd = (rate * usd);
    %>

    <h2>Currency Convert</h2>

    <br />

    <h4>Rate: <%=rate%></h4>
    <h4>USD: <%=usd%></h4>
    <h4>VND: <%=vnd%></h4>

</body>

</html>