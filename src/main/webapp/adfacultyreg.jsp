<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Registration</title>
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
    <jsp:include page="adminNav.jsp"></jsp:include>

    <!-- Main Content -->
    <div class="container-main-content">
        <h2 class="text-center">Faculty Registration</h2>
        <form action="/addUser" method="POST" id="registrationForm">
        <label for="userType">Register as</label>
    <div class="radio-group">
        <input type="radio" name="userType" id="student" value="student" onclick="switchLoginType('student')"> Student
        <input type="radio" name="userType" id="faculty" value="faculty" onclick="switchLoginType('faculty')"> Faculty
    </div>
            <!-- First Name -->
            <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" id="firstName" name="firstname" class="form-control" required>
            </div>
            
            <!-- Last Name -->
            <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" id="lastName" name="lastname" class="form-control" required>
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>

            <!-- Password -->
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="pwd" class="form-control" required>
            </div>
            
           <div class="form-group">
    <label for="years">Select Years:</label>
    <select id="years" name="years" class="form-control" multiple required>
        <option value="First Year">First Year</option>
        <option value="Second Year">Second Year</option>
        <option value="Third Year">Third Year</option>
        <option value="Fourth Year">Fourth Year</option>
    </select>
    <small>Hold Ctrl (Windows) or Command (Mac) to select multiple years.</small>
</div>


           
<div class="form-group">
    
  <button type="submit" class="btn btn-primary">Register</button>
    
</div>

 </form>
    </div>

    <script>
    function switchLoginType(type) {
        var form = document.getElementById('registrationForm');

        if (type === 'student') {
            // Redirect to student registration page
            window.location.href = "adstudentreg.jsp";
        } else {
            form.action = "/addUser";  // Stay on the faculty registration page
        }
    }
    </script>
</body>
</html> 