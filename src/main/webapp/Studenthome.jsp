<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Home Page</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <jsp:include page="studentmainnav.jsp" />

    <div class="container">
    
        <h1>Welcome, ${student.firstName} ${student.lastName}!</h1>
        <p>This is your student dashboard.</p>
        <div class="dashboard-content">
            <div class="courses-section">
                <h2>Your Courses</h2>
                <!-- Add courses information here -->
            </div>
            <div class="grades-section">
                <h2>Your Grades</h2>
                <!-- Add grades information here -->
            </div>
        </div>
    </div>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f4f7fc;
        }

        .container {
            padding: 20px;
        }

        .dashboard-content {
            display: flex;
            justify-content: space-between;
        }

        .courses-section, .grades-section {
            width: 45%;
        }
    </style>
</body>
</html>
