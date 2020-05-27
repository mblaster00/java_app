<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.JavaWebApplication.Controller.WEB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavaWebApplication</title>
</head>
<script type="text/javascript">
window.addEventListener( 'beforeunload', function(e) { 
		document.body.style.display = "none";
	})
	window.onpageshow = function (event) {
	    if (event.persisted) {
	        window.location.reload();
	    }
	};
</script>
<body> 
	<% 
		response.setHeader("Cache-Control", "no-cache, must-revalidate");
		response.setHeader("Cache-Control", "no-store");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
	%>
	
	<%	
		if (session != null) {
			
	         if (session.getAttribute("username") != null) {
	        	 
	 			response.sendRedirect(WEB.home);
	         }
	   
        	else {
        	
	        	%>
	            <h2>Welcome to the login page!</h2>
				<form method="post" action="http://localhost:8080/JavaWebApplication/LoginServlet">
					<pre>
					<input type="text" name="username" placeholder="enter your username"><br>
					<input type="password" name="password" placeholder="enter your passowrd"><br>
					<input type="submit" value="login">
					</pre>
				</form>
			    <%
        	}
         }
     %>   
</body>
</html>