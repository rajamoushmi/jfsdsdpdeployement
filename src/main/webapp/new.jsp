<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Feedback Dashboard</title>
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
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
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
            box-shadow: 0 -4px 6px rgba(0,0,0,0.1);
        }

        .icon-set div img {
            width: 100%;
            height: auto;
            object-fit: contain;
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

        .feedback-list-container {
            margin: 20px;
            width: 900px;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            overflow-y: auto;
            max-height: calc(100vh - 200px);
        }

        .feedback-list {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .feedback-item {
            display: flex;
            align-items: center;
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s;
        }

        .feedback-item:hover {
            background-color: #f1f1f1;
        }

        .profile img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
        }

        .profile {
            margin-right: 20px;
        }

        .details {
            flex-grow: 1;
        }

        .details span {
            display: block;
            font-size: 14px;
            margin-bottom: 5px;
        }

        .details .name {
            font-weight: bold;
            color: #333;
        }

        .add-feedback-btn {
            background-color: #5da9e9;
            color: white;
            border: none;
            border-radius: 10px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .add-feedback-btn:hover {
            background-color: #4698d9;
        }
        .content-wrapper{
            width: 90%;
            max-width: 1200px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>

<body>
    <!-- Navbar Section -->
    <div id="navbar">
       <jsp:include page="studentmainnav.jsp"></jsp:include>
    </div>

   

    <!-- Main Content -->
    <div class="content-wrapper">
        <div class="search-bar">
            <input type="text" placeholder="Search by id">
        </div>

        <!-- Feedback List Container -->
        <div class="feedback-list-container">
            <div class="feedback-list">
                <!-- Feedback 1 -->
                <div class="feedback-item">
                    <div class="profile">
                        <img src="https://i.postimg.cc/QNTWcn2w/av-1.jpg" alt="Avatar">
                    </div>
                    <div class="details">
                        <span class="id">1</span>
                        <span class="name">Chinni Prasu</span>
                      
                    </div>
                    <form action="feedbacks" method="get">
                        <button class="add-feedback-btn" type="submit">Add Feedback</button>
                    </form>
                </div>

                <!-- Feedback 2 -->
                <div class="feedback-item">
                    <div class="profile">
                        <img src="https://i.postimg.cc/tCb7WRtn/av-3.jpg" alt="Avatar">
                    </div>
                    <div class="details">
                        <span class="id">2</span>
                        <span class="name">Faculty One</span>
                    </div>
                    <form action="feedbacks" method="get">
                        <button class="add-feedback-btn" type="submit">Add Feedback</button>
                    </form>
                </div>

                <!-- Feedback 3 -->
                <div class="feedback-item">
                    <div class="profile">
                        <img src="https://i.postimg.cc/BnqL9Zjf/av-2.jpg" alt="Avatar">
                    </div>
                    <div class="details">
                        <span class="id">3</span>
                        <span class="name">Sushma chow</span>
                       
                    </div>
                    <form action="feedbacks" method="get">
                        <button class="add-feedback-btn" type="submit">Add Feedback</button>
                    </form>
                </div>

                
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <footer>
        © 2024 Student Feedback System
    </footer>
</body>

</html>
