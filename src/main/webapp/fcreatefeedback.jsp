<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Feedback</title>
    
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        /* Container Styles */
        .remove-container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        form {
            display: flex;
            flex-direction: column;
        }

        /* Form Group Styles */
        form div {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            box-sizing: border-box;
        }

        input[type="text"]:focus {
            outline: none;
            border-color: #007bff;
        }

        /* Buttons */
        button {
            padding: 10px 15px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 14px;
        }

        button:hover {
            background-color: #0056b3;
        }

        #addQuestionBtn {
            margin-top: 10px;
            align-self: center;
        }

        button[type="button"] {
            background-color: 007bff;
            margin-top: 10px;
        }

        button[type="button"]:hover {
            background-color: 007bff;
        }

        /* Questions Container */
        #questionsContainer {
            margin-top: 20px;
        }

        .question {
            margin-bottom: 20px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .optionsContainer {
            margin-top: 10px;
        }

        .option {
            margin-bottom: 10px;
        }

        .option:last-child {
            margin-bottom: 0;
        }
    </style>
 
</head>
<body>
<jsp:include page="adminNav.jsp"></jsp:include>
    <div class="remove-container">
        <h2>Create Feedback</h2>
        <form action="/admin/submitFeedback" method="post">
            <div>
                <!-- Faculty ID Input (hidden) -->
                Enter Faculty ID:
                <input type="text" name="facultyId" value="${faculty.id}" required/>
            </div>
            <!-- Container for Questions -->
            <div id="questionsContainer">
                <div class="question">
                    <label>Feedback Question:</label>
                    <input type="text" name="questions" required placeholder="Enter feedback question">
                    <!-- Options Container -->
                    <div class="optionsContainer">
                        <div class="option">
                            <label>Option 1:</label>
                            <input type="text" name="opt1" required placeholder="Excelent">
                        </div>
                        <div class="option">
                            <label>Option 2:</label>
                            <input type="text" name="opt2" required placeholder="Good">
                        </div>
                        <div class="option">
                            <label>Option 3:</label>
                            <input type="text" name="opt3" required placeholder="Average">
                        </div>
                        <div class="option">
                            <label>Option 4:</label>
                            <input type="text" name="opt4" required placeholder="Better">
                        </div>
                    </div>
                   
                    <button type="button" onclick="removeQuestion(this)">Remove Question</button>
                </div>
            </div>
            <button type="button" id="addQuestionBtn">Add Another Question</button>
            <button type="submit">Submit Feedback</button>
        </form>
    </div>

    <script>
        let questionCount = 1;

        // Function to add new feedback question
        document.getElementById("addQuestionBtn").addEventListener("click", function () {
            questionCount++;
            const questionsContainer = document.getElementById("questionsContainer");

            // Create a new question div
            const newQuestionDiv = document.createElement("div");
            newQuestionDiv.classList.add("question");

            newQuestionDiv.innerHTML = `
                <label>Feedback Question:</label>
                <input type="text" name="questions" required placeholder="Enter feedback question">

                <div class="optionsContainer">
                    <div class="option">
                        <label>Option 1:</label>
                        <input type="text" name="opt1" required placeholder="Excelent">
                    </div>
                    <div class="option">
                        <label>Option 2:</label>
                        <input type="text" name="opt2" required placeholder="Good">
                    </div>
                    <div class="option">
                        <label>Option 3:</label>
                        <input type="text" name="opt3" required placeholder="Average">
                    </div>
                    <div class="option">
                        <label>Option 4:</label>
                        <input type="text" name="opt4" required placeholder="Better">
                    </div>
                </div>
               
                <button type="button" onclick="removeQuestion(this)">Remove Question</button>
            `;

            questionsContainer.appendChild(newQuestionDiv);
        });

        // Function to remove a specific question
        function removeQuestion(button) {
            button.closest(".question").remove();
        }
    </script>
</body>
</html>
