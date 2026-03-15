<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>
</head>

<body>

<h2>Reset Password</h2>

<form action="resetPassword" method="post">

<input type="hidden" name="email" value="<%=request.getParameter("email")%>">

New Password:
<input type="password" name="password" required>

<br><br>

<button type="submit">Update Password</button>

</form>

</body>
</html>