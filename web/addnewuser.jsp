<%-- 
    Document   : addnewuser
    Created on : 7 May, 2017, 4:07:14 PM
    Author     : Amrudesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
  Connection conn = null;
        
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshop","root","12345");
        
  PreparedStatement psInsertRecord=null;
  String sqlInsertRecord=null;
        
  
  String NAME=request.getParameter("name");
  String PASSWORD=request.getParameter("psw");
  String MAIL=request.getParameter("email");
  
  
        
  try
  {
   sqlInsertRecord="insert into customer (NAME,EMAIL,PASSWORD) values(?,?,?)";
   psInsertRecord=conn.prepareStatement(sqlInsertRecord);
  
   psInsertRecord.setString(1,NAME);
   psInsertRecord.setString(2,MAIL);
   psInsertRecord.setString(3,PASSWORD);
   psInsertRecord.executeUpdate();
  }
  catch(Exception e)
  {
    
    response.sendRedirect("signup.jsp");// On error it will send back to addRecord.jsp page
  }
  

      
    try{
      if(psInsertRecord!=null)
      {
       psInsertRecord.close();
      }
      
      if(conn!=null)
      {
       conn.close();
      }
    }
    catch(Exception e)
    {
      e.printStackTrace(); 
    }
%>
<html>
 <head>
      <meta http-equiv="REFRESH" content="3;url=/ProjectFinal/userlogin.jsp">
    </head>
<body>
    
Thank You <H4><%=NAME%></H4> For Registering.You Will be Redirected to the login page<br>
You will be redirected to the Main Page in 3 seconds.....
</body>
</html>