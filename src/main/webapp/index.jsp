<%@ page contentType="text/html; charset=ISO-8859-1" language="java" %>
<html>
<head>
    <title>Home Page</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .container {
            position: relative;
            text-align: center;
            color: white;
        }

        .background-img {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            opacity: 0.8;
        }

        h1 {
            font-size: 3rem;
            margin-top: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }

        p {
            font-size: 1.5rem;
            margin-bottom: 30px;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.7);
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            font-size: 1.2rem;
            text-decoration: none;
            color: white;
            background-color: #007BFF;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Background Image -->
    <img src="https://i.postimg.cc/P5TqLhXh/feedback-1.jpg" alt="Background Image" class="background-img">

    <!-- Content -->
    <div class="container">
        <h1>Welcome to Our Website</h1>
        <a href="facultyreg" class="button">Sign Up</a>
        <a href="studentlogin" class="button">Login</a>
    </div>
</body>
</html>
