<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New/Edit Contact</title>
</head>
<body>
	<div align="center">
		<h1>New/Edit Category</h1>
		<form:form action="saveCategory" method="post" modelAttribute="category">
		<table>
			<form:hidden path="categoryId"/>
			<tr>
				<td>Name:</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>Display Name:</td>
				<td><form:input path="displayName" /></td>
			</tr>
			<tr>
				<td>Order Of Display:</td>
				<td><form:input path="orderOfDisplay" /></td>
			</tr>
			<tr>
				<td>Commission Date:</td>
				<td><form:input path="commissionDate" /></td>
			</tr>
			<tr>
				<td>Sunset Date:</td>
				<td><form:input path="sunsetDate" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Save Catogory"></td>
			</tr>
		</table>
		</form:form>
	</div>
</body>
</html>