<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log in</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
button {
	color: #27A4F7;
}
</style>


</head>
<body>

	<div class="container">
		<div class="jumbotron" style="background-color: #EAECEE">


			<h3 align="center" style="color: #27A4F7">Log in continue</h3>
			<form text-align="center" action="loginpage" method="post">

				<div style="color: #27A4F7" class="form-group">
					<label for="email"><span class="glyphicon glyphicon-user"></span>
						Username:</label> <input type="email" class="form-control" id="email"
						name="emailid" placeholder="Enter your email id">
				</div>
				<div style="color: #27A4F7" class="form-group">
					<label for="pwd"><span class="glyphicon glyphicon-lock"></span>Password:</label>
					<input type="password" class="form-control" id="pwd"
						name="password" placeholder="Enter your password">
				</div>

				<button type="submit" class="btn btn-info">Submit</button>
				<h4 style="color: black;">${message}</h4>
			</form>
			<br> If you don't have an account<a href="getregistration">
				SIGNUP </a>
		</div>
	</div>
</body>
</html>
