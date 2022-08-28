<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="header.jsp"/>
	<jsp:useBean id="productdao" class="com.ibsplc.jdbc.dao.ProductDAOImpl"></jsp:useBean>
	
	<div class = "container">
	<table class="table table-bordered">
	
		<tr>
			<td>Code</td>
			<td>Name</td>
			<td>Unit Price</td>
			<td>Quantity</td>
			<td>Category</td>
		</tr>
	
		<c:forEach var="product" items="${productdao.getProduct(param.category)}">
	
		<tr>
			<td>${product.productCode}</td>
			<td>${product.productName}</td>
			<td>${product.unitPrice}</td>
			<td>${product.quantity}</td>
			<td>${product.category}</td>
		</tr>
		</c:forEach>
		
	</table>
	</div>
</body>
</html>