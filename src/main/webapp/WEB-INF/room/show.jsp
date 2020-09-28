<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle List</title>
</head>
<body>
${msg}
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="hai"%>
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
			<th>Actions</th>
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
				<td><ol type="A">
					<li><a href="editable?id=${ ksr.getStkid() }">Edit</a></li>
					<li><a href="deletable?id=${ ksr.getStkid() }">Delete</a></li>
				</ol></td>
			</tr>
		</hai:forEach>
	</table>
</body>
</html>