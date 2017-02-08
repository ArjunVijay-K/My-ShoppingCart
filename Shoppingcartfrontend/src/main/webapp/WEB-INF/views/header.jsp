<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
header {
	background-color: #27A4F7;
	color: white;
	/* height:10em; */
	
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
.sub-menu-parent {
	position: relative;
	right: 10em;
	bottom: 5px;
}

.sub-menu {
	visibility: hidden; /* hides sub-menu */
	opacity: 0;
	position: absolute;
	top: 100%;
	left: 0;
	width: 120%;
	transform: translateY(-2em);
	z-index: -1;
	transition: all 0.3s ease-in-out 0s, visibility 0s linear 0.3s, z-index
		0s linear 0.01s;
}

.sub-menu-parent:hover .sub-menu {
	visibility: visible; /* shows sub-menu */
	opacity: 1;
	z-index: 1;
	transform: translateY(0%);
	transition-delay: 0s, 0s, 0.3s;
	
	/* this removes the transition delay so the menu will be visible while the other styles transition */
}

#search-form_3 {
	background: #e1e1e1; /* Fallback color for non-css3 browsers */
	width: 530px;
	margin: 10px auto;
	/* Gradients */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0, rgb(243,
		243, 243)), color-stop(1, rgb(225, 225, 225)));
	background: -moz-linear-gradient(center top, rgb(243, 243, 243) 0%,
		rgb(225, 225, 225) 100%);
	/* Rounded Corners */
	border-radius: 17px;
	-webkit-border-radius: 17px;
	-moz-border-radius: 17px;
	/* Shadows */
	box-shadow: 1px 1px 2px rgba(0, 0, 0, .3), 0 0 2px rgba(0, 0, 0, .3);
	-webkit-box-shadow: 1px 1px 2px rgba(0, 0, 0, .3), 0 0 2px
		rgba(0, 0, 0, .3);
	-moz-box-shadow: 1px 1px 2px rgba(0, 0, 0, .3), 0 0 2px
		rgba(0, 0, 0, .3);
}

/*** TEXT BOX ***/
.search_3 {
	background: #fafafa; /* Fallback color for non-css3 browsers */
	color: black;
	align:center;
	text-align:center;
	/* Gradients */ background : -webkit-gradient( linear, left bottom,
	left top, color-stop( 0, rgb( 250, 250, 250)), color-stop( 1, rgb( 230,
	230, 230)));
	background: -moz-linear-gradient(center top, rgb(250, 250, 250) 0%,
		rgb(230, 230, 230) 100%);
	border: 0;
	border-bottom: 1px solid #fff;
	border-right: 1px solid rgba(255, 255, 255, .8);
	/* align:center; */	
	font-size: 15px;
	margin: 4px;
	height: 35px;
	/* padding: 5px; */
	width: 430px;
	
	/* Rounded Corners */
	border-radius: 17px;
	-webkit-border-radius: 17px;
	-moz-border-radius: 17px;
	/* Shadows */
	box-shadow: -1px -1px 2px rgba(0, 0, 0, .3), 0 0 1px rgba(0, 0, 0, .2);
	-webkit-box-shadow: -1px -1px 2px rgba(0, 0, 0, .3), 0 0 1px
		rgba(0, 0, 0, .2);
	-moz-box-shadow: -1px -1px 2px rgba(0, 0, 0, .3), 0 0 1px
		rgba(0, 0, 0, .2);
	background: -webkit-gradient(linear, left bottom, left top, color-stop(0, rgb(250,
		250, 250)), color-stop(1, rgb(230, 230, 230)))
}

/*** USER IS FOCUSED ON TEXT BOX ***/
.search_3:focus {
	outline: none;
	background: #fff; /* Fallback color for non-css3 browsers */
	/* Gradients */
	background: -webkit-gradient(linear, left bottom, left top, color-stop(0, rgb(255,
		255, 255)), color-stop(1, rgb(235, 235, 235)));
	background: -moz-linear-gradient(center top, rgb(255, 255, 255) 0%,
		rgb(235, 235, 235) 100%);
}

/*** SEARCH BUTTON ***/
.submit_3 {
	background: #27A4F7; /* Fallback color for non-css3 browsers */
	/* Gradients */
	/* background: -webkit-gradient( linear, left top, left bottom, color-stop(0, rgb(79,188,32)), color-stop(0.15, rgb(73,157,34)), color-stop(0.88, rgb(62,135,28)), color-stop(1, rgb(49,114,21)));
background: -moz-linear-gradient( center top, rgb(79,188,32) 0%, rgb(73,157,34) 15%, rgb(62,135,28) 88%, rgb(49,114,21) 100%); */
	border: 0;
	color: #eee;
	cursor: pointer;
	float: right;
	font: 16px 'Raleway', sans-serif;
	font-weight: bold;
	height: 33px;
	margin: 4px 4px 0;
	text-shadow: 0 -1px 0 rgba(0, 0, 0, .3);
	width: 84px;
	outline: none;
	/* Rounded Corners */
	border-radius: 30px;
	-webkit-border-radius: 30px;
	-moz-border-radius: 30px;
	/* Shadows */
	box-shadow: -1px -1px 1px rgba(255, 255, 255, .5), 1px 1px 0
		rgba(0, 0, 0, .4);
	-moz-box-shadow: -1px -1px 1px rgba(255, 255, 255, .5), 1px 1px 0
		rgba(0, 0, 0, .2);
	-webkit-box-shadow: -1px -1px 1px rgba(255, 255, 255, .5), 1px 1px 0
		rgba(0, 0, 0, .4);
}
/*** SEARCH BUTTON HOVER ***/
.submit_3:hover {
	background: #4ea923; /* Fallback color for non-css3 browsers */
	/* Gradients */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0, rgb(89,
		222, 27)), color-stop(0.15, rgb(83, 179, 38)),
		color-stop(0.8, rgb(66, 143, 27)), color-stop(1, rgb(54, 120, 22)));
	background: -moz-linear-gradient(center top, rgb(89, 222, 27) 0%,
		rgb(83, 179, 38) 15%, rgb(66, 143, 27) 80%, rgb(54, 120, 22) 100%);
}

.submit_3:active {
	background: #4ea923; /* Fallback color for non-css3 browsers */
	/* Gradients */
	background: -webkit-gradient(linear, left bottom, left top, color-stop(0, rgb(89,
		222, 27)), color-stop(0.15, rgb(83, 179, 38)),
		color-stop(0.8, rgb(66, 143, 27)), color-stop(1, rgb(54, 120, 22)));
	background: -moz-linear-gradient(center bottom, rgb(89, 222, 27) 0%,
		rgb(83, 179, 38) 15%, rgb(66, 143, 27) 80%, rgb(54, 120, 22) 100%);
}

/* presentational */
body {
	
	font: 18px/2 sans-serif;

}

nav a {
	color: #2A4B70;
	display: block;
	padding: 1em 1.5em;
	text-decoration: none;
	
}

nav a:hover {
	color: orange;
	
}

nav ul, nav ul li {
	list-style-type: none;
 padding: 0em;
	margin: 0em; 
	text-align:left;
} 

nav>ul {
	background: #27A4F7;
	text-align: center;
}

nav>ul>li {
	display: inline-block;
	border-left: solid 0.5px #aaa;
}

nav>ul>li:first-child {
	border-left: none;
}

.sub-menu {
	background: white;
	color: #2A4B70;
	align:center;
	text-align: center;


</style>
</head>
<body>
	<header  >



			<a  align="left" style="font-family: Comic Sans MS, Comic Sans, cursive; color: #2A4B70; font-size: 25px;"
				class="navbar-brand" href="home"><b>Electromart</b> </a>
	

		<div align="right" style="position: relative; top: 15px;right:1em ">
			<c:if test="${pageContext.request.userPrincipal.name == null }">
				<a href="getregistration" style="color: white"><span
					class="glyphicon glyphicon-user"></span> Signup </a>
				<a href="loginpage" style="color: white; align: center"><span
					class="glyphicon glyphicon-log-in"></span> Login </a>
			</c:if>


			<c:if
				test="${pageContext.request.userPrincipal.name != 'arjunvijay' && pageContext.request.userPrincipal.name !=null }">

				<a style="color: white" href="#"><span
					class="glyphicon glyphicon-shopping-cart">Cart</span></a>

			</c:if>

			<c:if test="${pageContext.request.userPrincipal.name != null }">

				<a style="color: white"
					href="<c:url value="/j_spring_security_logout"/>"><span
					class="glyphicon glyphicon-log-out"></span>Logout</a>


			</c:if>
		</div>
<div style="position:relative;top:3em;">
		<c:if
			test="${pageContext.request.userPrincipal.name =='arjun@gmail.com' }">
			<nav>
				<ul >
					<li class="sub-menu-parent"><a style="color:white; text-align: center;" href="#">Category</a>
						<ul class="sub-menu">
							<li><a href="Categoryform">New Category</a></li>
							<li><a href="Viewcategory">ViewCategory</a></li>
						</ul></li>

					<li class="sub-menu-parent"><a style="color: white" href="#">Product</a>
						<ul class="sub-menu">
							<li><a href="Productform">New Product</a></li>
							<li><a href="viewProduct">View Product</a></li>
						</ul></li>

					<li class="sub-menu-parent"><a style="color: white" href="#">Supplier</a>
						<ul class="sub-menu">
							<li><a href="Supplier">New Supplier</a></li>
							<li><a href="viewSupplier">View Supplier</a></li>
						</ul></li>


				</ul>
			</nav>

		</c:if>

		<a> </a>

		<c:if
			test="${pageContext.request.userPrincipal.name != 'arjun@gmail.com' && pageContext.request.userPrincipal.name !=null || pageContext.request.userPrincipal.name ==null }">

			<nav>
				<ul >
					<li class="sub-menu-parent"><a style="color: white" href="#">Television</a>
						<ul class="sub-menu">
							<li><a href="#">HD</a></li>
							<li><a href="#">Ultra HD</a></li>
							<li><a href="#">Smart </a></li>

						</ul></li>
					<li class="sub-menu-parent"><a style="color: white" href="#">Refrigerator</a>
						<ul class="sub-menu">
							<li><a href="#">SingleDoor</a></li>
							<li><a href="#">DoubleDoor</a></li>
							<li><a href="#">TripleDoor</a></li>
							<li><a href="#">SidebySide</a></li>

						</ul></li>
					<li class="sub-menu-parent"><a style="color: white" href="#">AirConditioner</a>
						<ul class="sub-menu">
							<li><a href="#">Split ACs</a></li>
							<li><a href="#">Split ACs</a></li>
						</ul></li>

					<li class="sub-menu-parent"><a style="color: white" href="#">WashingMachine</a>
						<ul class="sub-menu">
							<li><a href="#">FullyAutomaticTopLoad</a></li>
							<li><a href="#">SemiAutomaticTopLoad</a></li>
							<li><a href="#">FullyAutomaticFrontLoad</a></li>
							<li><a href="#">SidebySide</a></li>
						</ul></li>
					<li class="sub-menu-parent"><a style="color: white" href="#">Fan</a>
						<ul class="sub-menu">
							<li><a href="#">Ceiling Fan</a></li>
							<li><a href="#">Table Fan</a></li>
							<li><a href="#">Wall Fan</a></li>
							<li><a href="#">Exhaust Fan</a></li>
						</ul></li>
					<li class="sub-menu-parent"><a style="color: white" href="#">Kitchen
							Appliances</a>

						<ul class="sub-menu">
							<li><a href="#">Mixer-Grinder</a></li>
							<li><a href="#">Wet-Grinder</a></li>
							<li><a href="#">MicroWave-oven</a></li>
							<li><a href="#">Exhaust Fan</a></li>
						</ul></li>
					
				</ul>
			</nav>
			
			


		</c:if>
		</div>
		<c:if
			test="${pageContext.request.userPrincipal.name != 'arjun@gmail.com' && pageContext.request.userPrincipal.name !=null || pageContext.request.userPrincipal.name ==null }">
		
		<form    style="position: relative; bottom: 5em; align:right;"
						id="search-form_3">
						<input placeholder="search for your item here.." type="text" text-align="center" class="search_3" /> <input type="submit"
							class="submit_3" value="Search" />
					</form>
					</c:if>


	</header>