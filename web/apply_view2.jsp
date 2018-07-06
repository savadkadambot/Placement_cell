<%-- 
    Document   : apply_view2.jsp
    Created on : 28 Feb, 2018, 11:55:21 AM
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
        <form>
             <table border="2">
            <tr>
            <th>Company id</th>
            <th>Application No</th>
             <th>Student id</th>
              <th>Job post</th>
               <th>Vacancy no</th>
                <th>Application date</th>
                 <th>Status</th>
            </tr>
              <tr>
                    <%
                        dbcon db=new dbcon();
                                PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select * from tbl_apply");
                          ResultSet rs=db.return_data(ps);
         while(rs.next())
            {
              %>    <tr>
                 
              <td> <%=rs.getString(4)%> </td>
              <td> <%=rs.getString(2)%> </td>
              <td> <%=rs.getString(3)%> </td>
              <td> <%=rs.getString(1)%> </td>
               <td> <%=rs.getString(5)%> </td>
              <td> <%=rs.getString(6)%> </td>
             
              <td><a href="apply_view3.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(7)%></a></td>
              
                </tr>
                <% } %>
                
                
            </table>   
        </form>
                  
       
        
    </body>
</html>
