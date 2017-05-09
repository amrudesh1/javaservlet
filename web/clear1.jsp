<%-- 
    Document   : clear
    Created on : May 7, 2017, 8:18:12 PM
    Author     : Kichu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<% 
   String img=request.getParameter("img");
 
  %>
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
        Connection conn = null;
        
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshop","root","12345");
        
        PreparedStatement psSelectRecord=null;
        ResultSet rsSelectRecord=null;
        String sqlSelectRecord=null;
   
        sqlSelectRecord ="SELECT * FROM cart";
        psSelectRecord=conn.prepareStatement(sqlSelectRecord);
        rsSelectRecord=psSelectRecord.executeQuery();
%>

  
 <% 
        String id=request.getParameter("id");
        String pname=request.getParameter("pname");
        int qty=Integer.parseInt(request.getParameter("qty"));
        int price=Integer.parseInt(request.getParameter("price"));
        
        %>
        
        <%
        try{
           String addtocart="INSERT INTO cart (pid,pname,qty,price) values(?,?,?,?)";
           psSelectRecord=conn.prepareStatement(addtocart);
           psSelectRecord.setString(1, id);
            psSelectRecord.setString(2, pname);
             psSelectRecord.setInt(3, qty);
           psSelectRecord.setInt(4, price);
              
           psSelectRecord.executeUpdate();
        }
        catch(Exception e)
                {
                    
                    response.sendRedirect("index.html");
                }
        %>
      

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
      
       
        <h1>Hello World!</h1>
        <p>
            <%=id%>
            <%=pname%>
            
        </p>
       
        
    </body>
</html>
