<%-- 
    Document   : student_view2
    Created on : 1 Mar, 2018, 10:43:22 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbcon.dbcon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <% 
            
            dbcon db=new dbcon();
            String a=request.getParameter("t1");
      PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select status from tbl_apply where Student_ID=?");
     
      ps.setString(1, a);
      ResultSet rs=db.return_data(ps);
         while(rs.next())
            {
              %>    <tr>
                 
              <td><%=rs.getString(0)%></td>
                </tr>
          <% } %>
    </body>
</html>
