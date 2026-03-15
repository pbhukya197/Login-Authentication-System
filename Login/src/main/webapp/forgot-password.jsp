<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

<style>
.error-message{
color:#ff4d4d;
text-align:center;
margin-bottom:10px;
font-weight:bold;
}
</style>

</head>

<body>

<div class="wrapper">

<div class="login-box">

<form action="forgotPassword" method="post">

<h2>Forgot Password</h2>

<%
String error = (String)request.getAttribute("error");
if(error != null){
%>
<p class="error-message"><%=error%></p>
<%
}
%>

<div class="input-box">
<input type="email" name="email" required>
<label>Email</label>
</div>

<button type="submit">Verify Email</button>

<div class="register-link">
<p><a href="login.jsp">Back to Login</a></p>
</div>

</form>

</div>

</div>

</body>
</html>