<!DOCTYPE html>
<html>   
<% String id=request.getParameter("id");
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
   
        sqlSelectRecord ="SELECT * FROM products where pid='"+id+"'";
        psSelectRecord=conn.prepareStatement(sqlSelectRecord);
        rsSelectRecord=psSelectRecord.executeQuery();
%>

  <body>
     
      <%
        int cnt=1;
        out.println(id);
        out.println(img);
        String pname="";
        //String pid="";
        int price=0;
        int qty=0;
        while(rsSelectRecord.next())
                {
        //out.println(rsSelectRecord.getString("pid"));
                //out.println(rsSelectRecord.getString("pname"));
                    //pid=rsSelectRecord.getString("id");
                    pname=rsSelectRecord.getString("pname");
                    qty=rsSelectRecord.getInt("qty");
                    price=rsSelectRecord.getInt("price");
                    
        cnt++;
   }
           
      %>
   
   <img src="<%=img%>">
   <form action="clear.jsp" method="get">
       <input type="hidden" name="pid" value="<%=id%>" >"
       <input type="hidden" name="pname" value="<%=pname%>" >"
       <input type="hidden" name="price" value="<%=price%>" >"
       <input type="number" name="qty" >
       <input type="submit" value="add to cart">
              
   </form> 
   
  </body>
</html>