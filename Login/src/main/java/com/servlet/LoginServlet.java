package com.servlet;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

import com.db.DBConnection;

/**
 * Handles login authentication.
 * Verifies username and password from the database.
 *
 * @author Bhukya Praveen
 */

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

String user = request.getParameter("username");
String pass = request.getParameter("password");

try {

Connection conn = DBConnection.getConnection();

String sql = "SELECT * FROM users WHERE username=? AND password=?";

PreparedStatement ps = conn.prepareStatement(sql);

ps.setString(1, user);
ps.setString(2, pass);

ResultSet rs = ps.executeQuery();

if(rs.next())
{
RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
rd.forward(request,response);
}
else
{
response.setContentType("text/html");
PrintWriter out = response.getWriter();

out.println("<p style='color:red;text-align:center'>Invalid Credentials</p>");

RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
rd.include(request,response);
}

}
catch(Exception e)
{
e.printStackTrace();
}

}
}