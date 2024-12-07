<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
        }
        .login-container {
            width: 100%;
            max-width: 400px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-size: 14px;
            color: #555;
        }
       input[type="email"], input[type="password"] {
       padding-left: 10px;
    width: 40%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 14px;
}

input[type="email"]:focus, input[type="password"]:focus {
    border-color: #0056b3;
    outline: none;
}

button {
margin-top: 30px;
margin-left:100px;
    width: 50%;
    padding: 12px;
    background-color: #0056b3;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
}
text1{margin-left:90px;


}
        button:hover {
            background-color: #00409b;
        }
        .error-message {
            text-align: center;
            font-size: 14px;
            color: red;
        }
        p {
            text-align: center;
            font-size: 14px;
        }
        a {
            color: #0056b3;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        /* Radio Button Style */
.text-center {
    text-align: center;
    margin-bottom: 20px;
}

input[type="radio"] {
    margin-right: 10px;
}


label {
    margin-left: 5px; /* Space between radio button and label */
}

    </style>
</head>
<body>
    <div class="login-container">
        <h2>Admin Login</h2>
        <c:if test="${not empty errorMessage}">
            <div class="error-message">
                <p>${errorMessage}</p>
            </div>
        </c:if>
<div class="text-center">
        <label for="userType">Login as</label>
        <!-- Radio Buttons to switch between Student, Faculty, and Admin Login -->
        <form action="" method="post">
            <input type="radio" id="studentLogin" name="userType" onclick="switchLoginType('student')"> Student
            <input type="radio" id="facultyLogin" name="userType" checked onclick="switchLoginType('faculty')"> Faculty
            <input type="radio" id="adminLogin" name="userType" checked onclick="switchLoginType('admin')"> Admin
        </form>
 
            </div>
        <!-- Admin login form -->
        <form action="${pageContext.request.contextPath}/admin/login" method="POST">
            <class=text1 label for="password">Enter Password</label>
            <input type="password" id="password" name="password" required />

            <button type="submit">Login</button>
        </form>

        <p class="text-center">Don't have an account? <a href="/adminreg">Sign Up</a></p>
    </div>

    <script>
        function switchLoginType(type) {
            var form = document.getElementById('loginForm');
            
            if (type === 'faculty') {
                window.location.href = "facultylogin.jsp";
            }
            else if (type === 'student') {
                window.location.href = "studentlogin";
            } 
            else {
                form.action = "adminLogin"; 
            }
        }
    </script>
</body>
</html>
