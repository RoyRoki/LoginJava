<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout Page</title>
</head>
<body>
  <%
        // Retrieve the session object
        HttpSession session2 = request.getSession(false);
        if(session2 != null) {
        	session2.invalidate();
        }
       
            response.sendRedirect("login.jsp");
    %>
</body>
</html>