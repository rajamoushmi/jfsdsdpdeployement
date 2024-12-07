<%@page import="com.jfsd.project.model.Student"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% Student s = (Student) session.getAttribute("student");
int studentId=s.getId();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .container {
            width: 90%;
            max-width: 800px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }
        tr:nth-child(odd) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .submit-btn {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .submit-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<jsp:include page="studentmainnav.jsp"></jsp:include>
    <div class="container">
        <h1>Feedback Form</h1>
        <form action="submitFeedback" method="post">
            <!-- Faculty ID Input -->
            
            <div class="form-group">
                <label for="facultyId">Faculty ID:</label>
                <input type="number" id="facultyId" name="facultyId" placeholder="Enter Faculty ID" required>
            </div>
            <input type="hidden" name="studentId" value="<%= studentId %>">

            <!-- Feedback Questions -->
            <table>
                <thead>
                    <tr>
                        <th>Question</th>
                        <th>Options</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="feedback" items="${feedbackList}">
                        <tr>
                            <td>${feedback.question}</td>
                            <td>
                                <label>
                                    <input type="radio" name="response_${feedback.id}" value="${feedback.opt1}" required>
                                    ${feedback.opt1}
                                </label><br>
                                <label>
                                    <input type="radio" name="response_${feedback.id}" value="${feedback.opt2}">
                                    ${feedback.opt2}
                                </label><br>
                                <label>
                                    <input type="radio" name="response_${feedback.id}" value="${feedback.opt3}">
                                    ${feedback.opt3}
                                </label><br>
                                <label>
                                    <input type="radio" name="response_${feedback.id}" value="${feedback.opt4}">
                                    ${feedback.opt4}
                                </label>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <button type="submit" class="submit-btn">Submit Feedback</button>
        </form>
    </div>
</body>
</html>
