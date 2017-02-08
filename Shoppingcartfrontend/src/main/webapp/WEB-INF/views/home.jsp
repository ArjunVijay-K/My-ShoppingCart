<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="/WEB-INF/views/header.jsp" %>
<html>
<head>
<title>Electromart</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
/* header {
	background-color: #27A4F7;
	color: white;
	padding: 10px 50px 40px 50px; */
}

body {
	background-color: white;
}

button {
	background-color: white;
	color: #27A4F7;
	width: 180px;
}


.carousel-inner>.item>img {
	width: 1500px;
	height: 400px;
}

form {
	color: white;
}
</style>
</head>
<body>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="<c:url value="/resources/img/samsung.jpg"/>" alt="HD TVs"
					width="300px" height="600px">
			</div>

			<div class="item">
				<img src="<c:url value="/resources/img/refrigerators.jpg"/>"
					alt="Refrigerators" width="1000" height="300">
			</div>

			<div class="item">
				<img src="<c:url value="/resources/img/wama.jpg"/>"
					alt="Washing Machine" width="1000" height="300">
			</div>

			<div class="item">
				<img src="<c:url value="/resources/img/airc.jpg"/>"
					alt="Air Conditioners">
			</div>
			
			<div class="item">
				<img src="<c:url value="/resources/img/oven.jpg"/>"
					alt="oven" width="1000" height="300">
			</div>
			
			<div class="item">
				<img src="<c:url value="/resources/img/mixi.jpg"/>"
					alt="mixi" width="1000" height="300">
			</div>
			<div class="item">
				<img src="<c:url value="/resources/img/grinder.jpg"/>"
					alt="mixi" width="1000" height="300">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class=" carousel-control left" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span>

		</a> <a class=" carousel-control right" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span>

		</a>
	</div>
<%@ include file="/WEB-INF/views/listOfProducts.jsp" %>
</body>
</html>

