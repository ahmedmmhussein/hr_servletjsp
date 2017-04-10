/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.Employee;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.Period;
import java.time.ZoneId;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ahussein
 */
public class DispatcherServlet extends HttpServlet {
     private volatile int EMPLOYEE_ID_SEQUENCE = 1;
    private Map<Integer, Employee> employeeList = new HashMap<Integer, Employee>();
    
  @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String action = request.getParameter("action");
        if(action == null)
            action = "list";
        switch(action)
        {
            case "create":
                this.showRegisterForm(request, response);
                break;
            case "list":
            default:
                this.listEmployees(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       createEmployee(request,response);
    }
    
    

    private void showRegisterForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/view/registrationForm.jsp")
               .forward(request, response);
    }

    private void listEmployees(HttpServletRequest request, HttpServletResponse response) {
         try {
             request.setAttribute("employeeList", employeeList);
             request.getRequestDispatcher("/WEB-INF/jsp/view/listEmployees.jsp")
                     .forward(request, response);
         } catch (ServletException |IOException ex) {
             ex.printStackTrace();
         }
    }

    private void createEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Employee employee=new Employee();
        employee.setName((String)request.getParameter("name"));
        employee.setJobTitle((String)request.getParameter("jobTitle"));
        employee.setEmail((String)request.getParameter("email"));
        String salary=(String)request.getParameter("salary");
        if(salary!=null){
        employee.setSalary(Long.valueOf(salary));}
        employee.setDepartment((String)request.getParameter("department"));
        int day=Integer.valueOf(request.getParameter("Birthday_Day"));
        int month=Integer.valueOf(request.getParameter("Birthday_Month"));
        int year=Integer.valueOf(request.getParameter("Birthday_Year"));
        LocalDate today = LocalDate.now();
        LocalDate birthday = LocalDate.of(year, month, day);
        Period p = Period.between(birthday, today);
        employee.setAge(p.getYears());
        employee.setDataofBirth(Date.from(birthday.atStartOfDay(ZoneId.systemDefault()).toInstant()));
        synchronized(this){
         employee.setId(EMPLOYEE_ID_SEQUENCE);
        employeeList.put(EMPLOYEE_ID_SEQUENCE, employee);
        EMPLOYEE_ID_SEQUENCE++;
        }
         response.sendRedirect("empservlet?action=list");
        
    }
}
