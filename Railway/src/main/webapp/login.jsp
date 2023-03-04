<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="entities.Message" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<title>Railway System</title>
<style>
body{
background-image: url("img/login.jpg");
background-repeat: no-repeat;
height: 99%;
overflow : hidden;
margin:0px;
}
.Container{
position: relative;
width: 100%;
display: grid;
    grid-template-columns: 1fr 1fr;
    grid-gap: 20px;
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

.Register{
background-color: white;
font-size: 20px;
padding: 20px;
width: 500px;
margin-left: 50px;
margin-top: 50px;
border-radius: 30px;
top:0px;
}
h1{
text-align: center;
}
.Rcontent
{
border-radius: 30px;
width: 440px;
background-color: #d9dad7;
padding: 0px;
padding: 30px;
line-height: 1.7;
text-align: center;
}
input {
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
button {
  background-color: #04AA6D;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}
.footer{
position: fixed;
   width: 99%;
   background-color: Black;
   color: white;
   text-align: center;
   font- size: 20px;
   font-weight: bold;
   text-align: center;
   margin-bottom: 1px;   
}
.fcontent{
padding:5px;
}
h2{
margin-top: 300px;
font-size: 40px;
color: white;
background-color: White;
opacity: 3;
color: Black;
width:90%;
padding: 10px;
border-radius: 10px;
}
</style>
</head>
<body>
<div class="menu">
<ul>
  <li><a href="home.jsp">Home</a></li>  
  <li><a href="viewtrain.jsp">View Train</a></li>
  <li><a href="register.jsp">Register</a></li>
  <li><a class="active" href="#">Login</a></li>
</ul>
</div>
<div class="Container">
<div class="Register">
<div class="Rcontent">
<form action="loginServlet" method="post">
<h1> Login form </h1>
<%
                                Message m = (Message) session.getAttribute("msg");
                                if (m != null) {
                            %>
                            <div class="alert <%= m.getCssClass() %>" role="alert">
                                <%= m.getContent() %>
                            </div> 


                            <%        
                                    session.removeAttribute("msg");
                                }

                            %>
Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="email" required name="u_email" placeholder="example@gmail.com" /><br/>
Password: <input type="password" required name="u_pass" placeholder="Enter Password" /><br/>
<Button type="submit">submit</Button><br>
&nbsp;<a href="register.jsp">Don't have account?</a>
</form>
</div>
</div>
<div class="para">
<h2> The journey of a thousand miles,<br>begins with a single step.</h2>
</div>
</div>
</body>
</html>