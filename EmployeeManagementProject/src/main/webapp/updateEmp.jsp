<%@page import="com.model.Employee"%>
<%@page import="com.dao.EmployeeDao"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Update Employee</title>
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
  <%
    int empId = Integer.parseInt(request.getParameter("id"));
    EmployeeDao employeeDao = new EmployeeDao();
    Employee emp = employeeDao.getEmployee(empId);
  %>

  <div class="form-container">
    <h1>Update Employee</h1>
    <form action="update" method="post">
      <input type="hidden" name="id" value="<%= empId %>">

      <label>Name:</label>
      <input type="text" name="name" value="<%= emp.getName() %>" required>

      <label>Age:</label>
      <input type="number" name="age" value="<%= emp.getAge() %>" required>

      <label>Email:</label>
      <input type="email" name="email" value="<%= emp.getEmail() %>" required>

      <label>Phone Number:</label>
      <input type="number" name="phoneNumber" value="<%= emp.getPhoneNum() %>" required>

      <label>Salary:</label>
      <input type="number" name="salary" value="<%= emp.getSalary() %>" required>

      <input type="submit" value="Update">
    </form>
  </div>
</body>
</html>
