<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login here</title>
</head>
<body>
	${msg}
	<form action="check" method="POST">
	<table>
		<tr>
			<td><input type="text" placeholder="Username" name="user"/></td>		
		</tr>
		<tr>
			<td><input type="password" placeholder="Password" name="pass"/></td>
		</tr>	
		<tr>
			<td><input type="submit" value="Login"/></td>
			<td><input type="reset" value="Clear"/></td>
		</tr>
	</table>
			
	</form>
</body>
</html>