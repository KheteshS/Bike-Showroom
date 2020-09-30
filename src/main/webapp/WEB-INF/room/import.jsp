<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Vehicle</title>
</head>
<body>
	<%response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0); %>
	${msg}
	<%@ taglib prefix="dlithe" uri="http://www.springframework.org/tags/form" %>
	<dlithe:errors path="vehicle.*"/>
	<form action="newStock" method="POST">
		<table>
			<tr><td>Enter the model of the vehicle :</td><td><input type="text" name="model" placeholder="Enter details"/></td></tr>
			<tr><td>Gear/ Gearless:</td><td><input type="text" name="type" placeholder="Enter details"/></td></tr>
			<tr><td>Engine Capacity:</td><td><input type="text" name="cc" placeholder="Enter details"/></td></tr>
			<tr><td>Year of manufacture:</td><td><input type="text" name="year" placeholder="Enter details"/></td></tr>
			<tr><td>Expected milege:</td><td><input type="text" name="milage" placeholder="Enter details"/></td></tr>
			<tr><td>On Road price:</td><td><input type="text" name="price" placeholder="Enter details"/></td></tr>
			<tr><td>Number of stocks imported:</td><td><input type="text" name="quantity" placeholder="Enter details"/></td></tr>
			<tr>
				<td><input type="submit" value="Add to Stock"/></td>
				<td><input type="reset" value="Clear"/></td>
			</tr>
		</table>
	</form>
	<a href="back">Back To Home</a>
	<a href="logout">Logout</a>
</body>
</html>