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
		<title>Shopping Cart</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="css/bootstrap1.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/custom.css"/>
	</head>

	<body>

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
				<li><a href="#">Review</a></li>
				<li class="active"><a href="#">Order</a></li>
				<li><a href="#">Payment</a></li>
			</ol>
		</div>

		<div class="container text-center">

			<div class="col-md-5 col-sm-12">
				<div class="bigcart"></div>
                <img src="images/sprite.png" alt="">
				<h1>Your shopping cart</h1>
				<p>
					This is a free and <b><a href="http://tutorialzine.com/2014/04/responsive-shopping-cart-layout-twitter-bootstrap-3/" title="Read the article!">responsive shopping cart layout, made by Tutorialzine</a></b>. It looks nice on both desktop and mobile browsers. Try it by resizing your window (or opening it on your smartphone and pc).
				</p>
			</div>

			<div class="col-md-7 col-sm-12 text-left">
				<ul>
					<li class="row list-inline columnCaptions">
						<span>QTY</span>
						<span>ITEM</span>
						<span>Price</span>
					</li>
					<li class="row">
						<span class="quantity"><%=qty%></span>
						<span class="itemName"><%=pname%></span>
						<span class="popbtn"><a class="arrow"></a></span>
						<span class="price"><%=price%></span>
					</li>
					
					<li class="row totals">
						<span class="itemName">Total:</span>
						<span class="price"><%=price%></span>
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
		<script src="js/bootstrap.min.js"></script>
		<script src="js/customjs.js"></script>

	</body>
</html>
