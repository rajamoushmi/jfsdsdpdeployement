<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Navbar</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <nav class="navbar">
        <ul>
            <li><a href="/Studenthome.jsp" class="btn">Dashboard</a></li>
            <li><a href="/new.jsp" class="btn">Add Feedback</a></li>       
            <li><a href="/profile.jsp" class="btn">Profile</a></li>
            <li><a href="/studentlogin" class="btn">Logout</a></li>
          


        </ul>
        
    </nav>

    <style>
       body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f4f7fc;
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
    </style>

    <li class="avatar">
    <span class="avatar-img" onclick="toggleProfileMenu()">
        ${initial} <!-- Display first letter of the student's name -->
    </span>
    <div id="profileMenu" class="profile-menu">
        <a href="/viewprofile">View Profile</a>
        <a href="/logout">Logout</a>
    </div>
</li>

</body>
<footer>
        &copy; 2024 Student Feedback System. All rights reserved.
    </footer>
</html>
