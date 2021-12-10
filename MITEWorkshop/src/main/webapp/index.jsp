<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Information Science - PlaceBuddy</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
	<div class="row">
		<img src="resources/islogo.png" class="col-lg-2 col-md-6">
		<h1 class="col-lg-10 col-md-6 text-center align-self-center text-uppercase">Information Science Place Buddy</h1>
	</div>
	
	<div class="row">
		<div id="adarsh" class="col-lg-8 col-md-6 col-sm-12 carousel slide carousel-fade" data-bs-ride="carousel">
			<div class="carousel-indicators">
			    <button type="button" data-bs-target="#adarsh" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			    <button type="button" data-bs-target="#adarsh" data-bs-slide-to="1" aria-label="Slide 2"></button>
			    <button type="button" data-bs-target="#adarsh" data-bs-slide-to="2" aria-label="Slide 3"></button>
			  </div>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="resources/islide3.png" style="height:450px" class="d-block w-100" alt="About cepartment">
		    </div>
		    <div class="carousel-item">
		      <img src="resources/islide1.png" style="height:450px" class="d-block w-100" alt="alimni">
		    </div>
		    <div class="carousel-item">
		      <img src="resources/islide2.png" style="height:450px" class="d-block w-100" alt="praise">
		    </div>
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#adarsh" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#adarsh" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		  </button>
		</div>
		<% String msg=(String)request.getAttribute("info"); %>
		<!-- primary=blue, success=green, info=skyblue, warning=yellow, danger=red, light=white, dark=black, secondary=grey -->
		<form class="col-lg-4 col-md-6 col-sm-12 shadow-lg p-4 align-self-center" action="LoginServlet" method="post">
			<h1 class="text-center text-success display-6">Place Buddy Login</h1>
			
			<%if(msg!=null) {%>
			
			<h1 class="text-danger text-center"><%=msg %></h1>
			
			<%} %>
			<div class="form group">
				<label for="user">Username</label>
				<input type="text" name="user" placeholder="Enter the username" class="form-control">
			</div>
			<div class="form group">
				<label for="passkey">Password</label>
				<input type="password" name="passkey" placeholder="Enter the Password" class="form-control">
			</div>
			<div class="mt-3 row justify-content-around">
				<button class="col-4 btn btn-outline-danger" type="submit">Login</button>
				<button class="col-4 btn btn-outline-warning" type="reset">Cancel</button>
			</div>
		</form>
		
	</div>
	
</div>
</body>
</html>