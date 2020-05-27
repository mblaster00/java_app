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
		response.setHeader("Cache-Control", "no-cache, must-revalidate, max-age=0");
		response.setHeader("Cache-Control", "no-store");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
	%>
	
	<%
		if (session != null) {
			
	         if (session.getAttribute("username") != null) {
	        	 
	        	String username = (String)session.getAttribute("username");
		    	System.out.println(username);
		        	 
		         %>
			        <h2>Welcome to the home page! <% out.println(username); %></h2><br>
			        <form method="post" action="http://localhost:8080/JavaWebApplication/LogoutServlet">
			    		<input type="submit" value="Logout">
			   		</form>
			    <% 
	         } 
	         
	         else {
	        	 
		 		response.sendRedirect(WEB.login);
	         }
	      }
     %>	
</body>
</html>