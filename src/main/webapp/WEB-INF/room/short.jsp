<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shortlisting vehicle</title>
</head>
<body>
	<form action="shortlist" method="POST">
		<table>
			<tr><td>Enter the Stock id to fetch:</td><td><input type="text" name="stkid" value="Enter id" /></td></tr>
			<tr><td>Enter the milage to fetch:</td><td><input type="text" name="milage" value="Enter milage" /></td></tr>
			<tr><td>Enter the cc to fetch</td><td><input type="text" name="cc" value="Enter cc" /></td></tr>
			<tr><td>Enter the price to fetch</td><td><input type="text" name="price" value="Enter price" /></td></tr>
			<tr><td><input type="submit" value="Submit"/></td>
			<td><input type="reset" value="Clear"/></td></tr>
		</table>
	</form>
</body>
</html>