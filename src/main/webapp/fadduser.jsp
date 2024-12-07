<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to external CSS file -->
</head>
<style>
.container-main-content  {
            width: 100%;
            max-width: 300px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
</style>
<body>
    <jsp:include page="facultymainnav.jsp"></jsp:include>

    <!-- Main Content -->
    <div class="container-main-content">
        <h1>Student Registration</h1>
        <form action="/insertstudent" method="POST" id="registrationForm">
            <div class="form-group">
                <div class="radio-group">
                </div>
            </div>
            
            <!-- First Name -->
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" id="firstName" name="sfirstname" class="form-control" required>
            </div>
            
            <!-- Last Name -->
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" id="lastName" name="slastname" class="form-control" required>
            </div>

            <!-- Year Dropdown -->
            <div class="form-group">
                <label for="syear">Year:</label>
                <select id="syear" name="syear" class="form-control" required>
                    <option value="">Select Year</option>
                    <option value="1st Year">1st Year</option>
                    <option value="2nd Year">2nd Year</option>
                    <option value="3rd Year">3rd Year</option>
                    <option value="4th Year">4th Year</option>
                </select>
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="semail" class="form-control" required>
            </div>

            <!-- Password -->
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="spwd" class="form-control" required>
            </div>

            <!-- Submit Button -->
<!--             <button type="submit" class="btn btn-primary">Register</button>
 -->            <button class="ok-btn" onclick="window.location.href='fadduser.jsp'">OK</button>
        </form>
    </div>

    <script>
        function switchLoginType(type) {
            var form = document.getElementById('registrationForm');

        }
    </script>
</body>
</html>
