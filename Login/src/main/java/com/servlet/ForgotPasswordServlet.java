package com.servlet;

import com.db.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/forgotPassword")
public class ForgotPasswordServlet extends HttpServlet {

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

String email = request.getParameter("email");

try{

Connection conn = DBConnection.getConnection();

String sql = "SELECT * FROM users WHERE email=?";

PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1,email);

ResultSet rs = ps.executeQuery();

if(rs.next()){
response.sendRedirect("reset-password.jsp?email="+email);
}
else{
response.getWriter().println("Email not found");
}

}catch(Exception e){
e.printStackTrace();
}

}
}