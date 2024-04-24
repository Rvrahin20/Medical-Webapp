<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Bean.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Download</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<style>
        table,tr,th,td{
            border: 4px solid green;
            border-collapse: collapse;
            padding: 10px ;            
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

<h1 align="center">MEDICAL CONDITION IMAGE SEARCH AND VIEWER</h1><br><br>

<table align="center">
<tr>
<th>Id</th>
<th>Details</th>
<th>Download Image</th>
</tr>
<%ArrayList<Register>ulist=(ArrayList<Register>)session.getAttribute("ul");
for(Register robj:ulist)
{
%>
<tr>
<td> <%=robj.getFid()%> </td>
<td><b><%=robj.getDes() %></b></td>
<td><p align="center">Please Click on the image for download</p><a href="<%=robj.getImgname()%>" download>
<img src= "<%=robj.getImgname()%>" width="500px" height="500px" >

</a></td>
<%System.out.println(robj.getImgname()); %>
</tr>
<%} %>
</table>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script> 
</body>
</html>