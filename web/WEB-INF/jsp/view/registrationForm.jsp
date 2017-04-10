<%-- 
    Document   : registerationForm
    Created on : Apr 6, 2017, 10:29:48 AM
    Author     : ahussein
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/style.css">
        <title>Registration Page</title>
    </head>
    <body>
        <h2>Employee Registration</h2>
        <form action="empservlet" method="POST">

<table align="center" cellpadding = "10">

<!----- First Name ---------------------------------------------------------->
<tr>
<td>Name</td>
<td><input type="text" name="name" maxlength="30" required="true"/>
(max 30 characters a-z and A-Z)
</td>
</tr>

<!----- Date Of Birth -------------------------------------------------------->
<tr>
<td>Date Of Birth</td>

<td>
<select name="Birthday_Day" required="true">
<option value="">Day:</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>

<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>

<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>

<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>

<option value="31">31</option>
</select>

    <select  name="Birthday_Month" required="true">
<option value="">Month:</option>
<option value="01">Jan</option>
<option value="02">Feb</option>
<option value="03">Mar</option>
<option value="04">Apr</option>
<option value="05">May</option>
<option value="06">Jun</option>
<option value="07">Jul</option>
<option value="08">Aug</option>
<option value="09">Sep</option>
<option value="10">Oct</option>
<option value="11">Nov</option>
<option value="12">Dec</option>
</select>

<select name="Birthday_Year" required="true">

<option value="">Year:</option>
<option value="2012">2012</option>
<option value="2011">2011</option>
<option value="2010">2010</option>
<option value="2009">2009</option>
<option value="2008">2008</option>
<option value="2007">2007</option>
<option value="2006">2006</option>
<option value="2005">2005</option>
<option value="2004">2004</option>
<option value="2003">2003</option>
<option value="2002">2002</option>
<option value="2001">2001</option>
<option value="2000">2000</option>

<option value="1999">1999</option>
<option value="1998">1998</option>
<option value="1997">1997</option>
<option value="1996">1996</option>
<option value="1995">1995</option>
<option value="1994">1994</option>
<option value="1993">1993</option>
<option value="1992">1992</option>
<option value="1991">1991</option>
<option value="1990">1990</option>

<option value="1989">1989</option>
<option value="1988">1988</option>
<option value="1987">1987</option>
<option value="1986">1986</option>
<option value="1985">1985</option>
<option value="1984">1984</option>
<option value="1983">1983</option>
<option value="1982">1982</option>
<option value="1981">1981</option>
<option value="1980">1980</option>
</select>
</td>
</tr>

<!----- Salary ---------------------------------------------------------->
<tr>
<td>Salary</td>
<td>
    <input type="number" name="salary" maxlength="10" required="true"/>
</td>
</tr>

<!----- Job title ---------------------------------------------------------->
<tr>
<td>Job title</td>
<td><input type="text" name="jobTitle"  maxlength="100" required="true"/></td>
</tr>

<!----- Department ---------------------------------------------------------->
<tr>
<td>Department</td>
<td>
<select name="department" required="true" >

<option value=""></option>
<option value="Production">Production</option>
<option value="Research and Development">Research and Development</option>
<option value="Marketing">Marketing</option>
<option value="Human Resource Management">Human Resource Management</option>
<option value="Accounting and Finance">Accounting and Finance</option>

</select>
</td>
</tr>


<!----- Email ---------------------------------------------------------->
<tr>
<td>Email</td>
<td><input type="text" name="email"   maxlength="100" required="true"/></td>
</tr>



<!----- Submit and Reset ------------------------------------------------->
<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</td>
</tr>
</table>
</form>
         <a href="empservlet?action=list">View all employees</a><br /><br />
    </body>
</html>
