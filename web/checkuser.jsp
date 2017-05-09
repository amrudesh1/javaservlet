<%-- 
    Document   : checkuser
    Created on : 7 May, 2017, 3:53:09 PM
    Author     : Amrudesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>

<%
String user=request.getParameter("user");
String pass=request.getParameter("pass");
 Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshop","root","12345");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select Name,EMAIL,PASSWORD from customer where EMAIL='"+user+"' and password='"+pass+"'");
          int count=0;
          while(rs.next())
          {
                session.setAttribute("user",rs.getString(1));
                   count++;
          }

                    if(count>0)
          {
            
            response.sendRedirect("index.jsp");
            
          }
          else
          {
                       response.sendRedirect("userlogin.jsp?msg=Invalid Username or Password");
          }
%>

