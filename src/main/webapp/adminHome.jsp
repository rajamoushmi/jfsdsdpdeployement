<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
</head>
<style>
footer {
            background-color: #c3dbf7;
            text-align: center;
            padding: 20px;
            position: fixed;
            bottom: 0;
            width: 100%;
            box-shadow: 0 -4px 6px rgba(0, 0, 0, 0.1);
        }
        .remove-container {
            width: 100%;
            max-width: 900px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
</style>
<body>
    <jsp:include page="adminNav.jsp"></jsp:include>
    <div class="remove-container">

    <h1>Welcome to Admin Dashboard</h1>
    <p>You have successfully logged in as admin!</p>
    
   
    </div>
</body> <footer>
        &copy; 2024 Student Feedback System. All rights reserved.
    </footer>
</html>
