<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Remove User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .remove-container {
            width: 100%;
            max-width: 400px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-size: 14px;
            color: #555;
        }
       form {
    margin-bottom: 20px; /* Adds space between the text field and submit button */
}

input[type="text"] {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 14px;
    margin-bottom: 15px; /* Adds space between the input field and the button */
}

button {
margin-left:90px;
    width: 50%;
    height: 35px;
    padding: 12px;
    background-color: #0056b3;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    margin-top: 10px; /* Adds top margin between button and input field */
}

        button:hover {
            background-color: #00409b;
        }
        .message {
            text-align: center;
            font-size: 14px;
            color: green;
        }
        .error-message {
            text-align: center;
            font-size: 14px;
            color: red;
        }
    </style>
</head>
<body>
    <jsp:include page="adminNav.jsp"></jsp:include>

    <div class="remove-container">
        <h2>Remove User</h2>
        <form action="/removeUser" method="post">
            <label for="userId">Enter User ID to Remove:</label>
            <input type="text" id="userId" name="userId" required>
            <button type="submit">Remove User</button>
        </form>

        <!-- Display success or error message -->
        <div class="message">
            <c:if test="${not empty successMessage}">
                <p>${successMessage}</p>
            </c:if>
        </div>

        <div class="error-message">
            <c:if test="${not empty errorMessage}">
                <p>${errorMessage}</p>
            </c:if>
        </div>
    </div>
</body>
</html>
