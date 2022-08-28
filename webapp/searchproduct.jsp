<%@page import="com.ibsplc.jdbc.dao.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
						 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Product</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<jsp:useBean id="productdao" class="com.ibsplc.jdbc.dao.ProductDAOImpl"/>
	
	<c:set value="${productdao.getProduct(Integer.parseInt(param.productCode))}" var="product"/>
	
	<c:choose>
		<c:when test="${product != null}">
			<div class="container">
			<table class='table table-bordered'>
				<tr><td>Product Code</td><td>${product.productCode}</td></tr>
				<tr><td>Product Name</td><td>${product.productName}</td></tr>
				<tr><td>Unit Price</td><td>${product.unitPrice}</td></tr>
				<tr><td>Quantity</td><td>${product.quantity}</td></tr>
				<tr><td>Category</td><td>${product.category}</td></tr>
			</table>
			</div>
		</c:when>
		
		<c:otherwise>
			<h2>Product with code ${param.productCode} does not exist</h2>
		</c:otherwise>

	</c:choose>
	
</body>
</html>