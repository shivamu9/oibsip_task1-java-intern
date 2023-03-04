<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Railway Reservation</title>
<style>
body{
margin:0px;
}
body{
  background-image: url("img/bg.jpg");
    /* Full height */
  height: 100%;
  width:100%;
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  overflow : hidden;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
  border-right:1px solid #bbb;
}

li:last-child {
  border-right: none;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}
.more{
text-align: right;
color: white;
margin-top: 150px;
margin-right: 10px;
}
#first{
   font-size: 50px;
   font-weight: bold; 
   margin-right: 15px;
   padding: 8px;
}
#second{
   font-size: 40px;
   font-weight: bold;
margin-right: 15px;
}
#footer{
  margin-bottom : 0;
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}
.footer{
position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: Black;
   color: white;
   text-align: center;
font- size: 20px;
font-weight: bold;
height: 30px;
text-align: center;
}
</style>
</head>
<body>
<div class="Container">
      <div class="content">
      <ul>
  <li><a class="active" href="#">Home</a></li>  
  <li><a href="viewtrain.jsp">View Train</a></li>
  <li><a href="register.jsp">Register</a></li>
  <li><a href="login.jsp">Login</a></li>
</ul>
</div>
<div class="more">
<p id="first">Welcome To Indian Railway</p>
<p id="second">Wish you a happy Journey</p>
</div>
</div>

</body>
</html>