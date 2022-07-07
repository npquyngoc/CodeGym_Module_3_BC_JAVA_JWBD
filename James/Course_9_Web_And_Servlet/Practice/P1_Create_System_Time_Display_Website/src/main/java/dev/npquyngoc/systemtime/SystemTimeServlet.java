package dev.npquyngoc.systemtime;

import java.io.PrintWriter;
import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "SystemTimeServlet", value = "/system_time_servlet")
public class SystemTimeServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
        PrintWriter printWriter = response.getWriter();
        Date date = new Date();

        printWriter.println("<html>");
        printWriter.println("<h1>" + date + "</h1>");
        printWriter.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        super.doPost(request, response);
    }
}