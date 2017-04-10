<%-- 
    Document   : listEmployees
    Created on : Apr 6, 2017, 11:08:47 AM
    Author     : ahussein
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <head>  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/style.css">
        <title>Employees Page</title>
    </head>

<body>
 <h2>Employees List</h2>
  <a href="empservlet?action=create">Add new employee</a><br /><br />
        
        
<c:choose>
<c:when test="${employeeList.size()==0}">
<i>There are no employees in the system.</i>
</c:when>
<c:otherwise>
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
   <c:forEach items="${employeeList}" var="employee" >
           <tr>
    <td><c:out value="${employee.value.id}"/></td>
    <td><c:out value="${employee.value.name}"/></td>
    <td><c:out value="${employee.value.age}"/></td>
    <td><c:out value="${employee.value.salary}"/></td>
    <td><c:out value="${employee.value.jobTitle}"/></td>
    <td><c:out value="${employee.value.department}"/></td>
    <td><c:out value="${employee.value.email}"/></td>
  </tr>
        </c:forEach>
            </table>
</c:otherwise>
</c:choose>
</body>
</html>
