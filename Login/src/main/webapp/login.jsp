<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Login Page</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<div class="wrapper">

<div class="login-box">

<form action="login" method="post">

<h2>Login</h2>

<div class="input-box">
<span class="icon">
<ion-icon name="mail"></ion-icon>
</span>

<input type="text" name="username" required>
<label>Username</label>

</div>

<div class="input-box">

<span class="icon">
<ion-icon name="lock-closed"></ion-icon>
</span>

<input type="password" name="password" required>
<label>Password</label>

</div>

<div class="remember-forgot">

<label>
<input type="checkbox"> Remember me
</label>

<a href="forgot-password.jsp">Forgot Password?</a>

</div>

<button type="submit">Login</button>

<div class="register-link">

<p>Don't have an account? <a href="register.jsp">Register</a></p>

</div>

</form>

</div>

</div>

<script src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>

</body>
</html>