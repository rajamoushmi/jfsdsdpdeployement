<%@ include file="studentmainnav.jsp" %>  <!-- Including the student navigation bar -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Feedback</title>
</head>
<style>
.faculty-container  {
            width: 100%;
            max-width: 600px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
</style>
<body>
    <!-- Feedback form container -->
 
    <!-- Faculty list container -->
    <div class="faculty-container">
    <h3>Faculty Feedback</h3>
    <ul>
        <c:forEach var="faculty" items="${faculties}">
            <li>
                <span class="faculty-name">${faculty.first_name} ${faculty.last_name}</span>
                <button class="add-feedback-btn" onclick="addFeedback('${faculty.first_name} ${faculty.last_name}')">
                    Add Feedback
                </button>
            </li>
        </c:forEach>
    </ul>
</div>

<script>
    function addFeedback(facultyName) {
        alert("Feedback for " + facultyName + " selected!");
        // Redirect to a feedback form for this faculty
        window.location.href = "feedbackform.jsp?facultyName=" + encodeURIComponent(facultyName);
    }
</script>


    
    <script>
        function addFeedback(facultyName) {
            alert("Feedback option for " + facultyName + " has been selected!");
            // You can redirect to a specific feedback form for the selected faculty
        }
    </script>
</body>
</html>
