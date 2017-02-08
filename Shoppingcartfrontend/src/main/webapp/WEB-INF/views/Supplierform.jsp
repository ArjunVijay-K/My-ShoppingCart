<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script>
	$("#suppliername").on('click',function(){
		alert("success");
		if(this.value == null){
			$('#requiredMsg').css({"display":"inline","color":"red"});
		}else{
			$('#requiredMsg').css({"display":"none","color":"red"});
		}
	});
</script>
<title>Supplier</title>
</head>
<body>
<div class="container" >
		<div class="jumbotron" style="background-color:#EAECEE">
			
			<h3 align="center" style="color: #27A4F7">Add a new supplier</h3>

			<form class="form-horizontal"  method="post" action="newSupplier"  role="form" name="supplier">
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Name :<span style="display:none;color:red;" id="requiredMsg">*This is a required field</span></label> 
					<input  class="form-control" placeholder="Enter the name of the supplier" type="text"  id="suppliername" name="name" >
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Phone number:</label> 
					<input  class="form-control" placeholder="Enter the phone number" type="text"  id="phonenumber" name="phoneNo" >
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Email Id:</label> 
					<input  class="form-control" placeholder="Enter the emailid" type="text"  id="emailid" name="emailId" >
				</div>
				
				<div style="color: #27A4F7" class="form-group">
					<label for="text">Address:</label> 
					<input  class="form-control" placeholder="Enter the address" type="text"  id="address" name="address" >
				</div>
				
				<button style="background-color: #27A4F7;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
				
				</form>

</body>
</html>