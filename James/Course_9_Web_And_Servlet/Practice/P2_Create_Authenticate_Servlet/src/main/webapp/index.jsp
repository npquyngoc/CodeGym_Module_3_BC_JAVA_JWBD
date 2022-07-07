<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!doctype html>
<html>

<head>

    <title>Authenticate Servlet</title>

    <style>
        .authenticate
        {
            width: 230px;
            height: 180px;

            margin: 0;
            padding: 10px;

            border: 1px solid #ccc;
        }

        .authenticate input
        {
            margin: 5px;
            padding: 5px;
        }
    </style>

</head>

<body>

<form method="post" action="authenticate_servlet">
    <div class="authenticate">
        <h2>Authenticate</h2>

        <input type="text" name="username" placeholder="Type a username..."/>
        <input type="password" name="password" placeholder="Type a password..."/>
        <input type="submit" value="Sign In"/>
    </div>
</form>

</body>

</html>