<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.JavaWebApplication.Controller.WEB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavaWebApplication</title>
</head>
<script type="text/javascript">
	window.addEventListener( 'beforeunload', function(ev) { 
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
	        	 
	 			response.sendRedirect("http://localhost:8080/JavaWebApplication/jsp/Home.jsp");
	         }
	   
        	else {
        	
	        	%>
		           <h2>Hello World!</h2>
					<a href="jsp/Register.jsp">Click on this button to register</a><br><br>
					<a href="jsp/Login.jsp">Click on this button to login</a>
			    <%
        	}
         }
     %>
</body>
</html>