<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Owner Login</title>
</head>
<body>

<body background="https://img.freepik.com/free-vector/clean-medical-background_53876-97927.jpg?w=2000" style="background-repeat: no-repeat;background-size: cover;" align="center">
<h1>MEDICAL CONDITION IMAGE SEARCH AND VIEWER</h1>
<h2 style="margin-top:200px">Owner Login</h2>

<form action="Controller" method="post">

<label for="oname"><b>USERNAME</b></label>
<input type="text" name="oname"><br><br>

<label for="opassword"><b>PASSWORD</b></label>
<input type="password" name="opassword"><br><br>

<input type="hidden" name="action" value="log"><br><br>

<input type="submit" value="Submit" style="width:100px; height:30px; font-size: 15px;  background-color:skyblue;">
</form>

</body>
</html>