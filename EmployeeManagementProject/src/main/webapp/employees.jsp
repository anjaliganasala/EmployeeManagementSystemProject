<%@ page import="java.util.*, com.model.*" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Employee Dashboard</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(to right, #1e3c72, #2a5298);
      color: white;
      padding: 30px;
    }

    h1 {
      text-align: center;
      color: #ffcb05;
    }

    .top-bar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 20px;
    }

    .top-bar a {
      background-color: #ffcb05;
      padding: 10px 20px;
      border-radius: 8px;
      color: #000;
      text-decoration: none;
      font-weight: bold;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
      background-color: white;
      color: black;
      border-radius: 8px;
      overflow: hidden;
    }

    th, td {
      padding: 12px;
      border-bottom: 1px solid #ddd;
      text-align: center;
    }

    th {
      background-color: #003366;
      color: #fff;
    }

    a.action-link {
      color: #1e3c72;
      font-weight: bold;
      text-decoration: none;
    }

    a.action-link:hover {
      text-decoration: underline;
    }

    marquee {
      color: #ffcb05;
      font-size: 18px;
    }

  </style>
</head>
<body>
  <h1>Welcome To Employee Dashboard</h1>
  <marquee>Welcome <%= session.getAttribute("email") %></marquee>

  <div class="top-bar">
    <span></span>
    <a href="addEmployee.jsp">+ Add New Employee</a>
  </div>

  <table>
    <tr> 
      <th>Employee ID</th>
      <th>Name</th>
      <th>Age</th>
      <th>Email</th>
      <th>Phone Number</th>
      <th>Salary</th>
      <th>Update</th>
      <th>Delete</th>
    </tr>

    <%
      List<Employee> empList = (List<Employee>) request.getAttribute("empList"); 
      for(Employee emp : empList){
    %>
    <tr>
      <td><%= emp.getEmpId() %></td>
      <td><%= emp.getName() %></td>
      <td><%= emp.getAge() %></td>
      <td><%= emp.getEmail() %></td>
      <td><%= emp.getPhoneNum() %></td>
      <td><%= emp.getSalary() %></td>
      <td><a class="action-link" href="updateEmp.jsp?id=<%= emp.getEmpId() %>">Update</a></td>
      <td><a class="action-link" href="delete?id=<%= emp.getEmpId() %>">Delete</a></td>
    </tr>
    <% } %>
  </table>
</body>
</html>
