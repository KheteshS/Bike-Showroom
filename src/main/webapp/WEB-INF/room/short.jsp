<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shortlisting vehicle</title>
</head>
<body>
	<%response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0); %>
	<form action="shortlist" method="POST">
		<table>
			<tr><td>Enter the Stock id to fetch:</td><td><input type="text" name="stkid" placeholder="Enter id" /></td></tr>
			<tr><td>Enter the milage to fetch:</td><td><input type="text" name="milage" placeholder="Enter milage" /></td></tr>
			<tr><td>Enter the cc to fetch</td><td><input type="text" name="cc" placeholder="Enter cc" /></td></tr>
			<tr><td>Enter the price to fetch</td><td><input type="text" name="price" placeholder="Enter price" /></td></tr>
			<tr><td><input type="submit" value="Submit"/></td>
			<td><input type="reset" value="Clear"/></td></tr>
		</table>
	</form>
	<a href="back">Back To Home</a>
	<a href="logout">Logout</a>
</body>
</html>