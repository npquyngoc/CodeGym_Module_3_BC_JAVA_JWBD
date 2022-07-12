<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="icon" href="Cores/Images/Icon.jpg">
    <link rel="stylesheet" href="Cores/Stylesheets/Style.css">

    <title>Customer List</title>

</head>

<body>

    <h2>Customer List</h2>

    <div>
        <div class="customer_list_detail">
            <h4>Full Name</h4>

            <hr />

            <c:forTokens
                items=
                    "Mai Văn Hoàn,
                    Nguyễn Văn Nam,
                    Nguyễn Thái Hoà,
                    Trần Đăng Khoa,
                    Nguyễn Đình Thi"

                delims=","
                var="customer_full_name">

                <p class="customer_list_display">
                    <c:out value="${customer_full_name}" />
                </p>

                <hr />
            </c:forTokens>
        </div>

        <div class="customer_list_detail">
            <h4>Birth Day</h4>

            <hr />

            <c:forTokens
                    items=
                    "1983-08-20,
                    1983-08-21,
                    1983-08-22,
                    1983-08-17,
                    1983-08-19"

                    delims=","
                    var="customer_birth_day">

                <p class="customer_list_display">
                    <c:out value="${customer_birth_day}" />
                </p>

                <hr />
            </c:forTokens>
        </div>

        <div class="customer_list_detail">
            <h4>Address</h4>

            <hr />

            <c:forTokens
                    items=
                    "Hà Nội,
                    Bắc Giang,
                    Nam Định,
                    Hà Tây,
                    Hà Nội"

                    delims=","
                    var="customer_address">

                <p class="customer_list_display">
                    <c:out value="${customer_address}" />
                </p>

                <hr />
            </c:forTokens>
        </div>

        <div class="customer_list_detail">
            <h4>Image</h4>

            <hr />

            <c:forTokens
                    items=
                    "Cores/Images/Male_1.jpg,
                    Cores/Images/Male_2.jpg,
                    Cores/Images/Male_3.jpg,
                    Cores/Images/Female_1.jpg,
                    Cores/Images/Female_2.jpg"

                    delims=","
                    var="customer_image">

                <img src="<c:out value="${customer_image}" />" alt="<c:out value="${customer_image}" />" />

                <hr />
            </c:forTokens>
        </div>
    </div>

</body>

</html>