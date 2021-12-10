<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enrolling new one</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="https://sites.google.com/mite.ac.in/ise/activities?authuser=0">
    	<img src="resources/islogo.png" style="height:80px;width:150px" alt="IS">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#ashik" aria-controls="ashik" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="ashik">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info active w-100 pe-2" href="home.jsp">Home</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="#">Corporate Home</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="#">New</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="shortlist.jsp">Shortlist</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="list.jsp">List</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="#">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container mt-3">
<h1 class="display-1 text-danger text-center text-uppercase mb-2">Enroll New Student</h1>
<%
String hai=(String)request.getAttribute("info");
if(hai!=null)
{
	// JSpwriter implicit object
	out.print("<p class='text-warning display-4'>"+hai+"</p>");
}
%>
<div class="row justify-content-center">
	<form class="col-lg-8 col-md-10 col-sm-12 shadow-lg p-3" action="inserting" method="post">
		<div class="form group">
			<label for="regno">Registration Number</label>
			<input type="text" name="regno" placeholder="Enter registration number here" class="form-control">
		</div>
		<div class="form group">
			<label for="stu_name">Stduent name</label>
			<input type="text" name="stu_name" placeholder="Enter name of the stduent here" class="form-control">
		</div>
		<div class="form group">
			<label for="address">Address</label>
			<textarea name="address" class="form-control" placeholder="Communicatoion address here"></textarea>
		</div>
		<div class="form group">
			<label for="contact">Contact Number</label>
			<input type="text" name="contact" placeholder="Enter contact number here" class="form-control">
		</div>
		<div class="form group">
			<label for="email">Email Id</label>
			<input type="text" name="email" placeholder="Enter email id here" class="form-control">
		</div>
		<div class="form-checked">
			<div class="form-inline">
			<label for="gender" class="col">Select Gender</label>
				<input type="radio" name="gender" value="male" >Male
				<input type="radio" name="gender" value="female">Female
				<input type="radio" name="gender" value="other">Other
			</div>
		</div>
		<div class="form group">
			<label for="cgpa">CGPA</label>
			<input type="text" name="cgpa" placeholder="Enter CGPA here" class="form-control">
		</div>
		<div class="form group">
			<label for="puc">PUC</label>
			<input type="text" name="puc" placeholder="Enter PUC here" class="form-control">
		</div>
		<div class="form group">
			<label for="dept">Department</label>
			<select name="dept" class="form-select">
				<option>Select Any Department</option>
				<option>ISE</option><option>CSE</option><option>ECE</option>
				<option>EEE</option><option>Mech</option><option>AE</option>
			</select>
		</div>
		<div class="form group">
			<label for="skills">Skills</label>
			<input type="text" name="skills" placeholder="Enter Skills you have here" class="form-control">
		</div>
		<div class="form-checked">
			<div class="form-inline">
			<label for="career">Select Your Interest</label>
			<input type="radio" name="career" value="software">Software
			<input type="radio" name="career" value="core">Core
			<input type="radio" name="career" value="higher studies">Higher Studies
			</div>
		</div>
		<div class="mt-3 row justify-content-center">
			<button class="col-4 btn btn-outline-primary" type="submit">Enroll</button>
			<button class="col-4 btn btn-outline-dark" type="reset">Clear</button>
		</div>
	</form>
</div>
</div>
</body>
</html>