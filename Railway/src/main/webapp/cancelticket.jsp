<%@page import="entities.user_data" %>
<%@page import="help.connectionprovider"%>
<%@page errorPage="error.jsp" %>
<%@ page import="entities.Message" %>
<%@ page import="dao.userdao" %>
<%

    user_data user = (user_data) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }


%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Railway System</title>
<style>
body{
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
button{
  background-color: #04AA6D;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
  font-weight: bold;
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
margin-top: 100px;
font-size: 40px;
color: white;
background-color: White;
opacity: 3;
color: Black;
width:90%;
padding: 10px;
border-radius: 10px;
}
.Cform{
text-alignment: center;
font-weight: bold;

}
#logout{
float: right;
}
.log {
  background-color: #04AA6D;
}
.alert{
font-size: 30px;
color: Blue;
font-weight: bold;
background-color: pink;
}
</style>
</head>
<body>
<div class="menu">
<ul>
  <li><a href="bookticket.jsp">Book Ticket</a></li>  
  <li><a href="viewticket.jsp">View Ticket</a></li>
  <li><a class="active" href="#">Cancel Ticket</a></li>
  <li><a href="viewtrain2.jsp">View Train</a></li>
  <li id="logout"><a class="log" href="logout">Logout</a></li>
  <li id="logout"><a href="#"><%= user.getName() %></a></li>
</ul>
</div>
<center>
<br><br>
<%
            Message m = (Message) session.getAttribute("msg");
            if (m != null) {
        %>
        <div class="alert <%= m.getCssClass()%>" role="alert">
            <%= m.getContent()%>
        </div> 


        <%
                session.removeAttribute("msg");
            }

        %>
 </center>
<div class="Cform">
<center>
<form action="cancelser" method="POST">
<h1>cancel ticket</h1>
Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="viewemail" placeholder="Email"><br>
Application Number &nbsp;<input type="text" name="id" placeholder="id" /><br><br>
<button type="submit" Value="Submit">Submit</button>
</form>
</center>
</div>
</body>
</html>