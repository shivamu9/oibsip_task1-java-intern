<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Railway System</title>
<style>
body{
background-image: url("img/viewtrain.jpg");
background-repeat: no-repeat;
height: 99%;
overflow : hidden;
margin: 0px;
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

table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}
table th{
font-weight: bold;
background: #fff;
}

table td{
background: #ECF2FF;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 15px;
}
</style>
</head>
<body>
<div class="menu">
<ul>
  <li><a href="home.jsp">Home</a></li>  
  <li><a class="active" href="#">View Train</a></li>
  <li><a href="register.jsp">Register</a></li>
  <li><a href="login.jsp">Login</a></li>
</ul>
</div>


<center>
<table>
<tr>
	<th>Serial No</th>
	<th>Train No</th>
	<th>From</th>
	<th>To</th>
	<th>Deperture Time</th>
	<th>Arrived Time</th>
	<th>Day Avilability</th>
	<th>Train Type</th>
	<th>Ticket Fair</th>
</tr>

<tr>
	<td>01</td>
	<td>PNR7070</td>
	<td>Delhi</td>
	<td>Mumbai</td>
	<td>3:00 PM</td>
	<td>12:00 PM</td>
	<td>WED, SAT</td>
	<td>Super Fast</td>
	<td>750 INR</td>
</tr>


<tr>
	<td>02</td>
	<td>PNR7575</td>
	<td>Delhi</td>
	<td>Lucknow</td>
	<td>8:00 AM</td>
	<td>12:00 PM</td>
	<td>THR, SUN</td>
	<td>Super Fast</td>
	<td>540 INR</td>
</tr>
</table>
</center>
</body>
</html>