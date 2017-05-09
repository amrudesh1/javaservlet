<%-- 
    Document   : userlogin.jsp
    Created on : 7 May, 2017, 4:03:29 PM
    Author     : Amrudesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <div align="center">
 <div class='cssmenu'>
<ul>
   <li class='active '><a href='index.jsp'><span>Home</span></a></li>
  
</ul>
</div>    
    <script>
        function validate(){
var username=document.form.user.value;
var password=document.form.pass.value;
if(username===""){
 alert("Enter Username!");
  return false;
}
if(password===""){
 alert("Enter Password!");
  return false;
}
return true;
}
        </script>
<form action="checkuser.jsp">
 <div class="wrapper" style="height:100vh;width:400px;margin:0 auto">
  <div class="imgcontainer">
    <img src="images/img_avatar2.png" alt="Avatar" class="avatar" style="height:200px;width:200px">
  </div>

  <div class="container">
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="user" style="width:200px" required>
    <br>
    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pass" style="width:200px" required>

    <button type="submit" value="Submit">Login</button>
    <p><input type="checkbox" checked="" style="width:5px"> Remember me</p>
  </div>

  <div class="container" style="background-color:#f1f1f1">
      <a href="index.jsp">
    <button type="button" class="cancelbtn" >Cancel</button>
      </a>
  </div>
</form>
</div>
</html>
<!--CSS FOR LOGIN FORM-->
<style type="text/css">
.cssmenu {
	width: 100%;
	height: 27px;
	margin: 0;
	padding: 0;
	background: #000000 url(menu_assets/images/bg-bubplastic.gif) top left repeat-x;
}
.cssmenu ul {
	list-style: none;
	margin: 0;
	padding: 0;
}
.cssmenu ul li {
	float: left;
	margin: 0;
	padding: 0;
	background: transparent url(menu_assets/images/bg-bubplastic-button.gif) top left no-repeat;
}
.cssmenu ul li a {
	display: block;
	height: 27px;
	padding-left: 35px;
	float: left;
	text-transform: uppercase;
	font-family: 'Helvetica Neue',helvetica,'microsoft sans serif',arial,sans-serif;
	font-size: 70%;
	color: #FFFFFF;
	text-decoration: none;
}
.cssmenu ul li a span {
	display: block;
	float: left;
	height: 22px;
	padding-top: 5px;
	padding-right: 35px;
	background: transparent url(menu_assets/images/bg-bubplastic-button.gif) top right no-repeat;
	cursor: pointer;
}
.cssmenu ul li a:hover,
.cssmenu ul li.active a {
	background: transparent url(menu_assets/images/bg-bubplastic-h-orange.gif) top left no-repeat;
}
.cssmenu ul li a:hover span,
.cssmenu ul li.active a span {
	background: transparent url(menu_assets/images/bg-bubplastic-h-orange.gif) top right no-repeat;
}    
form {
    border: 3px solid #f1f1f1;
}

/* Full-width inputs */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Add a hover effect for buttons */
button:hover {
    opacity: 0.5;
    color:red;
}

/* Extra style for the cancel button (red) */
.cancelbtn:hover
{
    opacity:0.8;
}
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the avatar image inside this container */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

/* Avatar image */
img.avatar {
    width: 40%;
    border-radius: 50%;
}

/* Add padding to containers */
.container {
    padding: 18px;
}

/* The "Forgot password" text */
span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
        display: block;
        float: none;
    }
    .cancelbtn {
        width: 100%;
    }
}
</style>
