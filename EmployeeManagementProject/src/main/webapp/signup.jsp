<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Signup</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(to right, #1e3c72, #2a5298);
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      color: #fff;
    }

    .signup-container {
      background-color: rgba(255, 255, 255, 0.1);
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
      width: 350px;
    }

    .signup-container h1 {
      text-align: center;
      margin-bottom: 10px;
      color: #ffcb05;
    }

    .signup-container marquee {
      color: #ffffff;
      margin-bottom: 20px;
    }

    .signup-container h3 {
      text-align: center;
      margin-bottom: 25px;
      color: #ffffff;
    }

    label {
      display: block;
      margin-bottom: 5px;
      font-weight: 600;
    }

    input[type="email"],
    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: none;
      border-radius: 6px;
      outline: none;
    }

    input[type="submit"] {
      width: 100%;
      padding: 10px;
      background-color: #ffcb05;
      border: none;
      border-radius: 6px;
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #e6b800;
    }

    p {
      text-align: center;
      margin-top: 15px;
      color: #ffffff;
    }

    a {
      color: #ffcb05;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="signup-container">
    
    <marquee>End-to-End Java Full Stack Web Project</marquee>
    <h3>Signup</h3>
    <form action="signup" method="post">
      <label for="email">Email:</label>
      <input type="email" name="email" placeholder="Enter email" required>

      <label for="password">Password:</label>
      <input type="password" name="password" placeholder="Enter password" required>

      <label for="confirm-password">Confirm Password:</label>
      <input type="password" name="confirm-password" placeholder="Enter password again" required>

      <input type="submit" value="Signup">
    </form>
    <p>Already registered? <a href="index.html">Login</a></p>
  </div>
</body>
</html>
