<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">

<head>

    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Dictionary</title>

</head>

<body>

    <h2>Dictionary</h2>

    <form method="post" action="dictionary_servlet">
        <label for="input_translate">Translate: </label>
        <input id="input_translate" type="text" name="translate" placeholder="Type here to translate..."/>
        <br/><br/>
        <input id="input_submit" type="submit" value="Click here to translate">
    </form>

</body>

</html>