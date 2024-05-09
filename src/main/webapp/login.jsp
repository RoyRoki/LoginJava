<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<div class="login-container">
        <h1>Login</h1>
        <form action="LoginServlet" method="post"> <!-- Change method to "post" -->
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            <button type="submit">Login</button>
        </form>

           <div class="Links">
       <a href="login.jsp">Login</a>    
      <a href="index.html">Home</a> 
      <a href="register.jsp">Register</a> 
      </div>
      <%-- Display error message if login fails --%>
        <% String error = request.getParameter("error");
            if (error != null && error.equals("1")) { %>
                <p style="color:  #025003;">Invalid username or password. Please try again.</p>
        <% } %>
        
        <%-- Display error message if Register Successful --%>
        <% String rs = request.getParameter("registration");
            if (rs != null && rs.equals("success")) { %>
                <p style="color: green;">Your Registration is Successful. Please Login.</p>
        <% } %>
                <%-- Display error message if Delete Successful --%>
        <% String delete = request.getParameter("delete");
            if (delete != null && delete.equals("0")) { %>
                <p style="color: red;">Your Account Successfully Deleted.</p>
        <% } %>
    </div>
</body>
</html>