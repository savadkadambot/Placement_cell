<%-- 
    Document   : company_acpt
    Created on : 21 Feb, 2018, 12:40:04 PM
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
        <h1>COMPANY VERIFICATION</h1>
        <form action="apply_view2.jsp" method="POST">
       
         View application <select name="S1">
             <%
                        dbcon db=new dbcon();
                                PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select * from tbl_apply");
                          ResultSet rs=db.return_data(ps);
         while(rs.next())
            {%>
              <option><%=rs.getString(4)%></option>
            <% } %>
        </select>
        <input type="submit" value="view" name="bt"/>
          </form>
    </body>
</html>
