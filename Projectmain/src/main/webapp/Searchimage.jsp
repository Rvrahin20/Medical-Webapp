<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Bean.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search image</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

 <style>
   table,tr,th,td
   {
     border: 2px solid black;
     border-collapse: collapse;
     padding: 20px;
        
    }
  </style>

</head>
<body style="background-color: darkseagreen;">
<div>

<nav class="navbar navbar-expand-lg bg-light" align="center">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAIAAADYYG7QAAAABmJLR0QA/wD/AP+gvaeTAAAB3UlEQVRYhWNce+4Ww2ACTAPtAHQw6iBCgDoOOrRt06Ftm6hiFAvlRmxdtnB+XzvD///PHz8MT88dSAf9//9/6eTe9QtmQbirZk7++uljYnEVIxP5AU++zj+/f0+sKYG7BgK2Ll/UU57/+9dPejvo5/fvHYWZh7dvxpQ6sXdna27qt69f6OegD2/f1KZEnz92CJeCy6dP1CRGvHv9ih4OevX0SW1K1N3rV/Are3jnVnVSxLOHD2jroLvXr1QmhBFpzaunT6oSwm5dvkArB10+faI+Le7D2zfEa/n88UNDRvy5ozgjl3wHHdq2qSUn+TvpSfXn9+8dBen7Nq4hUj0zMUXZ1mULZ7bV//v7l1TXQMD////PHNr3n4FBx8ScoGICBSNa0Uc2+P//P5HFJj45rEUfJQBWbP4ix0E/v3/vLMJe9FECTuzd2ZqbgqfYxO4gSNFHUu4gHuAvNrE4iMiijxKAp9hEdxBJRR8lAFexieIgMoo+SgDWYhPhILKLPkoAZrEJLRgpLPooAZBik5WdXdPAmIGBgRFXvyzYSI2m7sBl7zDtdVARjDqIEBh0DqKoX0aLHDroQmjUQYTAqIMIgVEHEQKjDiIERh1ECOBsMQ4UGHQhNOogQmDUQYQAAHpTBy7gJoSQAAAAAElFTkSuQmCC"></a>
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      
        <li class="nav-item" style="border: 2px solid black; width: 360px; background-color:lightgrey;">
          <a class="nav-link active" aria-current="page" href="Homeuser.jsp" style="margin-top:15px;"><b>Go Home</b></a>
        </li>
        
        <li class="nav-item"  style="border: 2px solid black; width: 360px; background-color:lightgrey;"><br>
          <form action="Controller" method="post">
          <input type="hidden" value="submit" name="action">
          <input type="submit" value="Search Image">
          </form>
        </li>
        
        <li class="nav-item" style="border: 2px solid black; width: 360px; background-color:lightgrey;"><br>
          <form action="Controller" method="post">
          <input type="hidden" value="do" name="action">
          <input type="submit" value="Download Image">
          </form> 
          </li>
        
            <li class="nav-item" style="border: 2px solid black; width: 360px; height:70px; background-color:lightgrey;">
          <a class="nav-link" href="Logoutuser.jsp" style="margin-top:15px;" ><b>
            Back to Login</b></a>         
        </li>
        
      </ul>    
    </div>
  </div>
</nav></div><br><br><br>

<h1 align="center">Medical Condition Image Search and Viewer</h1><br>

<form action="Controller" align="center">

</form><br><br><br>

<table align="center" style="width:500px;">
 <tr>
  <th>Authority</th>
  <th>Sl.No</th>
  <th>Name and Details</th>
  <th>Image</th>
  <th>Request</th>
 </tr>
 
<%ArrayList<Register>ulist=(ArrayList<Register>)session.getAttribute("li");
ArrayList<Register>ulist1=(ArrayList<Register>)session.getAttribute("li1");
for(Register robj:ulist)
{
for(Register robj1:ulist1)
{
%>

 <tr>
 <td><%=robj.getUn() %></td>
 <td><%=robj1.getFid() %></td>
 <td><%=robj1.getImgname()%><br><%=robj1.getDes()%></td>
 <td><%=robj1.getImage()%></td>
 <td>
 <form action="Controller" method="post">
 
 <input type="hidden" value="<%=robj.getUn() %>" name="un">
 <input type="hidden" value="<%=robj1.getFid() %>" name="fid">
 <input type="hidden" value="<%=robj1.getImgname() %>" name="imgname">
 <input type="hidden" value="<%=robj1.getDes() %>" name="des">
 <input type="hidden" value="<%=robj1.getImage() %>" name="image">
          <input type="hidden" value="app" name="action">
          <input type="submit" value="Request">
          
 </form>
 </td>
 </tr>
 
<% }}%>
</table>    
 <br>   
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>

</body>
</html>