<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Failed</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        text-align: center;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 90%;
        max-width: 400px;
    }

    h1 {
        color: #d9534f;
        font-size: 24px;
        margin-bottom: 20px;
    }

    p {
        color: #666;
        font-size: 16px;
        margin-bottom: 20px;
    }

    a {
        display: inline-block;
        background-color: #0275d8;
        color: #ffffff;
        text-decoration: none;
        padding: 10px 20px;
        border-radius: 4px;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }

    a:hover {
        background-color: #025aa5;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>Login Failed</h1>
        <p><c:out value="${message}"></c:out></p>
        <a href="studentlogin">Try Again</a>
    </div>
</body>
</html>
