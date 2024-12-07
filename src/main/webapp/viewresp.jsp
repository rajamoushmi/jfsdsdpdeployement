<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
        /* Add CSS for styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .containermt-5 {
            width: 90%;
            max-width: 1200px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        thead {
            background-color: #343a40;
            color: #fff;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }
        tbody tr:nth-child(odd) {
            background-color: #f9f9f9;
        }
        tbody tr:hover {
            background-color: #f1f1f1;
        }
        .delete-button {
            background-color: #e74c3c;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            border-radius: 4px;
        }
        .delete-button:hover {
            background-color: #c0392b;
        }
    </style>
</head>
    <jsp:include page="facultymainnav.jsp"></jsp:include>

<body>
    <div class="containermt-5">
        <h2>Student Details</h2>
        <table>
            <thead>
    <tr>
        <th>Response ID</th>
        <th>Student ID</th>
        <th>Feedback ID</th>
        <th>Selected Option</th>
    </tr>
</thead>
<tbody>
    <c:forEach var="stude" items="${studentresplist}">
        <tr>
            <td>${stude.id}</td>
            <td>${stude.studentId}</td>
            <td>${stude.feedbackId}</td>
            <td>${stude.selectedOption}</td>
        </tr>
    </c:forEach>
</tbody>

        </table>
    </div>
</body>
</html>