<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body background="https://img.freepik.com/free-vector/clean-medical-background_53876-97927.jpg?w=2000" style="background-repeat: no-repeat;background-size: cover;" align="center">

<h1>MEDICAL CONDITION IMAGE SEARCH AND VIEWER</h1>
<h1 style="margin-top:100px">User Registration form</h1><br>

<form action="Controller" method="post">

<label for="un"><b>NAME</b></label>&emsp;&emsp;&emsp;&nbsp;
<input type="text" name="un"><br><br>

<label for="uname"><b>USERNAME</b></label>&emsp;
<input type="text" name="uname"><br><br>

<label for="upassword"><b>PASSWORD</b></label>&emsp;
<input type="password" name="upassword" required><br><br>

<label for="uemail"><b>EMAIL</b></label>&emsp;&emsp;&emsp;
<input type="email" name="uemail"><br><br>

<input type="hidden" name="action" value="ureg"><br><br>

<input type="submit" value="Register" style="width:100px; height:30px; font-size: 15px;  background-color:skyblue;"><br><br>


<label>Already Registered</label>
<a href="Userlogin.jsp">Login</a>
</form>

</body>
</html>