<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home User</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style>
table,th,tr,td
{
border:2px solid black;
border-collapse:collapse;
padding:10px;
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
        
            <li class="nav-item" style="border: 2px solid black; width: 365px; height:70px; background-color:lightgrey;">
          <a class="nav-link" href="Logout.jsp" style="margin-top:15px;" ><b>
            Back to Login</b></a>         
        </li>
        
      </ul>    
    </div>
  </div>
</nav></div><br><br><br>

<h1 align="center">MEDICAL CONDITION IMAGE SEARCH AND VIEWER</h1><br><br>

<div style="background-color:darkblue;width:600px; height:350px; margin-left:90px;">
<h2 style="margin-left:120px; color:red;">Abstract of the Project</h2>
<br>
<p style="color:yellow; margin-left:10px;"><b>
To develop a user-friendly Web-based medical image search and viewer framework that can be adapted to satisfy the needs of researchers and clinicians.
The viewer has been extended and adopted by multiple clinical research platforms and commercial groups. It has also been used to build custom imaging applications for training and education purposes.
Clinicians can use the framework to develop purpose-built applications for small subsets of patients, experiment with new imaging tools, or produce training modules. The framework will support the transition to cloud computing and data storage in research environments, which will improve patient data accessibility across sites.
</b>
</p>
</div >

<div  style="background-color:aqua;width:500px; height:350px; margin-left:800px; margin-top:-350px;">
<br><br>
<img src="https://media.istockphoto.com/id/1091697716/vector/medicine-concept-x-ray-lungs-magnifier-and-pen.jpg?s=612x612&w=0&k=20&c=G-YB8sbv-IqewQFqyECA9LeNLt9dJwu70RpC7K918FA=" style="width:500px; height:350px; margin-top:-48px">


</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
</body>
</html>






