<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shortlist students</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<style>
	img
	{
		height:200px;
	}
</style>
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
          <a class="btn btn-outline-info active w-100 pe-2" href="#">Home</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="#">Corporate Home</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="enroll.jsp">New</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="#">Shortlist</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="showall">List</a>
        </li>
        <li class="nav-item pe-2">
          <a class="btn btn-outline-info w-100" href="#">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="container mt-4">
	<div class="d-flex flex-row flex-nowrap overflow-auto bg-warning p-4">
		<div class="card col-lg-4 col-md-6 col-sm-8 col-xs-12 p-3 bg-secondary text-dark me-3">
			<img src="resources/microsoft.png" alt="microsoft" class="card-img">
			<h1 class="card-title text-center">Microsoft</h1>
			<div class="card-body">
				<p class="display-4 card-text text-center">45.6</p>
				<p class="card-text float-start">Java Stack</p>
				<p class="card-text float-end">2022-01-13</p>
			</div>
		</div>
		<div class="card col-lg-4 col-md-6 col-sm-8 col-xs-12 p-3 me-3 bg-dark text-light">
			<img src="resources/evry.png" alt="evry" class="card-img">
			<h1 class="card-title text-center">Evry India Pvt LTD</h1>
			<div class="card-body">
				<p class="display-4 card-text text-center">5.6</p>
				<p class="card-text float-start">Python</p>
				<p class="card-text float-end">2022-02-10</p>
			</div>
		</div>
		<div class="card col-lg-4 col-md-6 col-sm-8 col-xs-12 p-3 bg-secondary text-dark me-3">
			<img src="resources/wipro.png" alt="wipro" class="card-img">
			<h1 class="card-title text-center">Wipro</h1>
			<div class="card-body">
				<p class="display-4 card-text text-center">4.6</p>
				<p class="card-text float-start">Java Web development</p>
				<p class="card-text float-end">2021-12-20</p>
			</div>
		</div>
		<div class="card col-lg-4 col-md-6 col-sm-8 col-xs-12 p-3 me-3 bg-dark text-light">
			<img src="resources/tcs.jfif" alt="tcs" class="card-img">
			<h1 class="card-title text-center">TCS</h1>
			<div class="card-body">
				<p class="display-4 card-text text-center">7.9</p>
				<p class="card-text float-start">MERN</p>
				<p class="card-text float-end">2022-01-20</p>
			</div>
		</div>
		<div class="card col-lg-4 col-md-6 col-sm-8 col-xs-12 p-3 bg-secondary text-dark me-3">
			<img src="resources/cts.jfif" alt="cts" class="card-img">
			<h1 class="card-title text-center">Cognizant</h1>
			<div class="card-body">
				<p class="display-4 card-text text-center">3.5</p>
				<p class="card-text float-start">DJango</p>
				<p class="card-text float-end">2022-02-19</p>
			</div>
		</div>
	</div>
</div>
</body>
</html>