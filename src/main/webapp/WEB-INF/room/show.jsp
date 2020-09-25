<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle List</title>
</head>
<body>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="hai"%>
	<center>
	<table border="4" cellspacing="4" cellpadding="4" >
		<tr>
			<th>ID</th>
			<th>Model of Bike</th>
			<th>Year of manufacture</th>
			<th>Average Expected  milage</th>
			<th>Vehicle Type</th>
			<th>Engine capacity</th>
			<th>On Road Price</th>
			<th>Available Quantity</th>
		</tr>
		<hai:forEach var="ksr" items="${all}">
			<tr>
				<td>${ ksr.getStkid() }</td>
				<td>${ ksr.getModel() }</td>
				<td>${ ksr.getYear() }</td>
				<td>${ ksr.getMilage() }</td>
				<td>${ ksr.getType() }</td>
				<td>${ ksr.getCc() }</td>
				<td>${ ksr.getPrice() }</td>
				<td>${ ksr.getQuantity() }</td>
			</tr>
		</hai:forEach>
	</table>
	</center>
</body>
</html>