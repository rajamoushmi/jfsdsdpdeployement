<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }

        .container {
            width: 80%;
            
            max-width: 1200px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .content-box {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            padding: 40px 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
        }

        .profile-box {
            width: 40%;
            text-align: center;
            padding: 20px;
            background-color: #f0f4fc;
            border-radius: 10px;
        }

        .profile-box h2 {
            font-size: 32px;
            color: #333;
            margin-bottom: 20px;
        }

        .profile-img img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            margin-bottom: 20px;
        }

        .profile-info {
            text-align: left;
            margin-bottom: 20px;
        }

        .profile-info p {
            font-size: 18px;
            margin: 10px 0;
        }

        .btn-group {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .btn-group a {
            display: inline-block;
            margin-bottom: 10px;
            padding: 12px 25px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            background-color: #8bb1e7;
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        .btn-group a:hover {
            background-color: #5b6db3;
        }

        .image {
            text-align: right;
        }

        .image img {
            width: 400px;
            height: auto;
        }

    </style>
</head>
<body>
   <jsp:include page="facultymainnav.jsp"></jsp:include>
    <div class="container">
        <div class="content-box">
            <div class="profile-box">
                
                <div class="profile-img">
                    <img src="https://i.postimg.cc/BnqL9Zjf/av-2.jpg" alt="Profile Picture">
                </div>
                <div class="profile-info">
                <p><strong>ID:</strong> ${faculty.id}</p>
                    <p><strong>Name:</strong> ${faculty.firstName}</p>
                    <p><strong>Email:</strong> ${faculty.email}</p>
                    <div class="password-container">
                        <input type="password" id="password" value="${student.password}" readonly>
                        <button onclick="togglePasswordVisibility()">Show</button>
                    </div>
                    
                </div>
                <div class="btn-group">
                    <a href="/editprofile.jsp">Edit Profile</a>
                   
                </div>
            </div>
            <div class="image">
                <img src="https://i.postimg.cc/fWG3SH95/FACULTY.png" alt="Faculty Image">
            </div>
        </div>
    </div>
    <script>
        // Function to load the navbar from fnavbar.jsp
        function togglePasswordVisibility() {
            const passwordInput = document.getElementById('password');
            const button = event.target;
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                button.textContent = 'Hide';
            } else {
                passwordInput.type = 'password';
                button.textContent = 'Show';
            }
        }
       
    </script>

</body>
</html>
