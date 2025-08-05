<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Add New Employee</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(to right, #1e3c72, #2a5298);
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      color: white;
    }

    .form-container {
      background-color: rgba(255, 255, 255, 0.1);
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
      width: 350px;
    }

    h1 {
      text-align: center;
      color: #ffcb05;
      margin-bottom: 20px;
    }

    label {
      display: block;
      margin-bottom: 5px;
      font-weight: 600;
    }

    input {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: none;
      border-radius: 6px;
      outline: none;
    }

    input[type="submit"] {
      background-color: #ffcb05;
      color: black;
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #e6b800;
    }
  </style>
</head>
<body>
  <div class="form-container">
    <h1>Add New Employee</h1>
    <form action="addEmployee" method="post">
      <label>Name:</label>
      <input type="text" name="name" required>

      <label>Age:</label>
      <input type="number" name="age" required>

      <label>Email:</label>
      <input type="email" name="email" required>

      <label>Phone Number:</label>
      <input type="number" name="phoneNumber" required>

      <label>Salary:</label>
      <input type="number" name="salary" required>

      <input type="submit" value="Add">
    </form>
  </div>
</body>
</html>
