package dev.npquyngoc.authenticateservlet.p2_create_authenticate_servlet;

import java.io.PrintWriter;
import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.annotation.WebServlet;

@WebServlet(name = "AuthenticateServlet", value = "/authenticate_servlet")
public class AuthenticateServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
    {
        PrintWriter printWriter = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        printWriter.println("<html>");

        if ("admin".equals(username) && "admin".equals(password)) printWriter.println("<h1>Welcome " + username + "!</h1>");
        else printWriter.println("<h1>Wrong username or password, please try again!</h1>");

        printWriter.println("</html>");
    }
}