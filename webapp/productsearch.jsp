<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Search</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<form action="searchproduct.jsp" method="get">
		<h2>Product Search Screen</h2>
		Enter product id <input type="text" name="productCode"/>
		<input type="submit" value="Search Product">
		</form>
	</div>
</body>
</html>