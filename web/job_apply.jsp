<%-- 
    Document   : job_apply
    Created on : 27 Feb, 2018, 1:02:05 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbcon.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <form action="job_apply2.jsp" method="POST" enctype="multipart/form-data">
            <%
                String s11=request.getParameter("t3");
                String s21=request.getParameter("t2");
                String s31=request.getParameter("t1");
            %>
            <table border="0">
               
                <tbody>
                     
                    
                    <tr>
                        <td>Job post</td>
                        <td><input type="text" name="t1" value="<%=s11%>" /></td>
                    </tr>
                    
                
       <% 

          int p;int q=0;
                dbcon db2=new dbcon();
                PreparedStatement ps1=(PreparedStatement)db2.cn.prepareStatement("select * from param");
                ResultSet rs=db2.return_data(ps1);
                if(rs.next())
                {
                p=rs.getInt(6);
                q=p+1;
                }
                %>
                    <tr>
                        <td>Application no.</td>
                        <td><input type="text" name="t1" value="<%=q%>" /></td>
                    </tr>
                      <tr>
                        <td>job_post</td>
                        <td><input type="text" name="t7" value="" /></td>
                    </tr>
                    <tr>
                        <td>Student id</td>
                        <td><input type="text" name="t2" value="" /></td>
                    </tr>
                         <tr>
                        <td>Resume</td>
                        <td><input type="file" name="t3" /></td>
                    </tr>
          
                       <tr>
                        <td>Company id</td>
                        <td><input type="text" name="t4" value="<%=s21%>" /></td>
                    </tr>
                    <tr>
                        <td>Vacancy no.</td>
                        <td><input type="text" name="t5" value="<%=s31%>" /></td>
                    </tr>
                   
                    <tr>
                        <td>Application date</td>
                        <td><input type="text" name="t6" value="<%= (new java.util.Date()).toLocaleString()%>   " /></td>

                    </tr>
                  
                    <tr>
                        <td><input type="submit" value="Submit" name="bt" /></td>
                    
                    </tr>
                    
                </tbody>
            </table>
            
        </form>
      
    </body>
</html>
