<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category Search</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="container">
		<form action="searchcategory.jsp" method="get">
			<h2>Category Search Screen</h2>
			Enter category<input type="text" name="category"/>
			<input type="submit" value="Search Product">
		</form>
	</div>
</body>
</html>