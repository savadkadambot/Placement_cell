<%-- 
    Document   : company_verificn2
    Created on : 21 Feb, 2018, 3:00:24 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
    </head>
    <body>  
        <%
                String s=request.getParameter("id");
            dbcon db=new dbcon();
                    PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select * from tbl_vacancy where Vacancy_No=?");
                    ps.setString(1,s);
                    ResultSet rs=db.return_data(ps);
         if(rs.next())
            {
              %>
           
    <form action="job_apply.jsp" method="post" >
                  <table border="1">
               
                          <tr>
                              <td>Vacancy no</td>
                              <td><input type="text" value="<%=rs.getString(1)%>" name="t1"></td>
                          </tr>
                            <tr>
                              <td>Company Id</td>
                              <td><input type="text" value="<%=rs.getString(2)%>" name="t2"></td>
                          </tr>
                          <tr>
                              <td>Job name</td> 
                              <td><input type="text" value="<%=rs.getString(3)%>" name="t3"></td>
                          </tr>
                          <tr>
                              <td>Criteria</td>
                              <td><input type="text" value="<%=rs.getString(4)%>" name="t4"></td>
                          </tr>
                          <tr>
                              <td>Announcement date</td>
                              <td><input type="text" value="<%=rs.getString(5)%>" name="t5"></td>
                          </tr>
                          <tr>
                              <td>Last date</td>
                              <td><input type="text" value="<%=rs.getString(6)%>" name="t6"></td>
                          </tr>
                          <tr>
                              <td>No of vacancy</td>
                              <td><input type="text" value="<%=rs.getString(7)%>" name="t7"></td>
                          </tr>
                          <tr>
                              <td>Salary</td>
                              <td><input type="text" value="<%=rs.getString(8)%>" name="t8"></td>
                          </tr>
                             <tr>
                              <td>Status</td>
                              <td><input type="text" value="<%=rs.getString(9)%>" name="t9"></td>
                          </tr>
                          
                        
                          <tr><td> <input type="submit" value="Apply" name="bbb"></td></tr>
           </form>
                          <%}%>
</body>
</html>