<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

<style>

body{
display:flex;
justify-content:center;
align-items:center;
height:100vh;
background:linear-gradient(135deg,#1e3c72,#2a5298);
font-family:'Montserrat',sans-serif;
}

.welcome-box{
width:500px;
padding:40px;
text-align:center;
border-radius:15px;
background:rgba(255,255,255,0.1);
border:2px solid rgba(255,255,255,0.3);
backdrop-filter:blur(10px);
color:white;
box-shadow:0 0 20px rgba(0,0,0,0.3);
}

.welcome-box h1{
font-size:40px;
margin-bottom:20px;
animation:pop 1s ease-in-out;
}

.welcome-box p{
font-size:18px;
margin-bottom:30px;
}

.logout-btn{
padding:10px 25px;
border:none;
border-radius:25px;
background:white;
color:#333;
font-size:16px;
cursor:pointer;
transition:0.3s;
}

.logout-btn:hover{
background:#ffd700;
transform:scale(1.05);
}

@keyframes pop{
0%{transform:scale(0.5);opacity:0;}
100%{transform:scale(1);opacity:1;}
}

</style>

</head>

<body>

<div class="welcome-box">

<h1>🎉 Welcome! 🎉</h1>

<p>You have successfully logged into the system.</p>

<p>We are super excited to have you here 🚀</p>

<form action="login.jsp">
<button class="logout-btn">Logout</button>
</form>

</div>

</body>
</html>