<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
</head>
<body>
    <h2>Registration Success</h2>
    <p><c:out value="${message}"></c:out></p>
    <a href="/facultylogin">Login here</a>
</body>
</html>
