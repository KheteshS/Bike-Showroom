<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	${msg}
	<%@ taglib prefix="dlithe" uri="http://www.springframework.org/tags/form" %>
	<dlithe:errors path="vehicle.*"/>
	<form action="change" method="POST">
		<table>
			<tr><td>Vehicle Id :</td><td><input type="text" name="stkid" value="${ one.getStkid() }"/></td></tr>
			<tr><td>Vehicle Model :</td><td><input type="text" name="model" value="${ one.getModel() }"/></td></tr>
			<tr><td>Vehicle Type:</td><td><input type="text" name="type" value="${ one.getType() }"/></td></tr>
			<tr><td>Vehicle Engine Capacity:</td><td><input type="text" name="cc" value="${ one.getCc() }"/></td></tr>
			<tr><td>Vehicle Year of manufacture:</td><td><input type="text" name="year" value="${ one.getYear() }"/></td></tr>
			<tr><td>Expected milage:</td><td><input type="text" name="milage" value="${ one.getMilage() }"/></td></tr>
			<tr><td>On Road price:</td><td><input type="text" name="price" value="${ one.getPrice() }"/></td></tr>
			<tr><td>Number of stocks imported:</td><td><input type="text" name="quantity" value="${ one.getQuantity() }"/></td></tr>
			<tr>
				<td><input type="submit" value="Update to stock"/></td>
				<td><input type="reset" value="Clear"/></td>
			</tr>
		</table>
	</form>
</body>
</html>