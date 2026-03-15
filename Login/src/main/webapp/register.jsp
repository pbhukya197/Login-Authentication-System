<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<div class="wrapper">

<div class="login-box">

<form action="register" method="post">

<h2>Register</h2>

<div class="input-box">
<input type="text" name="username" required>
<label>Username</label>
</div>

<div class="input-box">
<input type="email" name="email" required>
<label>Email</label>
</div>

<div class="input-box">
<input type="password" name="password" required>
<label>Password</label>
</div>

<button type="submit">Register</button>

<div class="register-link">
<p>Already have an account? <a href="login.jsp">Login</a></p>
</div>

</form>

</div>

</div>

</body>
</html>