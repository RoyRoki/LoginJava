<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>login Success!</title>
</head>
<body>
    <%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session1 != null && session1.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session1.getAttribute("username");
    %>
<div class="login-container">
 <h1>Let's Connect You To The World</h1>
 <h1 Style="color:black;"> do it <%= username %>!</h1>
    <div class="Links">
      <a href="logout">LOGOUT</a>
      <a href="index.html">Home</a>
      <a href="delete.jsp"style="background-color:red;">Delete Account</a>
      </div>
    
    
    <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>
        <%-- Display error message if try to delete with wrong password --%>
        <% String error = request.getParameter("wrong");
            if (error != null && error.equals("3")) { %>
                <p style="color:  #025003;">Invalid password.</p>
        <% } %>
   </div> 
</body>
</html>