<%@ page import="com.jfsd.project.model.Faculty" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    Faculty s = (Faculty) session.getAttribute("faculty");
    if (s == null) {
        response.sendRedirect("facultylogin.jsp");
        return;
    }
    int facultyId = s.getId();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Responses</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .container {
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
    </style>
</head>
<body>
<jsp:include page="facultymainnav.jsp"></jsp:include>

    <div class="container">
    <div class="search-bar">
            <input type="text" placeholder="Search student by id">
        </div>
        <h2>Feedback Responses for Faculty ID: <%= facultyId %></h2>
        <table>
            <thead>
                <tr>
                    <th>Response ID</th>
                    <th>Student ID</th>
                    <th>Feedback Question ID</th>
                    <th>Selected Option</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="response" items="${responses}">
                    <tr>
                        <td>${response.id}</td>
                        <td>${response.studentId}</td>
                        <td>${response.feedbackId}</td>
                        <td>${response.selectedOption}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <c:if test="${empty responses}">
            <p>No responses found for this faculty.</p>
        </c:if>
    </div>
</body>
</html>
