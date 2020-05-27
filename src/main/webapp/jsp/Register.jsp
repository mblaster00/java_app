<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		response.setHeader("Cache-Control", "no-cache, must-revalidate");
		response.setHeader("Cache-Control", "no-store");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
	%>

	<h2>Welcome to the register page!</h2>
	<form method="post" action="http://localhost:8080/JavaWebApplication/Register">
		<pre>
		<input type="text" name="username" placeholder="enter your username"><br>
		<input type="email" name="email" placeholder="enter your email"><br>
		<input type="password" name="password" placeholder="enter your passowrd"><br>
		<input type="submit" value="valider">
		</pre>
	</form>
</body>
</html>