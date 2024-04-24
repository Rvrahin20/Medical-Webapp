<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
</head>

<body background="https://img.freepik.com/free-vector/clean-medical-background_53876-97927.jpg?w=2000" style="background-repeat: no-repeat;background-size: cover;" align="center">
<h1>MEDICAL CONDITION IMAGE SEARCH AND VIEWER</h1>
<h2 style="margin-top:200px">User Login</h2>

<form action="Controller" method="post">

<label for="uname"><b>USERNAME</b></label>
<input type="text" name="uname"><br><br>

<label for="upassword"><b>PASSWORD</b></label>
<input type="password" name="upassword"><br><br>

<input type="hidden" name="action" value="log1"><br><br>

<input type="submit" value="Submit" style="width:100px; height:30px; font-size: 15px;  background-color:skyblue;">

</form>


</body>
</html>