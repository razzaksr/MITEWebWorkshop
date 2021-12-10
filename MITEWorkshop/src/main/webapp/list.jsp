<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listing Students</title>
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
          <a class="btn btn-outline-info w-100" href="enroll.jsp">New</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="shortlist.jsp">Shortlist</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="#">List</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="#">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid">
	<div class="row justify-content-center">
		<div class="table-responsive-lg">
			<table class="col-lg-8 col-10 col-sm-12 table table-hover p-3 shadow-lg">
				<thead class="thead-danger">
					<tr>
						<th>Registration No</th><th>Student Name</th>
						<th>Address</th><th>Contact</th><th>Email</th><th>Gender</th>
						<th>Department</th><th>CGPA</th><th>PUC</th><th>Career</th>
						<th>Skills</th><th>Status</th><th>Placed Corporate</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody class="tbody-info" >
					<tr>
						<td>98767876</td><td>Adarsh</td><td>Manglore</td><td>98765676567</td>
						<td>adarsh@gmail.com</td><td>Male</td><td>ISE</td><td>9.1</td>
						<td>98</td><td>Higher Studies</td><td>Python</td><td>Not Placed</td>
						<td>Nil</td><td><a class="btn btn-outline-dark badge badge-pill" href="#">Edit</a></td>
						<td><a class="btn btn-outline-danger badge badge-pill" href="#">Delete</a></td>
					</tr>
					<tr>
						<td>45678909876</td><td>Fawaz</td><td>Manglore</td><td>9987777567</td>
						<td>fawaz@gmail.com</td><td>Male</td><td>ECE</td><td>9.6</td>
						<td>100</td><td>Business</td><td>Digital Marketing</td><td>Not Placed</td>
						<td>Nil</td><td><a class="btn btn-outline-dark badge badge-pill" href="#">Edit</a></td>
						<td><a class="btn btn-outline-danger badge badge-pill" href="#">Delete</a></td>
					</tr>
					<tr>
						<td>98767876</td><td>Adarsh</td><td>Manglore</td><td>98765676567</td>
						<td>adarsh@gmail.com</td><td>Male</td><td>ISE</td><td>9.1</td>
						<td>98</td><td>Higher Studies</td><td>Python</td><td>Not Placed</td>
						<td>Nil</td><td><a class="btn btn-outline-dark badge badge-pill" href="#">Edit</a></td>
						<td><a class="btn btn-outline-danger badge badge-pill" href="#">Delete</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

</body>
</html>