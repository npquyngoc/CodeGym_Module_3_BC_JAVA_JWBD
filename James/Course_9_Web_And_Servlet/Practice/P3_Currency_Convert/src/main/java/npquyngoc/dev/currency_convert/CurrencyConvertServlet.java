package npquyngoc.dev.currency_convert;

import java.io.PrintWriter;
import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.annotation.WebServlet;

@WebServlet
(
    name = "CurrencyConvertServlet",
    value = "/currency_convert_servlet"
)
public class CurrencyConvertServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
        PrintWriter printWriter = response.getWriter();

        double rate = Double.parseDouble(request.getParameter("rate")),
               usd = Double.parseDouble(request.getParameter("usd")),
               vnd = (rate * usd);

        printWriter.println
        (
            "<!doctype html>" +
            "<html lang=\"en\">" +

            "<head>" +

            "<meta charset=\"UTF-8\"/>" +
            "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>" +

            "<title>Currency Convert</title>" +

            "</head>" +

            "<body>" +

            "<h1>Rate: " + rate + "</h1>" +
            "<br/>" +
            "<h1>USD: " + usd + "</h1>" +
            "<h1>VND: " + vnd + "</h1>" +

            "</body>" +

            "</html>"
        );
    }
}