<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.HashMap" %>

<%
    PrintWriter printWriter = response.getWriter();
    HashMap<String, String> hashMap = new HashMap<>();

    hashMap.put("hello", "Xin chào");
    hashMap.put("goodbye", "Tam biệt");
    hashMap.put("thank", "Cảm ơn");
    hashMap.put("sorry", "Xin lỗi");

    String search = request.getParameter("search"),
           result = hashMap.get(search);

    printWriter.println
    (
        "<!DOCTYPE html>" +
        "<html lang=\"en\">" +

        "<head>" +

        "<meta charset=\"UTF-8\"/>" +
        "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>" +

        "<title>Simple Dictionary</title>" +

        "</head>" +

        "<body>" +

        "<h2>Search: " + search + "</h2>" +
        "<h2>Result: " + result + "</h2>" +

        "</body>" +

        "</html>"
    );
%>