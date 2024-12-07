<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to external CSS file -->
</head>
<body>
    <!-- Main Content Wrapper with Flexbox -->
    <div class="container-wrapper">
        <!-- Registration Form Container -->
        <div class="container main-content">
            <h2 class="text-center">Student Registration</h2>
            <form action="/insertstudent" method="POST" id="registrationForm">
                <div class="radio-group">
                    <input type="radio" name="userType" id="student" value="student" checked onclick="switchLoginType('student')"> Student
                    <input type="radio" name="userType" id="faculty" value="faculty" onclick="switchLoginType('faculty')"> Faculty
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
                <!-- Year -->
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
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Register</button>
                </div>
                               <p class="text-center">Already have an account? <a href="/studentlogin">Sign In</a></p>
                
                <div>
    
</div>
            </form>
        </div>

        <!-- Image Container -->
        <div class="container image-container">
            <img src="https://i.postimg.cc/prsrDR18/feedback-69117421.jpg" alt="Registration Image" class="registration-image">
        </div>
    </div>

    <script>
        function switchLoginType(type) {
            var form = document.getElementById('registrationForm');

            if (type === 'faculty') {
                window.location.href = "facultyreg.jsp";
            } else {
                form.action = "/insertstudent";  // Stay on the student registration page
            }
        }
    </script>
    
<style>/* General Styles */
    body, html {
        font-family: Arial, sans-serif;
        background-color: #f4f7fc;
        margin: 0;
        padding: 0;
        height: 100%;
        overflow: auto; /* Enable scrolling */
    }

    /* Wrapper for both containers */
    /* Wrapper for both containers */
.container-wrapper {
    display: flex;
    flex-direction: row-reverse; /* Swap the order of form and image */
    justify-content: space-between;
    align-items: stretch;
    width: 100%;
    height: 100%;
    padding: 10px;
    box-sizing: border-box;
    overflow: auto; /* Allow scrolling within container wrapper */
}

/* Registration Form Container */
.container.main-content {
    width: 50%;
    background-color: #ffffff;
    padding: 20px;
    border-radius: 12px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
    display: flex;
    flex-direction: column;
    justify-content: flex-start; /* Allow space for content */
    overflow: auto; /* Allow scrolling within form */
    height: 100%; /* Ensure it takes full height */
    box-sizing: border-box;
}

/* Image Container */
.container.image-container {
    width: 50%;
    background-color: #f4f7fc;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
    overflow: auto; /* Allow scrolling within image container */
}

/* Image Styles */
.registration-image {
    width: 100%; /* Make the image take the full width of the container */
    height: 100%; /* Make the image take the full height of the container */
    object-fit: cover; /* Ensure the image covers the container without distorting its aspect ratio */
    border-radius: 8px;
}

    /* Form Styles */
    h2 {
        text-align: center;
        margin-bottom: 15px;
        font-size: 20px;
        color: #333;
    }

    .form-group {
        margin-bottom: 12px;
        display: flex;
        align-items: center; /* Align label and input vertically */
    }

    label {
        width: 35%; /* Adjusted width for label */
        margin-right: 10px; /* Space between label and input field */
        font-size: 13px;
        color: #555;
        font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"],
    select {
        width: 65%; /* Adjusted width for input */
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 13px;
        box-sizing: border-box;
        transition: all 0.3s ease;
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    input[type="password"]:focus,
    select:focus {
        border-color: #0056b3;
        outline: none;
        box-shadow: 0 0 4px rgba(0, 86, 179, 0.3);
    }

    select {
        height: auto;
    }

    small {
        display: block;
        font-size: 11px;
        color: #888;
        margin-top: 5px;
    }

    button {
        width: 100%;
        padding: 10px;
        background-color: #0056b3;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 14px;
        cursor: pointer;
        transition: all 0.3s ease;
    }

    button:hover {
        background-color: #00409b;
    }

    .radio-group {
        margin-bottom: 12px;
        display: flex;
        justify-content: center;
        gap: 12px;
    }

    input[type="radio"] {
        margin-right: 5px;
    }

    input[type="radio"] + label {
        font-size: 12px;
        color: #333;
        font-weight: normal;
        cursor: pointer;
    }

    input[type="radio"]:focus + label {
        font-weight: bold;
    }

    .text-center {
        text-align: center;
    }

    .btn {
        font-weight: bold;
    }

    @media screen and (max-width: 768px) {
        .container-wrapper {
            flex-direction: column;
        }

        .container.main-content,
        .container.image-container {
            width: 100%;
            padding: 15px;
        }

        .registration-image {
            width: 90%;
        }

        /* Adjust form group layout for smaller screens */
        .form-group {
            flex-direction: column;
            align-items: stretch;
        }

        label {
            width: 100%; /* Full width on smaller screens */
            margin-right: 0;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        select {
            width: 100%; /* Full width on smaller screens */
        }
    }</style>
</body>
</html>
