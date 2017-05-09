<!DOCTYPE html>
<html>
	<head>
		<title>Shopping Cart</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="css/bootstrap1.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/custom.css"/>

	</head>
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
        //out.println(id);
        //out.println(img);
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

		<nav class="navbar">
			<div class="container">
				<a class="navbar-brand" href="#">Your online store</a>
				<div class="navbar-right">
					<div class="container minicart"></div>
				</div>
			</div>
		</nav>

		<div class="container-fluid breadcrumbBox text-center">
			<ol class="breadcrumb">
				<li class="active"><a href="#">Review</a></li>
				<li> <a href="cart.jsp">Order</a></li>
				<li><a href="#">Payment</a></li>
			</ol>
		</div>

		<div class="container text-center">

			<div class="col-md-5 col-sm-12">
                <div class="bigcart">
                    <img style="max-width:500px;max-height:450px;" src="<%=img%>" alt="">
                </div>
			</div>

			<div class="col-md-7 col-sm-12 text-left">
				<ul>
					<li class="row list-inline columnCaptions">
						<span>QTY</span>
						<span>ITEM</span>
						<span>Price</span>
					</li>
					<li class="row">
						
                                                <span class="itemName"><%=pname%> </span>
						<span class="popbtn"><a class="arrow"></a></span>
						<span class="price"><%=price%></span>
                                                   <form action="clear.jsp" method="get">
       <input type="hidden" name="pid" value="<%=id%>" >
       <input type="hidden" name="pname" value="<%=pname%>" >
       <input type="hidden" name="price" value="<%=price%>" >
       <br>
       <br>
       <input type="number" name="qty" >
       <br>
       <br>
       <br>
       <br>
       <span class="order"> <a class="text-center">ORDER</a></span>
       


					</li>

				</ul>
			</div>

		</div>

		<!-- The popover content -->

		<div id="popover" style="display: none">
			<a href="#"><span class="glyphicon glyphicon-pencil"></span></a>
			<a href="#"><span class="glyphicon glyphicon-remove"></span></a>

		</div>

		<!-- JavaScript includes -->

		<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
		<script src="js/bootstrap1.min.js"></script>
		<script src="js/customjs.js"></script>

	</body>
</html>
