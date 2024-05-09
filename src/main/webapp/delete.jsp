<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Delete Account Confirmation</title>
</head>
<body>
<div class="login-container">
  <h1>Are you sure you want to delete your account?</h1>
  <form action="deleting" method="post">
    <label for="password">Re Enter Password!</label>
            <input type="password" id="password" name="password" required><br>
    <input type="hidden" name="username" value="<%= session.getAttribute("username") %>"> <button type="submit">Yes, Delete</button>
       <div class="Links">
      <a href="wellcome.jsp" style="background-color:red;">Cancel</a>
      </div>
  </form>
   <p>This action cannot be undone.</p>
  </div>
</body>
</html>