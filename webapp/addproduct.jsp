<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="header.jsp"/>
	<div class="container">
		<form action="addproduct" method="POST">
		<h2>Add Product</h2>
		Enter Product Code<input type="text" name="productCode"><br>
		Enter Product Name<input type="text" name="productName"><br>
		Enter Product Price<input type="text" name="unitPrice"><br>
		Enter Product Quantity<input type="text" name="quantity"><br>
		Enter Product Description<input type="text" name="category"><br>
		<input type="submit" value="Add Product">
		</form>
	</div>
</body>
</html>