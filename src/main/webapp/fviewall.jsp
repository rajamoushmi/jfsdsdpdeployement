<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Feedback Results</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f4faff;
            display: flex;
            flex-direction: column;
            height: 100vh;
            overflow: hidden;
        }

        h1 {
            background-color: #c3dbf7;
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }

        footer {
            background-color: #c3dbf7;
            text-align: center;
            padding: 20px;
            position: fixed;
            bottom: 0;
            width: 100%;
            box-shadow: 0 -4px 6px rgba(0, 0, 0, 0.1);
        }

        .content {
            flex-grow: 1;
            padding: 50px;
            overflow-y: auto;
        }
        .search-bar {
            margin: 20px auto;
            text-align: center;
        }
        .search-bar input {
            width: 200px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 10px;
            font-size: 14px;
        }

        .feedback-summary {
            margin-bottom: 20px;
        }

        .feedback-summary h2 {
            font-size: 20px;
            margin-bottom: 10px;
            color: #333;
        }

        .feedback-item {
            background-color: #fff;
            padding: 15px;
            margin-bottom: 15px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .feedback-item span {
            display: block;
            margin-bottom: 5px;
        }

        .feedback-item .question {
            font-weight: bold;
            color: #333;
        }

        .feedback-item .answer {
            color: #5da9e9;
            font-weight: bold;
        }

        .ok-btn {
            background-color: #5da9e9;
            color: white;
            border: none;
            border-radius: 10px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
            display: block;
            margin: 20px auto;
            width: 120px;
            text-align: center;
        }

        .ok-btn:hover {
            background-color: #4698d9;
        }
        
    </style>
</head>

<body>
    <!-- Navbar Section -->
    <div id="navbar">
        <%-- Simulate loading the navbar dynamically. You can replace this with your navbar content --%>
        <jsp:include page="facultymainnav.jsp" />
    </div>

  

    <!-- Main Content -->
    <div class="content">
        <!-- Feedback summary section -->
        <div class="feedback-summary">
         <div class="search-bar">
            <input type="text" placeholder="Search by id">
        </div>
           
            <%-- Simulated feedback responses --%>
            <div class="feedback-item">
                <span class="question">1. Did the faculty explain complex topics in an understandable way?</span>
                <span class="answer">Your Answer: Yes, always</span>
            </div>
            <div class="feedback-item">
                <span class="question">2. How effectively did the faculty engage students in the learning process?</span>
                <span class="answer">Your Answer: Very effectively</span>
            </div>
            <div class="feedback-item">
                <span class="question">3. Did the faculty communicate effectively in lectures and respond to student queries?</span>
                <span class="answer">Your Answer: Yes, frequently</span>
            </div>
            <div class="feedback-item">
                <span class="question">4. How would you rate the faculty's ability to make the subject interesting?</span>
                <span class="answer">Your Answer: 8/10</span>
            </div>
            <div class="feedback-item">
                <span class="question">5. How effectively did the faculty engage students in the learning process?</span>
                <span class="answer">Your Answer: Very effectively</span>
            </div>
        </div>

        <!-- OK Button -->
        <button class="ok-btn" onclick="window.location.href='fviewall.jsp'">OK</button>
    </div>

    <!-- Footer Section -->
    <footer>
        © 2024 Student Feedback System
    </footer>

</body>

</html>
