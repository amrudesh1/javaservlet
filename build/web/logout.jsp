<%-- 
    Document   : logout
    Created on : 8 May, 2017, 12:53:08 AM
    Author     : Amrudesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>

<%session.invalidate();%>
<html>
    <head>
        <meta http-equiv="REFRESH" content="1;url=/ProjectFinal/index.jsp">
    </head>
    <body>
        <h3>Thank You For Doing Shopping with visit us again</h3>
    </body>   
</html>



