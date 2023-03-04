<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Railway System</title>
<style>
body{
background-image: url("img/register.jpg");
background-repeat: no-repeat;
height: 99%;
overflow : hidden;
margin: 0px;
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
button{
  background-color: #04AA6D;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
  font-weight: bold;
  border-radius: 4px;
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
</style>
</head>
<body>
<div class="menu">
<ul>
  <li><a href="home.jsp">Home</a></li>  
  <li><a href="viewtrain.jsp">View Train</a></li>
  <li><a class="active" href="#">Register</a></li>
  <li><a href="login.jsp">Login</a></li>
</ul>
</div>
<div class="Container">
<div class="Register">
<div class="Rcontent">
<h1> Registration form </h1>
<form id="regform" action="RegisterServlet" method="POST">
Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="user_name" placeholder="Enter Name" /><br/>
Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="email" name="user_email" placeholder="example@gmail.com" /><br/>
Password: <input type="password" name="user_password" placeholder="Enter Password" /><br/>
 <div class="container text-center" id="loader" style="display: none;">
                                    <span class="fa fa-refresh fa-spin fa-4x"></span>
                                    <h4>Please wait..</h4>
 </div>
<button type="submit">Submit</button><br>
&nbsp; &nbsp;<a href="login.jsp">Already account, Login</a>
</form>
</div>
</div>
<div class="para">
<h2>The world is a book and<br>those who do not travel read only one page</h2>
</div>
</div>
 <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
            $(document).ready(function () {
                console.log("loaded........")

                $('#regform').on('submit', function (event) {
                    event.preventDefault();



                    let form = new FormData(this);

                    $("#sumbimt-btn").hide();
                    $("#loader").show();
                    //send register servlet:
                    $.ajax({
                        url: "RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data)

                            $("#sumbimt-btn").show();
                            $("#loader").hide();

                            if (data.trim() === 'done')
                            {

                                swal("Registered successfully..We are going to redirect to login page")
                                        .then((value) => {
                                            window.location = "login.jsp"
                                        });
                            } else
                            {

                                swal(data);
                            }

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $("#sumbimt-btn").show();
                            $("#loader").hide();
                            swal("something went wrong..try again");

                        },
                        processData: false,
                        contentType: false

                    });



                });


            });

        </script>
</body>
</html>