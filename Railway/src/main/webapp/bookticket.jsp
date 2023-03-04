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

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
  <li><a class="active" href="#">Book Ticket</a></li>  
  <li><a href="viewticket.jsp">View Ticket</a></li>
  <li><a href="cancelticket.jsp">Cancel Ticket</a></li>
  <li><a href="viewtrain2.jsp">View Train</a></li>
  <li id="logout"><a class="log" href="logout">Logout</a></li>
  <li id="logout"><a href="#"><%= user.getName() %></a></li>
</ul>
</div>
        
<br><br>
<div class="Cform">
<center>
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
<h1> Book Ticket</h1>
<form action="bookticket" method="POST">
Train No. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="tname" placeholder="Train No,"/><br>
Journey Date &nbsp;&nbsp;&nbsp;<input type="text" name="jdate" placeholder="Date of Journey"/><br>
To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="destination" placeholder="Destination Station"/><br>
From &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="current" placeholder="Journey start station"/><br>
Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="uname" placeholder="Name"/><br>
Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="email" name="uemail" placeholder="Example@gmail.com"/><br>
Phone No &nbsp;&nbsp;&nbsp;<input type="text" name="unumber" placeholder="phoneno"/><br>
Gender &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="ugender" placeholder="gender"/><br>
Total Ticket &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="useat" placeholder="Enter No. of Ticket"/><br>
Ticket fair &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="ufair" placeholder="Ticket Price"/><br>
<Button type="submit" Value="Submit">Submit</button>
</form>
</center>
</div>
</body>
</html>