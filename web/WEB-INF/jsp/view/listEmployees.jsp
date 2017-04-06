<%-- 
    Document   : listEmployees
    Created on : Apr 6, 2017, 11:08:47 AM
    Author     : ahussein
--%>
<%@page import="beans.Employee"%>
<%@ page session="false" import="java.util.Map" contentType="text/html" pageEncoding="UTF-8" %>
<%
    @SuppressWarnings("unchecked")
    Map<Integer, Employee> employeeList =
            (Map<Integer, Employee>)request.getAttribute("employeeList");
%>
<!DOCTYPE html>
<html>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>

<body>
 <h2>Employees List</h2>
  <a href="empservlet?action=create">Add new employee</a><br /><br />
        
        
         <%
            if(employeeList.size() == 0)
            {
                %><i>There are no employees in the system.</i><%
            }
            else
            {%>
            <table align="center" cellpadding = "10">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Age</th>
    <th>Salary</th>
    <th>Job title</th>
    <th>Department</th>
    <th>Email</th>
</tr>
<%
                for(int id : employeeList.keySet())
                {
                    String idString = Integer.toString(id);
                    Employee employee = employeeList.get(id);
                    String name=employee.getName();
                    String jobTitle=employee.getJobTitle();
                    int age=employee.getAge();
                    long salary=employee.getSalary();
                    String email=employee.getEmail();
                    String dep=employee.getDepartment();%>
                
<tr>
    <td><%= idString %></td>
    <td><%= name %></td>
    <td><%= age %></td>
    <td><%= salary %></td>
    <td><%= jobTitle %></td>
    <td><%= dep %></td>
    <td><%= email %></td>
  </tr>
<% }
}
%>
</body>
</html>
