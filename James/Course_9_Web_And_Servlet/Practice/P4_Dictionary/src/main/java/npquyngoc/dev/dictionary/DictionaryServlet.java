package npquyngoc.dev.dictionary;

import java.io.PrintWriter;
import java.io.IOException;

import java.util.HashMap;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.annotation.WebServlet;

@WebServlet
(
    name = "DictionaryServlet",
    value = "/dictionary_servlet"
)
public class DictionaryServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
        HashMap<String, String> hashMap = new HashMap<>();
        PrintWriter printWriter = response.getWriter();

        hashMap.put("hello", "Xin chao");
        hashMap.put("goodbye", "Tam biet");
        hashMap.put("thank", "Cam on");
        hashMap.put("sorry", "Xin loi");

        String search = request.getParameter("translate"),
               result = hashMap.get(search);

        printWriter.println
        (
            "<!doctype html>" +
            "<html lang=\"en\">" +

            "<head>" +

            "<meta charset=\"UTF-8\"/>" +
            "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>" +

            "<title>Dictionary</title>" +

            "</head>" +

            "<body>" +

            "<h1>Word: " + search + "</h1>" +
            "<h1>Result: " + result + "</h1>" +

            "</body>" +

            "</html>"
        );
    }
}