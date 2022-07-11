package npquyngoc.dev.product_discount_calculate;

import java.io.PrintWriter;
import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.annotation.WebServlet;

@WebServlet
(
    name = "ProductDiscountCalculateServlet",
    value = "/product_discount_calculate_servlet"
)
public class ProductDiscountCalculateServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
        PrintWriter printWriter = response.getWriter();

        String productDescription = request.getParameter("product_description");

        double productPrice = Double.parseDouble(request.getParameter("product_price")),
               discountPercent = Double.parseDouble(request.getParameter("discount_percent")),
               result = (productPrice * discountPercent * 0.01);

        printWriter.println
        (
            "<!doctype html>" +
            "<html lang=\"en\">" +

            "<head>" +

            "<meta charset=\"UTF-8\"/>" +
            "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>" +

            "<title>Product Discount Calculate</title>" +

            "</head>" +

            "<body>" +

            "<h1>Product Description: " + productDescription + "</h1>" +
            "<h1>Product Price: " + productPrice + "</h1>" +
            "<h1>Discount Percent: " + discountPercent + "</h1>" +
            "<br/>" +
            "<h1>Result: " + result + "</h1>" +

            "</body>" +

            "</html>"
        );
    }
}