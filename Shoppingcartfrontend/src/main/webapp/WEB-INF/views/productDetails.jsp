<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ProductDetails</title>
<style type="text/css">
  p {
  
    position: fixed;
    bottom: 250;
    right: 10px;
    width:700px;
    
   
      
</style>
</head>
<body>
<h2 align="center" style="margin-top: 1em; margin-bottom: -2em; margin-right: 4.5em;">${product.product_Name}</h2>


<div >

<form:form >
<table>
<tr>
<td>
<img src="<c:url value="/resources/img/product/${product.product_Id}.jpg"/>" alt="${product.product_Id}" style="align:left; position: fixed;
    bottom:200px;
    right: 900px;
    width:350px; height:200" >

</td></tr>
<p>
${outOfStock}
<b>Product Name :</b> ${product.product_Name}<br><br>
<b>Product Description :</b> ${product.description}<br><br>
<b>Product Price :</b> ${product.product_Price}<br><br>
<b>Product Available :</b> ${product.product_Stock}<br><br>
</p>
<a href="../addToCart/${usersId}/${product.product_Id}"><input class="btn btn-warning" type="button" name="button" value="Add To Cart"/
 style="position: fixed;
    bottom: 170;
    right:450px;
    width:250px;"></a>
<button type="button" class="btn btn-success" onclick="goBack()" style="position: fixed;
    bottom: 170;
    right: 150px;
    width:250px;">Purchase</button>

</table>
</form:form>

</div>


</body>
</html>