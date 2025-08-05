package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.Employee;
import com.utils.Constants;
import com.utils.DBConnection;

public class EmployeeDao {

    public List<Employee> getAllEmployees() {
        List<Employee> employees = new ArrayList<Employee>();
        try {
            Connection connection = DBConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(Constants.GET_ALL_EMPLOYEES);
            ResultSet resultset = statement.executeQuery();
            while (resultset.next()) {

                int empId = resultset.getInt(1);
                String name = resultset.getString(2);
                int age = resultset.getInt(3);
                String email = resultset.getString(4);
                String phoneNum = resultset.getString(5);
                double salary = resultset.getDouble(6);

                Employee emp = new Employee(empId, name, age, email, phoneNum, salary);
                employees.add(emp);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }

    public void addEmployee(Employee employeeInput) {
        try {
            Connection connection = DBConnection.getConnection();

            int nextEmpId = getNextEmpId();
            
            // Create new employee object with ID included
            
            Employee employee = new Employee(nextEmpId, employeeInput.getName(), employeeInput.getAge(),
                    employeeInput.getEmail(), employeeInput.getPhoneNum(), employeeInput.getSalary());

            PreparedStatement statement = connection.prepareStatement(Constants.SAVE_EMPLOYEE);
            statement.setInt(1, employee.getEmpId());
            statement.setString(2, employee.getName());
            statement.setInt(3, employee.getAge());
            statement.setString(4, employee.getEmail());
            statement.setString(5, employee.getPhoneNum());
            statement.setDouble(6, employee.getSalary());
            statement.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public int getNextEmpId() {
        int nextId = 1;

        try {
            Connection connection = DBConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(Constants.GET_MAX_EMP_ID);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                int maxId = resultSet.getInt(1);
                if (maxId > 0) {
                    nextId = maxId + 1;
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return nextId;
    }

    public Employee getEmployee(int empId) {
        Connection connection;
        Employee emp = null;
        try {
            connection = DBConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(Constants.GET_EMPLOYEE);
            statement.setInt(1, empId);
            ResultSet resultset = statement.executeQuery();
            while (resultset.next()) {
                String name = resultset.getString(2);
                int age = resultset.getInt(3);
                String email = resultset.getString(4);
                String phoneNum = resultset.getString(5);
                double salary = resultset.getDouble(6);

                emp = new Employee(empId, name, age, email, phoneNum, salary);

            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return emp;
    }

    public void updateEmployee(Employee employee) {
        try {
            Connection connection = DBConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(Constants.UPDATE_EMPLOYEE);
            statement.setString(1, employee.getName());
            statement.setInt(2, employee.getAge());
            statement.setString(3, employee.getEmail());
            statement.setString(4, employee.getPhoneNum());
            statement.setDouble(5, employee.getSalary());
            statement.setInt(6, employee.getEmpId());
            statement.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteEmployee(int id) {
        try {
            Connection connection = DBConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(Constants.DELETE_EMPLOYEE);
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
