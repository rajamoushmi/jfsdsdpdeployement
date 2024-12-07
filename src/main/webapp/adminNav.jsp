<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Navbar</title>
    <link rel="stylesheet" href="styles.css">
    <script>
        function toggleProfileMenu() {
            var menu = document.getElementById("profileMenu");
            menu.style.display = menu.style.display === "block" ? "none" : "block";
        }
    </script>
</head>
<body>
    <!-- Navbar Section -->
    <nav class="navbar">
        <ul>
            <li><a href="/adminHome.jsp" class="btn">Dashboard</a></li>
            <li><a href="/addUser.jsp" class="btn">Add </a></li>
            <li><a href="/remove.jsp" class="btn">Remove</a></li>
          <li><a href="/viewstudents" class="btn">View students</a></li>
         <li><a href="/viewfaculty" class="btn">View faculty</a></li>
            <li><a href="/fcreatefeedback.jsp" class="btn">Create Feedback</a></li>
            <li><a href="/adminLogin.jsp" class="btn">Logout</a></li>
           
        </ul>
    </nav>
    

    <!-- Main Content -->
    <main>
        <!-- Add your page content here -->
    </main>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f4f7fc;
        }
        footer {
            background-color: #c3dbf7;
            text-align: center;
            padding: 20px;
            position: fixed;
            bottom: 0;
            width: 100%;
            box-shadow: 0 -4px 6px rgba(0, 0, 0, 0.1);
            height: 2px;
        }

        .navbar {
            background-color: #c3dbf7;
            padding: 10px;
            text-align: center;
            position: relative;
           position: fixed;
            top: 0;
            width: 100%;
            z-index: 999;
        }

        .navbar ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: inline-block;
        }

        .navbar ul li {
            display: inline;
            margin-right: 20px;
        }
 .navbar a:hover {
            background-color: #8bb1e7;
            color: white;
        }
        .navbar ul li a {
            
    text-decoration: none;
    padding: 10px 20px;
    color: #5b6db3;
    font-weight: bold;
    font-size: 16px;
    border-radius: 8px;
    transition: background-color 0.3s ease;

        }

        .navbar ul li a:hover {
            background-color: #4a8ac7;
            transform: scale(1.1);
        }

        .avatar {
            position: absolute;
            right: 20px;
            top: 10px;
            display: inline-block;
            text-align: center;
        }

        .greeting {
            display: block;
            color: white;
            font-size: 14px;
            margin-bottom: 5px;
        }

        .avatar-img {
            width: 40px;
            height: 40px;
            background-color: #76c7f5;
            color: white;
            font-size: 18px;
            text-align: center;
            line-height: 40px;
            border-radius: 50%;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }

        .avatar-img:hover {
            background-color: #5a9bd5;
            transform: scale(1.1);
        }

        .profile-menu {
            display: none;
            position: absolute;
            top: 50px;
            right: 0;
            background-color: #ffffff;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            z-index: 1;
        }

        .profile-menu a {
            display: block;
            padding: 10px;
            text-decoration: none;
            color: #333;
            font-size: 16px;
        }

        .profile-menu a:hover {
            background-color: #5da9e9;
            color: white;
        }
    </style>
</body>
<footer>
        &copy; 2024 Student Feedback System. All rights reserved.
    </footer>
</html>
