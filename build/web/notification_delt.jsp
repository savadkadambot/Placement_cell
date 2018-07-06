<%-- 
    Document   : staff_ed_delt
    Created on : Feb 7, 2018, 8:54:29 PM
    Author     : Malu
--%>

<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="dbcon.dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form  method="POST">
            <table border="2">
                <tr>
                <th>Notification_ID</th>
                <th>Notification</th>
                <th>Date</th>
                <th>Status</th>
                <th>Delete</th>
            </tr>
                <tr>
                    <%
                        dbcon db=new dbcon();
                                PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select * from  tbl_notification");
                          ResultSet rs=db.return_data(ps);
         while(rs.next())
            {
              %>
              <td> <%=rs.getString(1)%> </td>
              <td> <%=rs.getString(2)%> </td>
              <td> <%=rs.getString(3)%> </td>
              <td> <%=rs.getString(4)%> </td>
              <td><a href="notification_delt2.jsp?id=<%=rs.getString(1)%>">Delete</a> </td>
              
                </tr>
                <% } %>
                
                
            </table>   
        </form>
    </body>
</html>
